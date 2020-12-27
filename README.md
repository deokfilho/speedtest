# speedtest
Measures internet speed every minute, and pushes daily results to Google Cloud Storage.

# How it works

# Set up Instructions
## 1. Set up Google Cloud Platform
### Create a Google Cloud Storage(GCS) bucket
If you already have a Google Cloud Platform(GCP) project, follow [these instructions](https://cloud.google.com/storage/docs/creating-buckets) to create a bucket which will store the daily output of the speedtests.
If you don't have a GCP project yet, set one up with free credit [here](https://cloud.google.com/free), then follow [these instructions](https://cloud.google.com/storage/docs/creating-buckets) to create a bucket to store the speedtests output.

### Install the Google Cloud SDK
Follow instructions here to download the SDK, which is required to send the speedtest results to GCS.

## 2. Download Speedtest by Ookla
Follow instructions to install the Ookla Speedtest CLI [here](https://www.speedtest.net/apps/cli) for free.
Make sure to install it in the same folder as the one containing the scripts above.

## 3. Editing the scripts
### Substituting in your bucket name
Run this command, substituting <bucket-name> for the name of your bucket, the dafault name used in this project is "speedest-source", but bucket names in GCP are universally unique, and so you must choose a new one. 
`sed -i 's/gs://speedtest-source/gs://<bucket-name>/' export_clean.sh`
  
### Configure your folder path
First choose in which folder you will clone this repo into. Move into this the repo with `cd folder-name/speedtest_analysis` and then run `pwd`. Copy the output, I'll refer to it as *your-path*. Run the following command to substitute the path currently in the script with *your-path*.
`sed -i 's//your-path/' speedtest_script.sh`

## 4. Create Crontab file(Mac)
### Set permissions on cron file
Follow instructions [here](https://blog.bejarano.io/fixing-cron-jobs-in-mojave/) in order to set up the correct permissions so that the cronjob can run the bash script. What these instructions do is to allow cron to have Full Disk Access. 
-- Warning:
This is not the best decision security-wise. As explained in the linked resource, a malicious user that can create a job or edit the scripts for the existing jobs would also have Full Disk Access. 

### Editing when the cronjob will run
In [this](https://crontab.guru/#0_9-21_*_*_*) you will find information on the syntax of how to schedule a job.In the "crontab.txt" file, there are two jobs created.
1 - It runs a speedest every minute from 9 AM to 9 PM(21:00) local time. This is represented by `(* 9-21 * * *)`. It saves the tests' results to "daily_speedtest.txt".
2 - This one runs once a day at midnight, represented by `(0 0 * * *)`, and it converts the txt file to csv, and sends this csv file to the Google Cloud Storage bucket you created.
