# Jenkins:

- Open source tool for building CI/CD pipelines.
- Automation Tool.
- We want automated testing.
- Keep all your environments seperate for testing.
- If tests pass, push to production else feedback to developers
![CI/CD Pipeline example](images/ci_cd_pipeline_example.png)
- Everything done in Jenkins is called a job.
![step 1](images/job_1.png)
![step 2](images/job_2.png)
![step 3](images/job_3.png)
![output 1](images/output_1.png)
- `whoami` - Software
- `hostname` - IP address
- `uname -a`  - Full details
- If a test fails go to configure and you can change the script or topic to fix it save it and build again.
   ![failed test](<images/failed test.png>)
- `date` - where is our server running
- Job pipeline, when one is complete move onto the next one:
    - if linux next job else find out how to build env
    ![alt text](images/add_to_pipeline.png)
- Build one job at a time, test that it works then add to pipeline then test pipeline then repeat.

![Fianl detailed ci/cd example](images/ci-cd-final-details.png)