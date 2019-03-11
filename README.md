# myrepo

Krakta uputstva/objašnjenja

Zadatak 1.  Zadatak je riješen na način da se sa docker hub-a preuzeo php:apache base iamage, dodana je datoteka test.php koji poziva php funciju phpinfo() te je web serverom podešen da navedenu datuteku poslužuje automatski sa pokretanjem docker imagea, te je nakong toga kreirani novi docker image u koji su spremljene promjene, te je isti pohranjen na javni docker hub repozitorij. 

Novi image moguće je ručno preuzeti s repozirotija koristeći naredbu:
docker pull ficofilip/webserver_php:zadatak1

ili je moguće preuzeti Dockefile i pokrenuti naredbu docker build <Direktorij_koji_sadrzi_Dockerfile>

Zadatak 2:

Pokretanje ansible skripte zadatak2.yml preko naredbe ansible-playbook -s zadatak2.yml na zeljenom racunalu se izvode sljedeći zadaci:

1. Skripta provjerava dali su instalirane aplikacije docker i supervisor te ukoliko nisu pokreće se instalacija navedenih aplikacija
2. Skripta zatim provjerava da li na računalo postoji docker image te ukoliko ne postoji preuzima se iz javnog DockerHub repozitorija
3. Kreiraju se direktoriji /opt/run/webphp/log & config koji će služiti za pohranu logova i konfiguracijskih datoteka
4. U direktorij /opt/run/config/ kopira se sadržaj direktorija /etc/apache2 iz docker container-a

-Kako bi se osiguralo da se docker container pokrene prilikom pokretanja računala i da se logovi spremaju u /opt/run/webphp/log/ a conf fileovi citaju iz /opt/run/webphp/config/ direktorija potrebno je preuzeti datoteke docker_startup.sh i supervisord.conf na računalo . Zatim je potrebno u u config datoteku /etc/supervisor/ dodati datoteku supervisord.conf i podesiti u command retku putanju tako da pokazuje na docker_startup.sh skriptu ili ručno modificirati postojeću datoteku koja se nalazi u direktoriju /etc/supervisor/supervisord.conf i dodati: 

[program:docker_startup]                                                                                                                 
command=<putanja do skripte docker_startup.sh>/docker_startup.sh                                                                           
autostart=true                                                                                                                           
autorestart=false                                                                                                                       
startretries=0                                                                                                                           
redirect_stderr=false                                                                                                                   
redirect_stderr=false                                                                                                                   

Zadatak 3.
Datotke zadatak3.pcap sadrži snimljeni promet u trenutku pristupa serveru, može se provjeriti s wireshark aplikacijom.
