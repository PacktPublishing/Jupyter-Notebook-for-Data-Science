<p align='center'><a href='https://www.eventbrite.com/e/algorithmic-trading-with-python-cohort-2-tickets-1833367644979?aff=oddtdtcreator'><img src='https://static.packt-cdn.com/assets/images/packt+events/Python_for_Algorithmic Trading_v1.png'/></a></p>




# Jupyter Notebook for Data Science

Notes, example code and datasets for the online course
[Jupyter Notebook for Data Science](https://www.packtpub.com/application-development/jupyter-notebook-data-science-video).

- [Course Prerequisites](#course-prerequisites) – a few tutorials we recommend to get ready to take the course (in case you haven't worked with Python before)
- [Course Code Examples](#course-code-examples) - the source code developed during the course. We recommend you set it up on your own computer in order to try it out and make changes.
- [Course Notes](#course-notes) - useful links and additional resources that we recommend you check out after you finish each section.
- [Next Steps](#next-steps) – some tips on how to continue learning after you've finished the course
- [Credits](#credits)
- [License](#license)


## Course Prerequisites

To fully benefit from the coverage included in this course, you will need:

* a basic understanding of the Python programming language ([tutorial](https://docs.python.org/tutorial/)), including some basics of the web (HTML/CSS) for the scraping section ([tutorial](https://www.internetingishard.com/))
* know the basics of running commands on the command line ([tutorial](https://www.learnenough.com/command-line-tutorial)), including knowing git well enough to download this source code locally ([tutorial](https://try.github.io/))
* a basic understanding of math and statistics will come in handy, but is not a strict requirement

We are combining a wide collection of skills in this course – programming, data collection and analysis, so some parts will likely be a bit unfamiliar to you, no matter your background. Don't be discouraged by this – a part of the data science profession is to learn new skills over time to stay up-to-date. If you get stuck in any particular area, take a small break, learn some more details on the subject and resume the course afterwards. There is a wealth of resources online – from the online documentation pages of the libraries we use in the course, to websites like <https://stackoverflow.com/> where a lot of the beginner questions have already been answered.


## Course Code Examples

Create a new directory.

```bash
mkdir jupyter-course
cd jupyter-course
```

Clone this repository. **Note – you will first need to install the [Git Large File Storage extension](https://git-lfs.github.com/) to clone all the large datasets in this repository.**

```bash
git clone https://github.com/PacktPublishing/Jupyter-Notebook-for-Data-Science.git
```

Start Jupyter Notebook using the Docker stack. Adapt the path to your working directory (I'm assuming *~/code/jupyter-course*).

```bash
docker run -it --rm -p 8888:8888 -v ~/code/jupyter-course:/home/jovyan/work jupyter/datascience-notebook:de0cd8011b9e
```

You can always leave out the exact image tag (`:de0cd8011b9e`) to get the latest version of all the packages, but this is the version that was used in the course.

After everything is downloaded and started, you should get a link in your console to open Jupyter Notebook in your browser. The notebook should be connected to your local files including this git repository. You should now be ready to go through the example code or create your own notebooks to analyse the example datasets.

If you want to try out the new JupyterLab interface (as we do in the course in Section 5), you need to modify the command a bit.

```bash
docker run -it --rm -p 8888:8888 -v ~/code/jupyter-course:/home/jovyan/work jupyter/datascience-notebook:de0cd8011b9e start.sh jupyter lab
```

For Section 5 where we install additional packages, like Matplotlib Basemap and Plotly, build and run the custom Docker image from the *Dockerfile* in this git repo.

```bash
docker build --rm -t jupyter/custom-notebook .
docker run -it --rm -p 8888:8888 -v ~/code/jupyter-course:/home/jovyan jupyter/custom-notebook start.sh jupyter lab
```

**Note – some of the notebooks connect to REST APIs that require API keys (DarkSky, Plotly & Mapbox). If you want to follow along, you will need to create accounts on these services and substitute your own API keys in the code. This is all explained in the course videos.**


## Course Notes

In the course a number of useful online resources are mentioned – you can
find the links to all of them here.

### Section 1: Jupyter Notebook Introduction

1.1. Course Introduction

* [Jupyter Notebook](https://jupyter.org/)
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
* [nbviewer – simple way to share (and discover) Jupyter Notebooks](https://nbviewer.jupyter.org/)

### Section 2: Data Analysis Using Pandas

2.1: Parsing the Crime Dataset

* [City of Chicago Data Portal](https://data.cityofchicago.org/)
* [NYC OpenData](https://data.cityofnewyork.us)
* [Code for All](https://codeforall.org/)

2.2: Pandas Data Structures

* [Pandas documentation](https://pandas.pydata.org/pandas-docs/stable/index.html)
* [Wes McKinney – Data analysis with pandas](https://www.youtube.com/watch?v=w26x-z-BdWQ)
* [Brandon Rhodes - Pandas From The Ground Up](https://www.youtube.com/watch?v=5JnMutdy6Fw)

2.3: Explore and Visualise the Data

* [Advanced Indexing – Pandas documentation section about hierarchical indexing](https://pandas.pydata.org/pandas-docs/stable/advanced.html)

2.4: Create an Interactive Widget

* [Jupyter Widgets](https://ipywidgets.readthedocs.io/)

### Section 3: Scraping Data

3.1: Introduction to Data Scraping

* [Scrapy – a Python framework for scraping](https://scrapy.org/)

3.2: Fetching Data from a REST API Using Requests

* [DarkSky Developer API](https://darksky.net/dev)
* [Requests](http://www.python-requests.org/)

*Update – Since creating this course, DarkSky has shut down its API to the public. There are [alternative weather APIs](https://stackoverflow.com/a/45089938/544059) available. It is a good exercise to try to fetch similar data from another source, as these are exactly the types of tasks one frequently runs into during day-to-day data science work.*

3.3: Importing API data into Pandas

3.4: Scraping Websites using BeautifulSoup

* [Weather Underground](https://www.wunderground.com/)
* [Beautiful Soup](https://www.crummy.com/software/BeautifulSoup/)

*The Weather Underground website has invariably changed since creating this course. One of the downsides of scraping websites is that the underlaying HTML markup often changes (usually even more often than API protocols). Using [CSS selectors](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Selectors) similar to the ones we used in the video, it should be possible to adapt the code to work with an updated version of the website.*

### Section 4: Advanced Visualisation

4.1: Introduction to Information-Dense Visualisations

* [Matplotlib Gallery](https://matplotlib.org/gallery/)
* [Edward Tufte – The Visual Display of Quantitative Information](https://www.edwardtufte.com/tufte/books_vdqi)

4.2: Visualising Data Correlation

* [Wikipedia – time series](https://en.wikipedia.org/wiki/Time_series)
* [Wikipedia – correlation](https://en.wikipedia.org/wiki/Correlation_and_dependence)

4.3: Linear Regression

* [StatsModels – a Python package with many statistical modelling methods](https://www.statsmodels.org/)
* [Wikipedia – linear regression](https://en.wikipedia.org/wiki/Linear_regression)

4.4: Correlation Matrix

* [Correlation matrix using Seaborn, another plotting package](https://seaborn.pydata.org/examples/many_pairwise_correlations.html)

### Section 5: Analysing Geographic Data

5.1: Maps in Data Science

* [I Quant NY – a blog telling stories about New York through data](http://iquantny.tumblr.com/)
* [How we found the worst place to park in New York City — a TEDx talk by Ben Wellington, the author of "I Quant NY"](https://www.youtube.com/watch?v=6BTg8OXhEZk)

5.2: Plotting Crime Locations

* [JupyterLab](https://jupyterlab.readthedocs.io/)

5.3: Interactive Maps Using Plotly

* [Plotly](https://plot.ly/)

5.4: Final Remarks


## Next Steps

After you're done with the course, consider finding a practical problem to work on – that's the best way to learn. Here are some ideas on what to work on:

- [Awesome Python for Social Good](https://github.com/metakermit/awesome-python-for-social-good) – a curated list of topics where you can use your data science & programming skills to help society.
- [Code for All](https://codeforall.org/) – network of organizations advocating open data and helping developers and interested people get involved with analysing public data.
- [Kaggle](https://www.kaggle.com/) – an online community for working on real data science projects posted by companies and NGOs with occasional competitions & prizes. People also help each other out by commenting on uploaded solutions and starting various discussions about data science methods. Jupyter Notebooks are used to perform the work.

Some inspirational data science examples:

- [Jake VanderPlas](http://jakevdp.github.io/) – the blog from an astronomer and data scientist very active in the Python community
- [FiveThirtyEight](https://fivethirtyeight.com/) – a website that publishes data-driven articles on (mostly US) sports, politics & economics. It's a great source of inspiration of what sort of topics can be explored.
- [Mike Bostock](https://bost.ocks.org/mike/) – data science blog with code examples from the author of [D3.js](https://d3js.org/).


## Credits

Course and materials author – [Dražen Lučanin](https://metakermit.com/). Hear about more of Dražen's courses by subscribing [here](http://eepurl.com/dofsD1)!

Published by [Packt](https://www.packtpub.com/).


## License

The code is published under the [MIT license](LICENSE).
