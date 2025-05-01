# Usa a imagem do NGINX como base
FROM nginx:alpine

# Remove os arquivos padrões do NGINX
RUN rm -rf /usr/share/nginx/html/*

# Copia o conteúdo da pasta html local para dentro do container
COPY html /usr/share/nginx/html

# Expõe a porta padrão do NGINX
EXPOSE 80

# NGINX já inicia automaticamente, então não precisa de CMD extra
