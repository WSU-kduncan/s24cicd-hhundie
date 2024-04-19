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
  - tag it with the tag specification v(major.minor.patch) :-**hhundie@LAPTOP-6736F5I5:~/s24cicd-hhundie**$ git tag -a v1.2.0 -m "version 1.1 created"
  - to check for the tag :-** git tag**
  - to push it to our github repo:- **git push origin v1.2.0 **
  -  ![image](https://github.com/WSU-kduncan/s24cicd-hhundie/assets/118832089/2ba28b81-1f1c-4a7b-9602-6ae3aeb42436)



- Behavior of GitHub workflow
  - the workflows should be able to use the yml file to automate our versioning/ tagging system
  -  ![image](https://github.com/WSU-kduncan/s24cicd-hhundie/assets/118832089/3e620164-a282-4c02-8dce-fd0aef8d9ecf)
  -  ![image](https://github.com/WSU-kduncan/s24cicd-hhundie/assets/118832089/fcf37dc6-9325-47c7-a3e1-80af142268fc)

  - successful workflow notification
  -  ![image](https://github.com/WSU-kduncan/s24cicd-hhundie/assets/118832089/ae9040f5-c1a4-4220-9212-df0eaec1ef8d)




  - I use my container image in the place of image in yml file,
    - Make sure the "index.html" dire
    - git filenam.yml -> copy/pest the format of GitHub Actions events and Git metadata (change the name of the image,
    - git add filename.yml
    - then push this file
    - if successful we should see a change in our workflow --



- what does it do and when
  - it  uses: docker/metadata-action@v5 
  - the workflow should allow us to login to both github and dockerhub
  - use username and password
  - all this should work when our
  - github.event_name != 'pull_request'
- Link to Docker Hub repository (as additional proof)
    - https://hub.docker.com/repository/docker/htollossa/ceg3120/general

