### Build

```
$ docker build -t orthanc-nginx .
```

### Run

```
$ docker run -ti --rm -p 4242:4242 -p 8082:80 ch00k/orthanc-nginx:latest
```

Or, with a custom config file

```
$ docker run -ti --rm -p 4242:4242 -p 8082:80 -v <host_path_to_orthanc.json>:/etc/orthanc/orthanc.json:ro ch00k/orthanc-nginx:latest
```
