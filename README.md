# cpp-scratch

## Build Static Standalone Binary

```
make build/binary
```

```
root@83363e26ef73:/workspaces/cpp-scratch# make build/binary
g++ -static hello.cpp -o hello
```

## Build Docker Image From Scratch

```
make build/docker
```

```
root@83363e26ef73:/workspaces/cpp-scratch# make build/docker
docker build . -t cpp-scratch:latest
[+] Building 0.5s (5/5) FINISHED                                                                                    docker:default
 => [internal] load build definition from Dockerfile                                                                          0.0s
 => => transferring dockerfile: 90B                                                                                           0.0s
 => [internal] load .dockerignore                                                                                             0.0s
 => => transferring context: 2B                                                                                               0.0s
 => [internal] load build context                                                                                             0.2s
 => => transferring context: 2.50MB                                                                                           0.2s
 => CACHED [1/1] COPY    hello /                                                                                              0.0s
 => exporting to image                                                                                                        0.0s
 => => exporting layers                                                                                                       0.0s
 => => writing image sha256:5e3a32ec2393bf22911f3b0acad755f1d4a0113b9fe161a018938fd1b4f19c81                                  0.0s
 => => naming to docker.io/library/cpp-scratch:latest
```

## Run Docker Image

```
make run/docker
```

```
root@83363e26ef73:/workspaces/cpp-scratch# make run/docker
docker run -it --rm cpp-scratch:latest
Hello World!
```

## The Catch?

The size of the Docker image is just 2.5 MB.

```
root@83363e26ef73:/workspaces/cpp-scratch# docker image ls | grep cpp-scratch
cpp-scratch                                                                                       latest                                                                       5e3a32ec2393   7 minutes ago   2.5MB
vsc-cpp-scratch-d5f7e92912e86c17c80f6d734ed500ee3db6b6a42c7390d2589702fee5a9d77f                  latest                                                                       fffd2e5c4a3a   8 minutes ago   1.9GB
```