# docker-cf-cli
[![](https://images.microbadger.com/badges/image/smizy/cf-cli.svg)](https://microbadger.com/images/smizy/cf-cli "Get your own image badge on microbadger.com") 
[![](https://images.microbadger.com/badges/version/smizy/cf-cli.svg)](https://microbadger.com/images/smizy/cf-cli "Get your own version badge on microbadger.com")
[![CircleCI](https://circleci.com/gh/smizy/docker-cf-cli.svg?style=svg&circle-token=59c58a46b93b9bcd6383783e198bfe88a66a8683)](https://circleci.com/gh/smizy/docker-cf-cli)

[Cloud Foundry CLI](https://github.com/cloudfoundry/cli) docker image base on alpine

```
$ docker run -it --rm smizy/cf-cli cf --help
cf version 6.22.2+a95e24c-2016-10-27, Cloud Foundry command line tool
Usage: cf [global options] command [arguments...] [command options]

Before getting started:
  config    login,l      target,t
  help,h    logout,lo
 :
 :
```