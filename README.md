#### Data Engineering Capstone Project

#### Summary
This project aims to have an end-to-end data pipeline for the US Immigration Services in order them to utilize their immigration data combined with demographics and weather based information provided from different sources.

All the details about the project are given in the **Capstone Project.ipynb** file

The project runs on Airflow. The Capstone Project.ipynb notebook can also be run to check the output dataframes & files but the rest of the project where these output files which are ingested into Redshift can only be triggered from Airflow.

I would recommend to run the notebook to validate the data but Airflow DAG must be run the see the end-to-end pipeline.


The workspace folder consists of 3 different folders:
-airflow: where the DAG and operators are located
-scripts: where the .py files are located
-sourcefiles: where the source files are located

DAG File : **Capstone Immigration.py** must be run.
