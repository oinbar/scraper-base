FROM continuumio/anaconda3:2019.07

SHELL ["/bin/bash", "-l", "-c"]

RUN apt-get install unzip

RUN pip install selenium wget jupyter

# RUN curl -O https://chromedriver.storage.googleapis.com/2.46/chromedriver_linux64.zip
# RUN unzip chromedriver_linux64.zip
# RUN chmod 777 chromedriver

# this might just replace all three lines above
# RUN apt-get -y install chromedriver

RUN mkdir /root/.jupyter && mkdir /workdir

COPY jupyter_notebook_config.py /root/.jupyter/jupyter_notebook_config.py

COPY / /workdir

CMD jupyter notebook -y --port=8888 --notebook-dir=/workdir --allow-root --ip=0.0.0.0



