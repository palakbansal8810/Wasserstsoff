FROM python:3.10-slim

RUN apt-get update && apt-get install -y \
    build-essential \
    wget \
    libreadline-dev \
    libsqlite3-dev \
    && rm -rf /var/lib/apt/lists/*

# Install latest SQLite
RUN wget https://www.sqlite.org/2024/sqlite-autoconf-3450000.tar.gz && \
    tar -xzvf sqlite-autoconf-3450000.tar.gz && \
    cd sqlite-autoconf-3450000 && \
    ./configure && make && make install

ENV LD_LIBRARY_PATH=/usr/local/lib

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
