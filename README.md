# DockerTF
Docker File containing the Tensorflow image that is used on all the tutorials of the channel


## Installation Instructions

1) Open the terminal

2) Pull the repo and install the docker using the following command at the root of the repo

`docker build -t tf-sandbox:latest .`

3) Once the image is build start the container with

`docker run -td --name sandbox --mount type=bind,source="$(pwd)\channel-tutorials",target=/app tf-sandbox:latest`

4) enter the interactive shell with

`docker exec -it sandbox bash`

You now have shell access and can enter the python shell to follow the tutorials.