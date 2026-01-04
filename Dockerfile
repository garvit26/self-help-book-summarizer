# Updated Dockerfile - no model pre-pull to avoid timeout
FROM python:3.11-slim

# Install curl for Ollama installer
RUN apt-get update && apt-get install -y \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Install Ollama
RUN curl -fsSL https://ollama.com/install.sh | sh

# Working directory
WORKDIR /app

# Copy files
COPY app.py .
COPY requirements.txt .

# Install Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Expose port
EXPOSE 8501

# Start Ollama in background, wait a bit, then run Streamlit
CMD ["sh", "-c", "ollama serve & sleep 20 && streamlit run app.py --server.port 8501 --server.address 0.0.0.0"]