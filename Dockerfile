FROM texlive/texlive:latest

WORKDIR /src

# Instala make, zip e unzip
RUN apt-get update && apt-get install -y make bash zip unzip

RUN apt-get update && \
    apt-get install -y --no-install-recommends fonts-liberation && \
    rm -rf /var/lib/apt/lists/*
    
CMD ["make", "pdf"]