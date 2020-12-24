# speedtest
Measures internet speed every minute, and pushes daily results to Google Cloud Storage.

## Set up Google Cloud Storage

## Download Speedtest by Ookla
Follow instructions to install the Ookla Speedtest CLI [here](https://www.speedtest.net/apps/cli) for free.

## Create Crontab file(Mac)
### Set permissions on cron file
Follow instructions [here]() in order to set up the correct permissions for the cronjob to have enough permissions to run the bash scripts.

### Editing when the cronjob will run
In [this](https://crontab.guru/#0_9-21_*_*_*) you will find instructions on how to make changes to the crontab file in order to run the job at specific times of the day. By default, the internet speed is measured every minute between 9 AM and 21 PM local time.
