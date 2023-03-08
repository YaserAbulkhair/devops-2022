FROM continuumio/anaconda3

WORKDIR /app

RUN conda install numpy pandas statsmodels matplotlib Seaborn scikit-learn
RUN conda install jupyter
RUN apt-get update && apt-get install -y git

COPY . /app

CMD ["jupyter", "notebook", "--ip='*'", "--port=8000", "--no-browser", "--allow-root" ]

