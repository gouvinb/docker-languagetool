# Docker-markdownlint

A Docker image for languagetool, command Line and server Interface for
languagetool.

## Using the docker image

To check a single file :

```bash
docker run -v $PWD/src:/src gouvinb/docker-languagetool cli -l fr -c utf-8 /src/mdd_01.md
```

Or, to check with server:

```bash
docker run -v $PWD/src:/src gouvinb/docker-languagetool server
```

## Building from a docker file

The following will tag and upload a new release. Replace X.Y.Z as appropriate
version.

```bash
docker build -t gouvinb/docker-languagetool:latest -t gouvinb/docker-languagetool:X.Y.Z .
docker push gouvinb/docker-languagetool:latest
docker push gouvinb/docker-languagetool:X.Y.Z
```

## Feedback

All feedback is welcome. Let me know if you have any suggestions, questions, or
criticisms. If something is not idiomatic to Docker, please let me know know so
we can make it better.

## Contributing

1.  Fork it!
2.  Create your feature branch: `git checkout -b my-new-feature`
3.  Commit your changes: `git commit -am 'Add some feature'`
4.  Push to the branch: `git push origin my-new-feature`
5.  Submit a pull request :D

## LICENSE

Copyright 2016 gouvinb. All rights reserved. Use of this source code is governed
by a BSD-style license that can be found in the LICENSE.md file.