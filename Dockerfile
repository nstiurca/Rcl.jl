FROM osrf/ros2:ardent-core

ARG JULIA_VER=julia-0.7.0-alpha
ARG JULIA_TARBALL_URL=https://julialang-s3.julialang.org/bin/linux/x64/0.7/julia-0.7.0-alpha-linux-x86_64.tar.gz

RUN apt-get update && apt-get install wget && apt-get clean
RUN wget ${JULIA_TARBALL_URL} -O - | tar xz && mv julia* /julia && cp -s /julia/bin/* /usr/bin
RUN julia -e 'using Pkg; Pkg.update()'
ENV ROS_VERSION 2
ENV ROS_DISTRO ardent
COPY . Rcl

WORKDIR Rcl

# RUN julia -e 'using Pkg; Pkg.test("Rcl")'