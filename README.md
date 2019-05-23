# DeepMicro
DeepMicro is a deep representation learning framework exploiting various autoencoders to learn robust low-dimensional representations from high-dimensional data and training classification models based on the learned representation.

## Quick Setup Guide
**Step 1:** Change the current working directory to the location where you want to install `DeepMicro`.

**Step 2:** Clone the repository using git command
```
~$ git clone https://github.com/minoh0201/DeepMicro
~$ cd DeepMicro
```
**Step 3:** Create virtual environment using Anaconda3 ([Read Anaconda3 install guide](https://www.digitalocean.com/community/tutorials/how-to-install-anaconda-on-ubuntu-18-04-quickstart)) and activate the virtual environment
```
~$ conda create --name deep_env python=3.5
```
```
~$ conda activate deep_env
```
**Step 4:** Install required packages.
```
~$ pip install --upgrade pip && pip install numpy==1.16.2 && pip install pandas==0.24.2 && pip install scipy==1.2.1 && pip install sklearn==0.20.3 && pip install scikit-learn==0.20.3 && pip install matplotlib==3.0.3 && pip install psutil==5.6.1 && pip install keras==2.2.4
```
* If your machine is *not* equipped with GPU, install tensorflow CPU version 
  ```
  ~$ pip install tensorflow==1.13.1
  ```
* If it is equipped with GPU, then install tensorflow GPU version
  ```
  ~$ pip install tensorflow-gpu==1.13.1
  ```
**Step 5:** Run DeepMicro, printing out its usage.
```
~$ python DM.py -h
```

## Quick Start Guide
*Make sure you have already gone through the **Quick Setup Guide** above.*
### Learning representation with your own data
1. Copy your data under the `/data` directory. Your data should be a comma separated file without header and index, where each row represents a sample and each column represents a microbe. We are going to assume that your file name is `UserDataExample.csv` which is already provided.
2. Check your data shape with the following command.
```
~$ python DM.py -r 1 --no_clf -cd UserDataExample.csv
```