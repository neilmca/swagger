
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
http://localhost:8080/./api_dev/core_jadmin1.0.yaml
```

In the explore window of swagger ui.