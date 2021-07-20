FROM ubuntu
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y sudo curl gnupg net-tools nmap sqlmap nano vim apache2
RUN curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > /opt/msfinstall
RUN cd /opt && chmod 755 msfinstall && ./msfinstall
RUN useradd -ms /bin/bash elliot 
RUN echo 'elliot:elliot' | chpasswd && echo 'elliot ALL=(ALL) ALL' >>  /etc/sudoers

LABEL description="Curso Defesa Cybernética"
LABEL version="1.0.0"

USER elliot
WORKDIR /home/elliot
