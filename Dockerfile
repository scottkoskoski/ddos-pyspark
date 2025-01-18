FROM python:3.12-slim

# Environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Install dependencies
RUN apt-get update && apt-get install -y \
    default-jdk \
    procps \
    wget \
    && apt-get clean

# Set JAVA_HOME for PySpark
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
ENV PATH="$JAVA_HOME/bin:$PATH"

# Install Python libraries
RUN pip install --no-cache-dir \
    pyspark \
    notebook \
    pandas \
    scikit-learn \
    pyshark \
    matplotlib \
    seaborn

# Set working directory
WORKDIR /workspace

# Copy project files
COPY . /workspace

# Expose the Jupyter Notebook port
EXPOSE 8888

# Command to run Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]

