FROM nvidia/cuda:9.0-cudnn7-runtime

RUN apt update && apt install -y python3-pip
RUN pip3 install --upgrade pip
RUN pip3 install -U tensorflow-gpu==1.8.0 
RUN pip3 install scipy pandas seaborn pillow matplotlib cloudpickle scipy sklearn annoy keras
RUN pip3 install jupyterlab

WORKDIR /workspace

CMD jupyter-lab --no-browser --port=8899 --ip=0.0.0.0 --allow-root
