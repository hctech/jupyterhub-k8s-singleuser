FROM jupyterhub/k8s-singleuser-sample:0.7.0
USER root
RUN mkdir -p /data/jenkins && \
    chown 1000:100 /data/jenkins
USER $NB_USER
COPY requirements.txt .
RUN pip install -i https://pypi.douban.com/simple/ \
    -r ./requirements.txt
