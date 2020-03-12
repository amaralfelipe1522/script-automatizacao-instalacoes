echo "Atualizando repositórios.."
if ! apt-get update -y
then
    echo "Erro na atualização. Verifique seu arquivo /etc/apt/sources.list"
    exit 1
fi
echo "Atualização feita com sucesso"

echo "Atualizando pacotes já instalados..."
if ! apt-get dist-upgrade -y
then
    echo "Não foi possível atualizar pacotes."
    exit 1
fi
echo "Atualização de pacotes feita com sucesso"

echo "Removendo aplicações e bibliotecas já instaladas..."
if [ ! -z $(which -- docker) ]; then
    sudo apt-get autoremove -y --purge docker
fi

echo "Baixando e instalando os recursos..."
sudo apt-get install -y git npm python python-pip golang docker.io mysql-server
sudo npm install -g npm n
sudo -H python -m pip install --upgrade pip
sudo systemctl start docker
sudo systemctl enable docker
printf "\n[http]
        sslVerify = false
        \n[user]
        name = Felipe Amaral
        email = amaral.felipe@live.com
        signingkey = 43B8CCCF699517BD
        \n[credential]
        helper = store
        \n[gpg]
        program = gpg
        \n[commit]
        gpgsign = true" | tee -a $HOME/.gitconfig && \
printf "\nexport GOPATH=\$(go env GOPATH)" | tee -a $HOME/.zshrc $HOME/.bashrc