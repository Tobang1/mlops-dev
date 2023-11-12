# mlops-dev
machine learning developers

We have switched from using java to react in the mlops department 

to run the code locally make sure you have node and npm installed on your pc
 
node version `16.15` and above 
npm  version `8.11.0` and above 


  cd mlops-frontend 
  run `npm start`

-Install npm and npm
- To build an image
docker build -t my-image-name . (example: docker build -t react-image .)

- To Run the image after build
docker run -p local-host-port:docker-container-port image-name (docker run -p 3000:3000 react-image)


then wait for the node server to spin up and you can check it on tour local network in browser

- Make sure you are in your same directory where the script file is before running the chmod command

- change the permission of your script.sh using ($chmod +x script.sh)

- run the script to create your container ($./script.sh)

- This same script help to push to dockerhub.


<!-- To address all issues (including breaking changes), run:
  npm audit fix --force

Run `npm audit` for details.

Success! Created my-react-app at /home/joe/mlops/mlops-dev/my-react-app
Inside that directory, you can run several commands:

  npm start
    Starts the development server.

  npm run build
    Bundles the app into static files for production.

  npm test
    Starts the test runner.

  npm run eject
    Removes this tool and copies build dependencies, configuration files
    and scripts into the app directory. If you do this, you can’t go back!

We suggest that you begin by typing: -->




