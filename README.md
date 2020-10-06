# vuln-list-update

[![Go Report Card](https://goreportcard.com/badge/github.com/aquasecurity/vuln-list-update)](https://goreportcard.com/report/github.com/aquasecurity/vuln-list-update)
[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](https://github.com/aquasecurity/vuln-list-update/blob/master/LICENSE)

Collect vulnerability information and save it in parsable format automatically

## Data
https://github.com/darendarrow/vuln-list/

## Dockerfile

### Build and push image with:

```
docker build . -t darendarrow/vuln-list-update:$(date +%F)
docker push darendarrow/vuln-list-update:$(date +%F)
```

### Run image
You must pass a Github private token as an env variable for it to push the output into the vuln-list repo.

```
docker run -e GITHUB_TOKEN="xxxxxxxx" darendarrow/vuln-list-update:2020-10-0
```

## Usage

```
$ vuln-list-update -h
Usage of vuln-list-update:
  -target string
        update target (nvd, alpine, redhat, debian, ubuntu)
  -years string
        update years (only redhat)
```

## Cron status
https://travis-ci.org/aquasecurity/vuln-list-update

## Author
Teppei Fukuda (knqyf263)
