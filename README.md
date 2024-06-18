[![Workflow Testing Stage](https://github.com/rashkov7/softuini_exec_11/actions/workflows/build_test.yml/badge.svg)](https://github.com/rashkov7/softuini_exec_11/actions/workflows/build_test.yml)

# Deploy web services into Render.com

## Steps:

### - Generate an API Token:
##### Account settings -> API Keys  ->  Create API Key

### - Add a new Web Service:
###### Connect your GitHub account to the service - DONE !
###### Connect your GitHub repository holding the application - DONE !

### - Add Render Service ID as a GitHub Secret / API Token
###### Settings menu of your web service in Render.com -> Deploy Hook;
###### Copy the value that matches the pattern 
https://api.render.com/deploy/*******************?key=n2_GxNRrYbw -> ***************
###### Go to your GitHub repository -> "Settings -> "Secrets and variables" -> "Actions" -> "New repository secret"
######  -- || -- The API token you generated on Render.com as well

### - Create and define the CD workflow:
###### Set the job to be dependent of the test job 
###### https://github.com/marketplace/actions/render-deploy-action -> Render Deploy Action
###### Use the Render service ID and API key, which are stored as secrets in the repository.

### - Add some improvements: 
###### Create Status Bar: GitHub Repository -> Actions -> Workflow -> ... on the right side -> create status badge
###### add if statement to deploy if the request is from the main branch 
###### if: github.ref == 'refs/heads/main'