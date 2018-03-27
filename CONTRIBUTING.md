# Contributing to AEC-APIs

> This API list is a tool to help the
community build applications using JSON APIs quickly and easily. 

For API/ Product additions, pull requests that meet the following criteria will be accepted. If you would like to help improve the quality of the existing list, please see the issues section for where to start. 

## Formatting

Current API entry format:

| API | Description | Auth | HTTPS | CORS | Link |
| --- | --- | --- | --- | --- | --- |
| API Title | Description of API | Does this API require authentication? * | Does the API support HTTPS? | Does the API support [CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS)? * | Link to API webpage |

Example entry:

```
| Forge - CoGS | Forge computational graph service | No | Yes | Yes | [Go!](https://developer.autodesk.com/en/docs/cogs/v1/overview) |
```

\* Currently, the only accepted inputs for the `Auth` field are as follows:

* `OAuth` - _the API supports OAuth_
* `apiKey` - _the API uses a private key string/token for authentication - try and use the correct parameter_
* `X-Mashape-Key` - _the name of the header which may need to be sent_
* `No` - _the API requires no authentication to run_

\* Currently, the only accepted inputs for the `CORS` field are as follows:

* `Yes` - _the API supports CORS_
* `No` - _the API does not support CORS_
* `Unknown` - _it is unknown if the API supports CORS_

Please continue to follow the alphabetical ordering that is in place per section. Each table column should be padded with one space on either side.

This project offers a [JSON version](json/) of the list of services. These files are automatically updated as part of the Continuous Integration process, so there is no need to update them as part of the contribution. 

## Pull Request

After you've created a branch on your fork with your changes, it's time to [make a pull request][pr-link]!

Once you’ve submitted a pull request, the collaborators can review your proposed changes and decide whether or not to incorporate (pull in) your changes.

### Pull Request Pro Tips

* [Fork][fork-link] the repository and [clone][clone-link] it locally.
Connect your local repository to the original `upstream` repository by adding it as a [remote][remote-link].
Pull in changes from `upstream` often so that you stay up to date and so when you submit your pull request,
merge conflicts will be less likely. See more detailed instructions [here][syncing-link].
* Create a [branch][branch-link] for your edits.
* Contribute in the style of the project as outlined above. This makes it easier for the collaborators to merge
and for others to understand and maintain in the future.

### Open Pull Requests

Once you’ve opened a pull request, a discussion will start around your proposed changes.

Other contributors and users may chime in, but ultimately the decision is made by the collaborators.

During the discussion, you may be asked to make some changes to your pull request.

If so, add more commits to your branch and push them – they will automatically go into the existing pull request!

Opening a pull request will trigger a Travis CI build to check the validity of all links in the project. After the build completes, **please ensure that the build has passed**. If the build did not pass, please view the Travis CI log and correct any errors that were found in your contribution. 

Thanks for being a part of this project, and we look forward to hearing from you soon! 

[branch-link]: <http://guides.github.com/introduction/flow/>
[clone-link]: <https://help.github.com/articles/cloning-a-repository/>
[fork-link]: <http://guides.github.com/activities/forking/>
[oauth-link]: <https://en.wikipedia.org/wiki/OAuth>
[pr-link]: <https://help.github.com/articles/creating-a-pull-request/>
[remote-link]: <https://help.github.com/articles/configuring-a-remote-for-a-fork/>
[syncing-link]: <https://help.github.com/articles/syncing-a-fork>

