# Projeto Kubernetes

Projeto para o curso de Kubernetes da plataforma [Dio](https://dio.me).

## Plataformas

É necessário ter cadastro no [Docker Hub](https://hub.docker.com) para subir as imagens da aplicação.

A plataforma utiliza o CI/CD da plataforma [Gitlab](https://gitlab.com).

Cadastro na plataforma [GCP](https://cloud.google.com).

## Configuração GCP

Criar o cluster no menu Kubernetes.

Após criado cluster, criar a Máquina Virtual (VM instance) e configurar a chave SSH.

Após ter acesso SSH nesta máquina, é necessário configurar o Cluster nela.

## Configuração Gitlab

Para que o deploy funcione, é necessário cadastrar as váriaveis de ambiente:
- APP_VERSION = Versão da sua aplicação especificada no arquivo ;
- DB_HOST = Nome do serviço da base de dados criada pelo arquivo kubernetes/database-APP_VERSION.yml;
- DB_NAME = Nome da base de dados criada pelo arquivo kubernetes/secret.yml;
- DB_PASSWORD = Senha da base de dados criada pelo arquivo kubernetes/secret.yml;
- DB_USER = A imagem do mysql utiliza o root por padrão;
- DB_VERSION = Versão da sua aplicação especificada no arquivo kubernetes/database-DB_VERSION.yml;
- DOCKER_USER = Usuário criado na plataforma [Docker Hub](https://hub.docker.com);
- DOCKER_PASS = Senha do usuário criado na plataforma [Docker Hub](https://hub.docker.com);
- GCP_VM_DEPLOY_IP = Ip da Máquina Virtual (VM instance) criado na [GCP](https://cloud.google.com);
- GCP_VM_DEPLOY_SSH_KEY = Chave privada configurada na Máquina Virtual (VM instance) da [GCP](https://cloud.google.com);

## Configurações arquivos Kubernetes

No arquivo kubernetes/app-APP_VERSION.yml, é necessário trocar o caminho da imagem do docker, para o caminho do seu usuário.

No arquivo kubernetes/database-APP_VERSION.yml, é necessário trocar o caminho da imagem do docker, para o caminho do seu usuário.

No arquivo cicd/docker-build.sh, é necessário trocar o caminho da imagem do docker, para o caminho do seu usuário.

No arquivo cicd/deploy-gcp.sh, é necessário trocar o caminho do repositório.