# base image
FROM python:3.9

# Build-time argument
ARG VERSION=1.0


LABEL maintainer="prajwal@gmail.com" \
version="${VERSION}" \
description="A Dockerfile using all instructions"
WORKDIR /app
ENV PORT=5000
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
EXPOSE ${PORT}
ADD https://example.com/sample-data.zip /app/data/sample-data.zip
ENTRYPOINT ["python3"]
CMD ["app.py"]
