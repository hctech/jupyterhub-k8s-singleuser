FROM jupyterhub/k8s-singleuser-sample:0.7.0
RUN pip install -i https://pypi.douban.com/simple/ \
  -r requirements.txt
