# Jenkins-Pipeline-Python

A simple Jenkins pipeline that builds, tests and "delivers" a python file.

## How to run

1. Use the `Dockerfile` to buid a Jenkins image that it able to run Python code.
2. Run the Jenkins container and perform initial setup.
3. Create a new pipeline, use the Pipleline script from SCM and provide the URL of this repository. THe Jenkinsfile will be automatically loaded.
4. Build the pipeline. 
 