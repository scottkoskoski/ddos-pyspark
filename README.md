# DDoS Detection with PySpark

## Overview

This project demonstrates the use of **PySpark** for detecting Distributed Denial of Service (DDoS) attacks using network traffic data. The dataset, sourced from a public repository, contains captured network packets during DDoS attacks. 

By leveraging PySpark's distributed processing capabilities, the project analyzes and processes large-scale network traffic data, extracting features to identify DDoS patterns.

---

## Features

- **Data Preprocessing**: Load and clean network traffic data.
- **Feature Engineering**: Extract meaningful features from raw network packets.
- **Visualization**: Analyze traffic statistics with Jupyter notebooks.
- **Modeling**: Use machine learning algorithms to classify network traffic and detect DDoS attacks.

---

## Dataset

The dataset used for this project is `Friday-WorkingHours-Afternoon-DDos.pcap_ISCX`, which contains network traffic data captured during a simulated DDoS attack.

**Key Information**:
- Format: `.pcap` and `.csv`
- Source: Canadian Institute for Cybersecurity's [ISCX dataset](https://www.unb.ca/cic/datasets/nsl.html)

---

## Getting Started

### Prerequisites

Ensure you have the following installed on your system:
- **Docker Desktop**
- **Git** (for cloning the repository)

---

## Running the Project with Docker

The project uses a `Dockerfile` to create a containerized environment. Follow these steps to set up and run the project:

### 1. Clone the Repository

Clone the repository to your local machine:

```bash
git clone https://github.com/scottkoskoski/ddos-pyspark.git
cd ddos-pyspark
```

---

### 2. Build the Docker Image

To build the Docker image, navigate to the project directory where the `Dockerfile` is located, and run the following command:

```bash
docker build -t ddos-notebook .
```

- **What this does**:
  - Reads the `Dockerfile` to build an image with the required dependencies (e.g., PySpark, Java).
  - Names the image `ddos-notebook` for easy reference.

---

### 3. Run the Docker Container

Start the container and map the Jupyter Notebook port (8888) to your local machine:

```bash
docker run -p 8888:8888 -v $(pwd):/workspace ddos-notebook
```

- **Explanation**:
  - `-p 8888:8888`: Maps port 8888 in the container to port 8888 on your host.
  - `-v $(pwd):/workspace`: Mounts your current directory as `/workspace` in the container.

---

### 4. Access the Jupyter Notebook

After starting the container, check the terminal output for a URL similar to:

```
http://127.0.0.1:8888/?token=your_token_here
```

- Copy and paste the URL into your browser to open the Jupyter Notebook interface.
- From there, you can explore the provided notebook and run the analysis.

---

### Project Structure

```
/ddos-pyspark
├── Dockerfile               # Docker configuration file
├── .dockerignore            # Files ignored during Docker build
├── DDoS.ipynb               # Jupyter notebook with analysis
├── Friday-WorkingHours-Afternoon-DDos.pcap_ISCX.zip  # Dataset
├── README.md                # Project documentation
```

---

### Usage

- **Analyze Data**:
  - Open `DDoS.ipynb` in Jupyter Notebook.
  - Follow the steps to load the dataset, preprocess the data, and visualize key statistics.

- **Experiment**:
  - Modify the notebook to try new PySpark transformations or machine learning models.
  - Add your own analysis to enhance the project.

---

## License

This project does not have a license as it was created for educational purposes as part of a school project.

---

## Acknowledgments

- **Dataset**: Canadian Institute for Cybersecurity's [ISCX dataset](https://www.unb.ca/cic/datasets/nsl.html)
- **Tools**: [PySpark](https://spark.apache.org/), [Jupyter Notebook](https://jupyter.org/)


