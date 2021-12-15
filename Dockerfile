FROM /home/ubuntu/projet_tp/repo_tp/webapp/target/webapp.war
RUN sed -i webapp.war
EXPOSE 80
