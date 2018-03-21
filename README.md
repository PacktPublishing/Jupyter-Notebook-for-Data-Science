# Jupyter Notebook for Data Science

The notes and example code for the online course
[Jupyter Notebook for Data Science](TODO).

**Under construction – hear about the course launch [here](http://eepurl.com/dofsD1)!**

## Example code

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
docker run -it --rm -p 8888:8888 -v ~/code/jupyter-course:/home/jovyan/work jupyter/datascience-notebook
```

You should now get a link to open Jupyter Notebook in your browser and work with the example code or create your own notebooks with the provided data.

## Course Notes

In the course a number of useful online resources are mentioned – you can
find the links to all of them here.

### Section 1: Getting the most out of Jupyter Notebook

1.1. Introduction to the course

* [Quantum mechanical light-matter interaction notebook](https://github.com/jrjohansson/qutip-lectures/blob/master/Lecture-1-Jaynes-Cumming-model.ipynb)
* [Whale migration notebook](http://nbviewer.jupyter.org/github/robertodealmeida/notebooks/blob/master/earth_day_data_challenge/Analyzing%20whale%20tracks.ipynb)
* [Forecasting financial data notebook](https://github.com/rsvp/fecon235/blob/master/nb/qdl-libor-fed-funds.ipynb)
* [A gallery of interesting Jupyter notebooks](https://github.com/jupyter/jupyter/wiki/A-gallery-of-interesting-Jupyter-Notebooks)

1.2. Jupyter Notebook setup and your first notebook

1.3. A walkthrough of important Jupyter Notebook features
1.4: Exporting and sharing notebooks

* [Jupyter Notebook data science stack](https://github.com/jupyter/docker-stacks/tree/master/datascience-notebook)

## Credits

Course and materials author – [Dražen Lučanin](https://metakermit.com/)

Published by [Packt](https://www.packtpub.com/).
