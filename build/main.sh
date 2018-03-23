#!/bin/bash

FORMAT_FILE=README.md
echo "running format validation..."
./build/validate_format.py $FORMAT_FILE
if [[ $? != 0 ]]; then
    echo "format validation failed!"
    exit 1
fi
echo "format validation passed!"
./build/build.sh
if [[ $? != 0 ]]; then
    echo "JSON build failed!"
else
    echo "JSON build success!"
fi
if [ "$TRAVIS_BRANCH" == "master" ]
then
    echo "Master build - deploying JSON"
    ./deploy.sh
fi
if [ "$TRAVIS_PULL_REQUEST" == "false" ]; then
    echo "running on $TRAVIS_BRANCH branch - skipping Pull Request logic"
    exit 0
fi
echo "running on Pull Request #$TRAVIS_PULL_REQUEST"
DIFF_URL="https://patch-diff.githubusercontent.com/raw/bimlauncher/AEC-APIs/pull/$TRAVIS_PULL_REQUEST.diff"
curl $DIFF_URL > diff.txt
echo "------- BEGIN DIFF -------"
cat diff.txt
echo "-------- END DIFF --------"
cat diff.txt | egrep "\+" > additions.txt
echo "------ BEGIN ADDITIONS -----"
cat additions.txt
echo "------- END ADDITIONS ------"
LINK_FILE=additions.txt

echo "checking if /json was changed..."
if egrep "\+{3}\s.\/json\/" diff.txt > json.txt; then
    echo "JSON files are auto-generated! Please do not update these files:"
    cat json.txt
    exit 1
else
    echo "/json check passed!"
    rm json.txt
fi

echo "running link validation..."
./build/validate_links.py $LINK_FILE
if [[ $? != 0 ]]; then
    echo "link validation failed!"
    exit 1
else
    echo "link validation passed!"
fi
