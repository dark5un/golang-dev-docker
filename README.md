# ARCH LINUX GOLANG DEVELOPMENT ENVIRONMENT


# HOW TO BUILD THE DOCKER IMAGE
docker build . -t golang-dev/latest

# AND HOW TO RUN IT
docker run --rm -ti -v "$PWD"/home:/root -w /root/go golang-dev/latest  bash
