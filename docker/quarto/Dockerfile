FROM rocker/tidyverse:4.4.0

RUN apt update && apt install -y \
    libxt6 \
    python3-pip \
 && rm -rf /var/lib/apt/lists/*

RUN install2.r --error \
    reticulate \
 && rm -rf /tmp/downloaded_packages/
