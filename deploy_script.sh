#! /bin/bash

# kill the old container process - stopped & then removed
# since my image containcer is trying to run websit "index.html" on nginx
# i named my cotainer "webcont"
docker stop webcont
docker remove webcont
# pull fresh image
docker pull htollossa/ceg3120:latest
# run new container by name, with restart automagic
# my website is running on nginx which as a default port of '80'
docker run -d -p 80:80 --name webcont --restart always htollossa/ceg3120:latest
