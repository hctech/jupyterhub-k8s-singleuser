FROM jupyterhub/k8s-singleuser-sample:0.7.0
COPY requirements.txt .
RUN mkdir -p /data/jenkins && \
    chown 1000:100 /data/jenkins && \
    pip install -i https://pypi.douban.com/simple/ \
    -r ./requirements.txt
