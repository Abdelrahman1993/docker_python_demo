FROM python:3.6.1-alpine
WORKDIR /project
ADD . /project
RUN python -m pip install --trusted-host pypi.python.org --trusted-host files.pythonhosted.org --trusted-host pypi.org --upgrade pip

RUN pip install -r requirements.txt
CMD ["python","app.py"]
