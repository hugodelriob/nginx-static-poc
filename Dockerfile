# Imagen base ligera recomendada por las buenas prácticas de la práctica
FROM nginx:1.27-alpine

# Copiar la configuración personalizada con las cabeceras de hardening
COPY conf/default.conf /etc/nginx/conf.d/default.conf

# Copiar los archivos de la web estática (HTML y CSS)
COPY html/ /usr/share/nginx/html/

# Exponer el puerto interno 80
EXPOSE 80