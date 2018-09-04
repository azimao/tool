FROM mytool:1.0
ENV mysql_user root
ENV mysql_pass 123456
ENV mysql_host 192.168.157.128 
ENV mysql_db test
COPY ./backup.sh /
RUN chmod +x backup.sh
ENV cron_conf  "*       *       *       *       *  "
RUN echo "$cron_conf /backup.sh" >>  /var/spool/cron/crontabs/root
ENTRYPOINT ["crond","-f"]
