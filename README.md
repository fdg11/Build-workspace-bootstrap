# Build-workspace-bootstrap

Automate the deployment of the working environment under the bootstrap. Includes:
* Docker file with the ability to assemble the image under the working environment
* Build scripts

## Getting Started

**_Requires a docker-ce, git!_**

**_Scripts run only from root!_**

* `# git clone https://github.com/fdg11/Build-workspace-bootstrap.git`
* `# cd Build-workspace-bootstrap`
* `# ./build-image param1 param2`
* `# ./start-cont`

**param1** - the name of the image docker 
**param2** - container name docker

Example:

`# ./build-image dev container`

#### The container contains:
Git, Curl, Nginx, Nodejs, Gulp, Bootstrap template
