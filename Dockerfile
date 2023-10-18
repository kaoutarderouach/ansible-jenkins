# Utilisez une image légère d'un serveur web, par exemple nginx
FROM nginx:latest

# Copiez tous les fichiers HTML et CSS dans le répertoire approprié de l'image
COPY *.html /usr/share/nginx/html/
COPY css/ /usr/share/nginx/html/css/
COPY fonts/ /usr/share/nginx/html/fonts/
COPY img/ /usr/share/nginx/html/img/
COPY js/ /usr/share/nginx/html/js/
COPY mail/ /usr/share/nginx/html/mail/

# Exposez le port 80, qui est le port par défaut pour HTTP
EXPOSE 80

# Commande pour démarrer le serveur web
CMD ["nginx", "-g", "daemon off;"]
