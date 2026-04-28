FROM node:20-bookworm


RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    git \
    file \
    curl \
    grep \
    build-essential \
    bubblewrap && \
    rm -rf /var/lib/apt/lists/*


RUN npm install -g @openai/codex@latest

RUN git config --global --add safe.directory /workspace

WORKDIR /workspace

# optional but nice
ENV TERM=xterm-256color

ENTRYPOINT ["codex"]
