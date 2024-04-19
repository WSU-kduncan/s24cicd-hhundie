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
  
  - successful workflow notification
  -  ![image](https://github.com/WSU-kduncan/s24cicd-hhundie/assets/118832089/ae9040f5-c1a4-4220-9212-df0eaec1ef8d)




  - I use my container image in the place of image in yml file,
    - Make sure the "index.html" dire
    - git filenam.yml -> copy/pest the format of GitHub Actions events and Git metadata (change the name of the image,
    - ![image](https://github.com/WSU-kduncan/s24cicd-hhundie/assets/118832089/3e620164-a282-4c02-8dce-fd0aef8d9ecf)
    -  ![image](https://github.com/WSU-kduncan/s24cicd-hhundie/assets/118832089/fcf37dc6-9325-47c7-a3e1-80af142268fc)

    - git add filename.yml
    - then push this file
    - if successful we should see a change in our workflow 

- what does it do and when
  - it  uses: docker/metadata-action@v5 
  - the workflow should allow us to login to both github and dockerhub
  - use username and password
  - all this should work when our
  - github.event_name != 'pull_request'
- Link to Docker Hub repository (as additional proof)
    - https://hub.docker.com/repository/docker/htollossa/ceg3120/general
## Part 2 - Deployment

### Tasks

For this piece, use an EC2 instance.

- `pull` and `run` a container from your DockerHub image
    1. start the docker service "sudo systemctl start docker.service"
    2. check what the status of docker.service is "sudo systemctl status docker.service"
    3. to test run "sudo docker run hello-world"
    4.  to check if we have 'hello-world" container "sudo docker ps -a"
    5.  to pull the container image i have in my dockerhub(htollossa/ceg3120" -> "sudo docker pull htollossa/ceg3120"
    6.  massage conferming the pull complition ![image](https://github.com/WSU-kduncan/s24cicd-hhundie/assets/118832089/16346956-8406-479f-b07e-a35ed144d43d)
    7.  to run the container "sudo docker run htollossa/ceg3120"
    8.  if we do "sodo docker ps -a" -> we will get
       - ![image](https://github.com/WSU-kduncan/s24cicd-hhundie/assets/118832089/e561994b-036a-4b08-8dbf-0eeb7fbc3bd7)


  - confirm you can access your service running in the container from a browser
- Create a script to pull a new image from DockerHub and restart the container
  - put a copy of the script in a folder named `deployment` in your repo
- Set a listener / hook to receive messages using [adnanh's `webhook`](https://github.com/adnanh/webhook)
- Create a hook - when a message is received run the container restart script
  - put a copy of the hook configuration in a folder named `deployment` in your repo
- Configure either GitHub or DockerHub to send a message to the listener / hook

### Documentation

Update `README-CD.md` in main folder of your repo to include:

- How to install Docker to your instance
    -  Install docker on the instance
    1. go to home
    2. ssh to the instance we want to use ( I used my "proxy" instance)
    3. once in proxy instance -> sudo apt install docker
- Container restart script
  - Justification & description of what it does
      - my docker should stop a container and restart it
      - if we manually want to start and stop a container(name "webcont") we have to use the steps i used in my instance are
          1. sudo docker stop webcot
          2. sudo docker remove /webcont
          3. then if we want to test the contained image we can do "sudo docker run -it -p 80:80 --name webcont --restart always htollossa/ceg3120:latest" and test the ip of the instance with the port number in our browser (wehen we do the this command in our instance and test the IP) we can see the activity in the instance terminal 
          4. or use the following script to automate the above process
          5. once we done testing it use " ctrl +c" to exit it.
  - Where it should be on the instance (if someone were to use your setup)
  - ADD your script to your repository
  -  ![image](https://github.com/WSU-kduncan/s24cicd-hhundie/assets/118832089/0116435d-6747-404c-857f-71bed3905a9e)

- Setting up a `webhook` listener on the instance
  - How to install [adnanh's `webhook`](https://github.com/adnanh/webhook) to the instance
- `webhook` task definition file
  - Description of what it does
  - Where it should be on the instance (if someone were to use your setup)
  - ADD your webhook definition file to your repository
- How to start the `webhook`
- How to modify/ create a webhook service file such that your webhook listener is listening as soon as the system is booted
    - include commands to reload the service respective to files changed (webhook service file versus hook definition file)
    - ADD your webhook service file to your repository
- How to configure GitHub OR DockerHub to message the listener 
- Provide proof that the CI & CD workflow work.  This means:
  1. starting with a `commit` that is a change, `tag`ing the `commit`, `push`ing the `tag`
  2. Showing your GitHub workflow returning a message of success.
  3. Showing DockerHub has freshly pushed images.
  4. Showing the instance that you are deploying to has webhook logs indicating the payload was recieved and the container has updated.  
  
  Proof can be provided by **either** demonstrating to me in person OR by creating a *video* of the process.  If you go the video route and your file is too large for GitHub, submit it to the "Project 5 - Proof of Flow" Dropbox on Pilot

