## Configuration
You can find the configuration in the .circleci/config.yml file.

## Steps of the pipeline
* Store Environment variables related in the dashboard.
* install node (version 14.21.1).
* Setup/Install AWS-cli and EB-cli.
* install backend dependencies.
* build backend.
* deploy backend using Eb cli into Elastic Beanstalk environment.
* install frontend dependencies.
* build frontend.
* deploy frontend using AWS cli to the S3 bucket.