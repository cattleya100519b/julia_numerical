FROM julia:latest

WORKDIR /app

# Juliaのパッケージをインストール
RUN julia -e "using Pkg; Pkg.add(\"IJulia\")"

# Jupyter Notebookの設定
RUN julia -e "using IJulia; installkernel(\"julia-docker\", \"Julia (Docker)\")"