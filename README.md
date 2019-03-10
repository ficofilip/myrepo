# myrepo

Krakta uputstva

Zadatak 1. 

Zadatak 2:

Pokretanje ansible skripte zadatak2.yml preko naredbe ansible-playbook -s zadatak2.yml na zeljenom racunalu se izvode sljedeći zadaci:

1. Skripta provjerava dali su instalirane aplikacije docker i supervisor te ukoliko nisu pokreće se instalacija navedenih aplikacija
2. Skripta zatim provjerava da li na računalo postoji docker image te ukoliko ne postoji preuzima se iz javnog DockerHub repozitorija
3. Kreiraju se direktoriji /opt/run/webphp/log & config koji će služiti za pohranu logova i konfiguracijskih datoteka
4. U direktorij /opt/run/config/ kopira se sadržaj direktorija /etc/apache2 iz docker container-a

-Kako bi se osiguralo da se docker container pokrene prilikom pokretanja računala potrebno je preuzeti datoteke docker_startup.sh i supervisord.conf na računalo u direktorij /etc/supervisor/ dodati datoteku supervisord.conf ili ručno modificirati postojeću datoteku koja se nalazi u direktoriju /etc/supervisor/supervisord.conf i dodati 

[program:docker_startup]
command=<putanja do skripte docker_startup.sh>/docker_startup.sh
autostart=true
autorestart=false
startretries=0
redirect_stderr=false
redirect_stderr=false

Zadatak 3.
