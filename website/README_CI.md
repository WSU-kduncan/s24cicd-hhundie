# Part 1 - Dockerize it
## Tasks
- Create new GitHub repo (link to create located in Pilot in Content -> CI/CD Projects)
    - to create new repo
      1. from local host  get the public key -> ssh-keygen -t ed25519 -C "hhundie@ymail.com"
      2. cd ssh-> cat id_ed25519.pub
      3. copy the public key
      4. go to the GitHub repo ->setting -> ssh->add ssh -> pest the key there
      5. from github -> code-> copy the ssh key
      6. go back to the local host/terminal "git clone + the ssh key we got from github code"
- To your repo in a folder named website, add the contents of your website
    - this can be a site you created in another class, pet project of yours, or the site in site.tar.gz
    - if using site.tar.gz put your own flair / text in index.html (#makegradingfunagain)
          - to unzip this file
              1. first be in the directory that is connected to GitHub (s24cicd-hhundie)
              2.  tar -xvzf site.tar.gz          
- Install Docker
    - You can install Docker in WSL2 or in an EC2 instance.
- Create a container image that will run a webserver and contains your website
    - you can use apache2 or nginx as the webserver
- Create a Dockerfile and use it to build an image with your website files and dependencies
    - Add site content & Dockerfile to your repo

## Documentation
### Create README-CI.md in main folder of your repo that details the following:

- CI Project Overview
  (what are you doing, why, what tools)
    - This project allows us to create containers.
    - We need a container to help us with resource isolation.
    - To create a container I will be using "Docker".
- Run Project Locally
    - how to install docker + dependencies (WSL2, for example)
        1. To our PC install "docker Desktop"
        2. In terminal "sudo apt install docker
        3. to test if our docker is working run "docker run hello-world". If it output what is a hello-world container, then we good to go.
    - how to build an image from the Dockerfile
        1. vim Dockerfile
        2. inside the Dockerfile
        3. configer 'FORM', 'WOORKDIR', 'COPY', 'EXPOSE'(THE PORT)
            - ![image](https://github.com/WSU-kduncan/s24cicd-hhundie/assets/118832089/8f0763e4-61c9-4944-a8c1-5637e9ab5b1d)



    - how to run the container
        - to run a container
              1. create a container name "docker build -t hanawebsite ."
          ![image](https://github.com/WSU-kduncan/s24cicd-hhundie/assets/118832089/a2010f42-7693-4091-a918-3866764f2ada)
        2. start the image "docker start mywebsite"
        3. attach the image "docker attach mywebsite"
        4. run the container " docker run -it the container name"
          
  
    - how to view the project running in the container (open a browser...go to IP and port...)
        - "docker run -it --rm -d -p 8080:80 --name web hanawebsitee"
        - ![image](https://github.com/WSU-kduncan/s24cicd-hhundie/assets/118832089/10020eee-45c2-456c-9a1e-42236814c517)
        - to see the running container "docker ps -a"
        -  ![image](https://github.com/WSU-kduncan/s24cicd-hhundie/assets/118832089/39ab01ef-328c-4a59-9bd5-19e22d1cecc1)


        -  i checked for the website on the browser using an IP address from mylocalhost IP and adding 5000,
        -  ![image](https://github.com/WSU-kduncan/s24cicd-hhundie/assets/118832089/390d0067-5cb7-403d-9079-abe07702b793)
     
    # Part 2
      ## Documentation


    - Process to create a public repo in DockerHub
          - login to DuckerHub
          - add a repo name and make it public
          - ![image](https://github.com/WSU-kduncan/s24cicd-hhundie/assets/118832089/c769c3ab-5c9d-4028-8c16-9328037ec391)


    - How to authenticate with DockerHub via CLI using Dockerhub credentials
          - goto dockerhub -> login icon -> my Profile

          - edit profile -> security ->. new Access token (ceg3120)
          - once generated, copy the tocken( this tocken will only been see once)

    - what credentials would you recommend providing?
          - the permission I recommend that anyone with the token can read & write, but I don't want them to delete
          - once dockerhub repo created, go back to the terminal with docker running ->docker login -u htollossa -> when it ask for a password pest the token(the password will be invisible)
      
    - How to push container image to Dockerhub (without GitHub Actions)
          
        - docker push htollossa/ceg3120:latest
    - Link to your DockerHub repository
        - https://hub.docker.com/repository/docker/htollossa/ceg3120/general
        - ![image](https://github.com/WSU-kduncan/s24cicd-hhundie/assets/118832089/5c4551e7-739f-48c6-8273-70a1212ed28f)

      ### Configuring GitHub Secrets

    - How to set a secret
          -
    - What secret(s) are set for this project
Note: do not copy paste your secrets into your documentation
Behavior of GitHub workflow

    - what does it do and when
what variables in workflow are custom to your project
think may need to be changed if someone else is going to use it or you reuse it

