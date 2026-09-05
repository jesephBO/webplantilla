FROM httpd:2.4
 
COPY ./salient/ /usr/local/apache2/htdocs/
 
RUN sed -i "s/Listen 80/Listen 81/" /usr/local/apache2/conf/httpd.conf
 
EXPOSE 81