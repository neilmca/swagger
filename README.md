
# Swagger API

Swagger API example

## Docker

Build and run

```bash
docker build -t swagger-ui .
docker run -p 8080:8080 swagger-ui
```
To get into the container

```bash
docker run -t -i swagger-ui /bin/bash
```

To dev the yaml files and mount dev into the container
```bash
docker run -v C:\code\github\swagger\api:/node_modules/swagger-ui/dist/api_dev  -p 8080:8080 swagger-ui
```

Then you can navigate to the page by doing 
```bash
http://localhost:8080/api_dev/core_jadmin1.0.yaml
```

In the explore window of swagger ui.

##Save to Google Container Engine

NOTE: TO deploy using Flexible Appengine (in Beta) it must be us region. Cannot deploy from europe regions.

See instructions for [pushing to gcloud](https://cloud.google.com/container-registry/docs/pushing)
Must tag the image before pushing to glcoud.

```bash
docker tag swagger-ui:latest us.gcr.io/mq-cloud-prototyping-2/swagger/swagger-ui:0.1
```

Then push the tagged image to gloud
```bash
gcloud docker push us.gcr.io/mq-cloud-prototyping-2/swagger/swagger-ui:0.1
```

##Host from Google Flexible AppEngine

Need to create a appengine project and then deploy it. Since we are actually deploying an existing image then just need to
create an app.yaml and then include docker image url.

```Bash
gcloud app deploy --image-url us.gcr.io/mq-cloud-prototyping-2/swagger/swagger-ui:0.1 --project mq-cloud-prototyping-2
```


TO deploy as a module 

```Bash
gcloud app deploy swaggerui-module.yaml --image-url us.gcr.io/mq-cloud-prototyping-2/swagger/swagger-ui:0.1 --project mq-cloud-prototyping-2
```