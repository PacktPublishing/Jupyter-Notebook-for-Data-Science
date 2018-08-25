# Start from a core stack version
FROM jupyter/datascience-notebook:de0cd8011b9e
# Install from requirements.txt file
COPY requirements.txt /tmp/
# we are using Conda because of Basemap, but it might not be necessary in the future
RUN conda install --yes --file /tmp/requirements.txt && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER

# alternatively, use pip for installing the dependencies
#RUN pip install --requirement /tmp/requirements.txt && \
#    fix-permissions $CONDA_DIR && \
#    fix-permissions /home/$NB_USER
