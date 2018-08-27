# Jupyter Notebook for Data Science

Notes, example code and datasets for the online course
[Jupyter Notebook for Data Science](TODO).

**You will need to install the [Git Large File Storage extension](https://git-lfs.github.com/) to clone all the data in this repository**

**Under construction – hear about the course launch [here](http://eepurl.com/dofsD1)!**

## Example Code

Create a new directory.

```bash
mkdir jupyter-course
cd jupyter-course
```

Clone this repository.

```bash
git clone https://github.com/PacktPublishing/Jupyter-Notebook-for-Data-Science.git
```

Start Jupyter Notebook using the Docker stack. Adapt the path to your working directory (I'm assuming *~/code/jupyter-course*).

```bash
docker run -it --rm -p 8888:8888 -v ~/code/jupyter-course:/home/jovyan/work jupyter/datascience-notebook:de0cd8011b9e
```

You can always leave out the exact image tag (`:de0cd8011b9e`) to get the latest version of all the packages, but this is the version that was used in the course.

After everything is downloaded and started, you should get a link in your console to open Jupyter Notebook in your browser. The notebook should be connected to your local files including this git repository. You should now be ready to go through the example code or create your own notebooks to analyse the example data.

If you want to try out the new JupyterLab interface, start the container like this:

```bash
docker run -it --rm -p 8888:8888 -v ~/code/jupyter-course:/home/jovyan/work jupyter/datascience-notebook:de0cd8011b9e start.sh jupyter lab
```

For Section 5 where we install additional packages, like Matplotlib Basemap, build and run the custom Docker image from the *Dockerfile* in this git repo.

```bash
docker build --rm -t jupyter/custom-notebook .
docker run -it --rm -p 8888:8888 -v ~/code/jupyter-course:/home/jovyan jupyter/custom-notebook start.sh jupyter lab
```

## Course Notes

In the course a number of useful online resources are mentioned – you can
find the links to all of them here.

### Section 1: Jupyter Notebook Introduction

1.1. Introduction to the course

* [Quantum mechanical light-matter interaction notebook](https://github.com/jrjohansson/qutip-lectures/blob/master/Lecture-1-Jaynes-Cumming-model.ipynb)
* [Whale migration notebook](http://nbviewer.jupyter.org/github/robertodealmeida/notebooks/blob/master/earth_day_data_challenge/Analyzing%20whale%20tracks.ipynb)
* [Forecasting financial data notebook](https://github.com/rsvp/fecon235/blob/master/nb/qdl-libor-fed-funds.ipynb)
* [A gallery of interesting Jupyter notebooks](https://github.com/jupyter/jupyter/wiki/A-gallery-of-interesting-Jupyter-Notebooks)

1.2. Setting up Jupyter Notebook

* [Jupyter Notebook data science stack](https://github.com/jupyter/docker-stacks/tree/master/datascience-notebook)

1.3. Using Jupyter Notebook

* [Life expectancy data from the World Bank](https://data.worldbank.org/indicator/SP.DYN.LE00.IN)

1.4: Publishing Notebooks

* [Blogging using Jupyter Notebook](https://github.com/dataquestio/jupyter-blog)

### Section 2: Data Analysis Using Pandas

2.1: Introduction to the Crime Dataset

* [City of Chicago Data Portal](https://data.cityofchicago.org/)
* [NYC OpenData](https://data.cityofnewyork.us)
* [Code for All](https://codeforall.org/)

2.2: Introduction to Pandas Data Structures

* [Pandas documentation](https://pandas.pydata.org/pandas-docs/stable/index.html)
* [Wes McKinney – Data analysis with pandas](https://www.youtube.com/watch?v=w26x-z-BdWQ)
* [Brandon Rhodes - Pandas From The Ground Up](https://www.youtube.com/watch?v=5JnMutdy6Fw)

2.3: Parsing the Crime Dataset Using Pandas
2.4: Explore and Visualise the Data
2.5: Create an Interactive Widget

## Next Steps

After you're done with the course, consider finding a practical problem to work on – that's the best way to learn. Here are some ideas on what to work on:

- https://github.com/metakermit/awesome-python-for-social-good
- https://www.kaggle.com/

## Credits

Course and materials author – [Dražen Lučanin](https://metakermit.com/)

Published by [Packt](https://www.packtpub.com/).
