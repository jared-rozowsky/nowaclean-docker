# Full contents of Dockerfile
FROM rocker/tidyverse
LABEL description="Base docker image with tidyverse and hence R and util libraries"
ARG ENV_NAME="deseq2"

# Install dependencies if any needed -- this is a template
# Since our base image is an R docker base we will use BiocManager install

RUN apt-get update && \ 
    R -e "install.packages(c('devtools', 'argparse')); devtools::install_github('3inar/nowaclean')"  && \
    apt-get clean -y