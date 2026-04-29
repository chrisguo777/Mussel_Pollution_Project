FROM rocker/r-ver:4.3.1

RUN apt-get update && apt-get install -y \
    pandoc \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev \
    zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /project

COPY renv.lock renv.lock
COPY .Rprofile .Rprofile
RUN mkdir -p renv
COPY renv/activate.R renv/activate.R

RUN Rscript -e "install.packages('renv', repos = 'https://cloud.r-project.org')" \
    && Rscript -e "renv::restore(prompt = FALSE)"

COPY . .

RUN mkdir -p data/clean output/tables output/figures report

CMD ["Rscript", "code/05_render_report.R"]