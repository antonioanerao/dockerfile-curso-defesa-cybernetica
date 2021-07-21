# Dockerfile do curso de Defesa Cybernética
Um simples Dockerfile que eu uso no dia a dia do curso de Defesa Cybernética <br>

### Executando o Dockerfile
    docker image build -t defesacybernetica:1.0.0 .
### Criando um container a partir da imagem criada
    docker container run -ti defesacybernetica:1.0.0
    
### Programas inclusos na imagem na versão 1.0.0
- sudo
- curl
- gnupg 
- net-tools 
- nmap 
- sqlmap 
- nano
- vim 
- apache2

### Senha sudo do usuário elliot
    elliot
    
### Imagem Docker
Link: https://hub.docker.com/r/antonioanerao/defesacybernetica
