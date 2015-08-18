# docker-youtrack

[![Docker Image][docker-image]][docker-url]
[![Apache License][license-image]][license-url]

Docker image for JetBrains YouTrack

## Docker Image

### Pull and run

You can use the Docker image as-is (it will use defaults and will need you to complete the wizard configuration):

```shell
docker run -P frapontillo/youtrack
```

### Customized image

You can extend the default image and specify a few environment variables in your own Dockerfile, e.g.:

```dockerfile
FROM    frapontillo/youtrack:latest

ENV     YOUTRACK_BASE_URL http://your-balancer-ip
ENV     YOUTRACK_HOME_DIR /var/youtrack
ENV     YOUTRACK_DATA_DIR /var/youtrack/data
ENV     YOUTRACK_BACKUPS_DIR /var/youtrack/backups
ENV     YOUTRACK_LICENSE_USER_NAME Your YouTrack User Name
ENV     YOUTRACK_LICENSE_KEY youryoutracklicensekey
```

Build and run your image: your YouTrack instance will then be running on the port 8080 in the docker container.

## License

[JetBrains Youtrack](https://www.jetbrains.com/youtrack) and [Oracle Java 8](https://www.java.com) are referenced in the Docker container, but are subject to their own licenses.

```
   Copyright 2015 Francesco Pontillo

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
```

[docker-url]: https://hub.docker.com/r/frapontillo/youtrack
[docker-image]: https://img.shields.io/docker/pulls/frapontillo/youtrack?style=flat

[license-image]: http://img.shields.io/badge/license-Apache_2.0-blue.svg?style=flat
[license-url]: LICENSE