# webserver-test

This repository contains a basic HTML page that can be built in a Docker environment and run inside a Docker or Openshift container.

## Pre-requisite

Local docker environment.
Up and running Jenkins instance.
Up and running Openshift cluster.

### Folder Structure
1) source folder - Contains the required HTML pages and supporting files.
2) cicd - Contains:
        a) The buildpipeline to run docker build and to upload the docker image to git repository
        b) The deploypipeline to deploy the respective version of docker image into openshift.
3) configuration - contains the deployment yaml for openshift deployment.
4)Dockerfile - contains required steps to build docker image.

The repo consist of 3 branches:
 a)Main: the default branch
 b)dockerhub: containing scripts based on build and deploy into docker.
 c)openshift: containing scripts based on build and deploy into openshift cluster
 
## Deployment/Project execution steps
1)Clone the required branch(dockerhub\openshift) of this repo to a local workspace 
2)To build the image you can chose any of below options:
    1) You can directly run docker build using the Dockerfile in the root folder of this repo
    2) Create a job in jenkins and configure the respective branch of this repo and buildpipeline present under the cicd folder.
       Run this pipeline in a docker based workspace. The image will be built and also uploaded into dockerhub.
       Currently the values are hardcoded, based on your need the value of githubURL\dockerhubRepo can be changed.
3)To deploy the image you can choose any of below options:
    1) You can use docker run command and launch the image in local docker environment
    2) Create a job in jenkins and configure the respective branch and the deploypipeline from cicd folder.
       Run this pipeline and image will be pushed to your openshift cluster.
       Currently the values are hardcoded, based on your need the value of openshift cluster and image url can be changed.
4)Once deployment is completed you will be able to access the webpage by accessing URL in below format:
 ```shell
http://<localhost\clusterurl>:<port>\hellodevops.html
```

## Features

What's all the bells and whistles this project can perform?
* What's the main functionality
* You can also do another thing
* If you get really randy, you can even do this

## Configuration

Here you should write what are all of the configurations a user can enter when
using the project.


## Contributing

When you publish something open source, one of the greatest motivations is that
anyone can just jump in and start contributing to your project.

These paragraphs are meant to welcome those kind souls to feel that they are
needed. You should state something like:

"If you'd like to contribute, please fork the repository and use a feature
branch. Pull requests are warmly welcome."

If there's anything else the developer needs to know (e.g. the code style
guide), you should link it here. If there's a lot of things to take into
consideration, it is common to separate this section to its own file called
`CONTRIBUTING.md` (or similar). If so, you should say that it exists here.

## Links

Even though this information can be found inside the project on machine-readable
format like in a .json file, it's good to include a summary of most useful
links to humans using your project. You can include links like:

- Project homepage: https://your.github.com/awesome-project/
- Repository: https://github.com/your/awesome-project/
- Issue tracker: https://github.com/your/awesome-project/issues
  - In case of sensitive bugs like security vulnerabilities, please contact
    my@email.com directly instead of using issue tracker. We value your effort
    to improve the security and privacy of this project!
- Related projects:
  - Your other project: https://github.com/your/other-project/
  - Someone else's project: https://github.com/someones/awesome-project/


## Licensing

One really important part: Give your project a proper license. Here you should
state what the license is and how to find the text version of the license.
Something like:

"The code in this project is licensed under MIT license."
