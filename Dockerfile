# Use an official Python image as the base image
FROM python:3.9-slim

# Install Jupyter
RUN pip install --no-cache-dir jupyter

# Set the working directory
WORKDIR /app

# Copy the Jupyter notebook file into the container
COPY notebook/hello_world.ipynb /app/

# Expose the port for Jupyter Notebook
EXPOSE 8888

# Start Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]