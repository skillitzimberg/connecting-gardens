# Growing Gardens Give and Take Project

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

If you don't already have these tools, download and install them before you start working with the .

- Modern web browser (may we suggest [Chrome?](https://www.google.com/chrome/browser))
- Command Line Interface (CLI)
    - Mac OSX: Terminal is already installed, or try [iTerm](https://www.iterm2.com/)
    - Windows: Command Prompt (DOS) or [Git Bash](https://gitforwindows.org/)
- [Node.js](https://nodejs.org/download/)
- [Yarn Package Manager](https://yarnpkg.com/lang/en/docs/install/)
- A text editor or coding tool of your choice. [VS Code](https://code.visualstudio.com/) is available for free for Mac and Windows.
- Must install NPM (homebrew works well for this on a MAC)
- Your favorite IDE

### Installing

Once you have all prerequisites installed, open your CLI and navigate to the project folder.

New to command line?_ Navigate to the project folder using `cd` (which stands for change directory). If you know the 
full path of the directory you can type it in, or you can click and drag the folder over to your CLI window and it will automatically fill in the path to that folder.

```
cd /Users/mycomp/Documents/kickstart-js
```

Press return, and you'll be taken to that folder.

You will need to run:
```
npm install express --save
npm install mysql
```
Install [nodemon](https://github.com/remy/nodemon) globally. (Debug hint: run this even if you think you have nodemon.)

```
npm i nodemon -g
```

Install server and client dependencies. Running the `yarn` command will install all of the dependancies listed in package.json. Since this project contains both server and client side apps, this needs to be run both in the root folder and in the client folder.

```
yarn
cd client
yarn
cd ..
```

For local development, start the server and client at the same time (from the root of the project)

```
yarn dev
```

Navigate to http://localhost:3000/ and try adding an item to your To Do list

To stop serving the page to your browser, press Control+C in the command line.

##Built With
* NPM
* Yarn
* Node.js
* HTML
* CSS
* MySQL
* Express
* Git
* Nodemon
* InteliJ

##Deployment
To deploy, you will use AWS Elastic Beanstalk.

##Versioning
POC, no version as of 1/12/19

##Authors
* **Jessica Chen:**
* **Sadiyah Ali:**
* **Jenna Phillips:**
* **Jessica Willis:**
* **Belen Bustamante**
* **Scott Bergler**

## Acknowledgments
* **Katie Boyd:** kickstarter-js; Twitter: @katrilllion;

Thank you to the Growing Gardens team for inspiring us to help our neighbors!