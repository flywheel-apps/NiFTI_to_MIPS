#flywheel/csv-import

# Start with python 3
FROM python:3
MAINTAINER Flywheel <support@flywheel.io>

# Install pandas
RUN pip install numpy matplotlib Pillow nibabel

# Flywheel spec (v0)
WORKDIR /flywheel/v0

# Copy executables into place
COPY spreadheet_importer.py ./run
COPY manifest.json  .
RUN chmod +x run manifest.json

# Set the entrypoint
ENTRYPOINT ["/flywheel/v0/run"]
