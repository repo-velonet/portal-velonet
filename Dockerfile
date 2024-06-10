# Use a imagem oficial do Nginx como base
FROM nginx:latest

# Instale o Git
RUN apt-get update && \
    apt-get install -y git

# Defina o diretório de trabalho como o diretório padrão do Nginx
WORKDIR /var/www/html/

# Clone o repositório do Git que contém o index.html desejado
RUN git clone https://github.com/repo-velonet/portal-velonet.git .

# Exponha a porta 80 do contêiner
EXPOSE 80

