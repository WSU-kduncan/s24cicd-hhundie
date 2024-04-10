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
  - first go back to the folder with our code.
  - tag it with the tag specification v(major.minor.patch) :-**hhundie@LAPTOP-6736F5I5:~/s24cicd-hhundie**$ git tag -a v1.1.0 -m "version 1.1 created"
  - to check for the tag :-** git tag**
  - to push it to our github repo:- **git push origin v1.1.0 **
  - ![image](https://github.com/WSU-kduncan/s24cicd-hhundie/assets/118832089/f3c8d797-d971-4065-ad4c-90b501f0bba8)

- Behavior of GitHub workflow
  - the workflows should be able to use the yml file to automate our versioning/ tagging system
  - ![image](https://github.com/WSU-kduncan/s24cicd-hhundie/assets/118832089/26e0cbec-23d6-4d77-8d63-0da758dbc12c)
  - I use my container image in the place of image in yml file, but i keep getting error
    - git filenam.yml -> copy/pest the format of GitHub Actions events and Git metadata (change the name of the image,
    - git add filename.yml
    - then push this file
    - if successful we should see a change in our workflow --(it didnt work for me)
    - ![image](https://github.com/WSU-kduncan/s24cicd-hhundie/assets/118832089/913ed1eb-a2c5-4813-b8a9-ae24a306de83)
    - ![image](https://github.com/WSU-kduncan/s24cicd-hhundie/assets/118832089/237bca3a-7af2-4f4b-ad1f-253f6883c081)



- what does it do and when
  - it  uses: docker/metadata-action@v5 
  - the workflow should allow us to login to both github and dockerhub
  - use username and password
  - all this should work when our
  - github.event_name != 'pull_request'
- Link to Docker Hub repository (as additional proof)
    - https://hub.docker.com/repository/docker/htollossa/ceg3120/general

