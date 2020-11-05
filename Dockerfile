FROM jupyterhub/k8s-singleuser-sample:0.7.0
COPY requirements.txt .
RUN pip install -i https://pypi.douban.com/simple/ \
    -r ./requirements.txt && \
    echo "c.NotebookApp.iopub_data_rate_limit=10000000000" >> /etc/jupyter/jupyter_notebook_config.py
