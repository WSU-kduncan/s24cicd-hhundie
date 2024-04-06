# Project 5
## Part 1 - Semantic Versioning
- Right now, you likely tag the image with latest. This means versions are never kept. The solution we will use is to use git tagging. A GitHub Action can use the metadata to generate a set of tags for an image.

### Tasks
- Practice creating tag for your commit using semantic versioning
- Amend your GitHub Action workflow to:
- run when a tag is pushed
- use the docker/metadata-action to generate a set of tags from your repository
- push images to DockerHub with an image tags based on your git tag version AND latest
### Documentation
- Create README-CD.md in main folder of your repo that details the following:

- CD Project Overview(what are you doing, why, what tools)
      - Continuous delivery (CD) is the automated delivery of completed code to environments like testing and development. We use tags to track the version of the code we are trying to deploy.
- How to generate a tag in git / GitHub
- Behavior of GitHub workflow
- what does it do and when
- Link to Docker Hub repository (as additional proof)
