DevFest Algiers 2021 Certificates Sending Script
==============================

A `Python` script that use the features provided by `Sendgrid` to send a dynamic email (use a dynamic html template) with attachment.
This project was used to send the certificate of participations for the DevFest Algiers 2021 Participants.

Objective
---------
The problem that this script solve is that saying we have a list of participants (contains name,email and team_name) and a list of files named with the participant name - The file name may not match fully the participant mail- and we need to send each participant his certificate using an html template. 

Getting Started
------------
To Get Set Up you need first to configure your environment following these steps:

Before you begin you need to install python and configure A virtual environment if you are in **Windows** you can just use `Conda` 
* Python [Ubuntu]
  ```sh
  $ sudo apt-get install python3 python3-pip
  ```
* VirtualEnv 
  ```sh
  $ pip install virtualenv
  $ source env/bin/activate
  $ pip install -r requirements
  ```

To Use `SendGrid` one need to create an account and get an API Key, you can check [this](https://docs.sendgrid.com/for-developers/sending-email/quickstart-python) for more details 

You need then to have a `participants.csv` file that contains the needed information and the folder `Participants` that contains all the certificates.

Project Organization
------------

    ├── README.md          <- The top-level README for developers using this project.
    │
    ├── script.py             <- The main python script that run the project
    │
    ├── utils.py          <- Utility functions 
    │
    │
    ├── .env            <- Environment variables file
    │
    ├── requirements.txt   <- The requirements file for reproducing the analysis environment
    │
    └── .env.example         <-Environment variables file example
    
--------

