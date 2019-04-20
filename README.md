# UI Automation Docker

##### Table of Contents

<!-- toc -->

- [Overview](#overview)
- [Usage](#usage)
- [Notes](#notes)
- [Contact](#contact)

<!-- tocstop -->

### Overview

This Project has docker build script and instruction to Test UI Automation using Puppeteer on CI/CD pipeline (Jenkins Slave) or standalone environment with Docker Runtime.

### Usage

- Pull the docker image locally

  > docker pull muthukumarse/puppeteer-jenkins-jnlp-slave:1.0

- Run inside Docker (bash) - Test Manually
  - To bash into Docker
    > docker run -it -v \${PWD}/ui-automation:/app muthukumarse/puppeteer-jenkins-jnlp-slave:1.0 bash
  - To run full Test
    > sh /puppeteer/runTest.sh
  - To install only dependencies and ready for custom Test
    > sh /puppeteer/prepare.sh
    - Able to run any test commands from `ui-automation` project of your
    - Example - yarn run test:chrome

### Notes

- Docker build and pushed with below runtime
  - Puppeteer - 1.13.0
  - Puppeteer Firefox - 0.5.0

### Contact

- Muthukumar, Selvarasu <Muthukumar.se@gmail.com>
