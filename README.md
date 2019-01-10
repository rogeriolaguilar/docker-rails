# Docker Rails

Docker base images for Rails applications.

To use some of this images in your Rails project

1 - Create a Dockerfile extending one of the images

```shell
FROM rogeriolaguilar/ruby:2.5.3
```

2 - Create a file "entrypoint.sh" in the root of the repository

```shell
#!/bin/bash
#### Sample of entrypoint.sh from https://docs.docker.com/compose/rails/
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /app/tmp/pids/server.pid

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"
```

