# FROM python:3.7.3-stretch
FROM python:alpine

LABEL maintainer="mostafa.ahmad@gmail.com"

# Working Directory
WORKDIR /app

# Copy source code to working directory
COPY . app.py /app/

# Install packages from requirements.txt
RUN apk -U --no-cache upgrade &&\
    pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt

# RUN apt-get update && apt-get -y upgrade

# RUN pip install --upgrade pip &&\
#     pip install --trusted-host pypi.python.org -r requirements.txt

# Expose port 80    
EXPOSE 80

# Run app.py at container launch
CMD ["python","app.py"]
