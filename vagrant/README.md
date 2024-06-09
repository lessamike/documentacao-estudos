# Documentação sobre o Uso do Vagrant

Bem-vindo à documentação sobre o uso do Vagrant! Neste guia, vamos explorar como o Vagrant pode ser utilizado no dia a dia para criar e gerenciar ambientes de desenvolvimento virtualizados. 

## O que é o Vagrant?

O Vagrant é uma ferramenta de linha de comando que facilita a criação, configuração e gerenciamento de ambientes de desenvolvimento virtualizados. Ele permite que você defina o ambiente de desenvolvimento em um único arquivo de configuração, chamado de `Vagrantfile`, e reproduza esse ambiente em qualquer máquina, garantindo consistência entre os ambientes de desenvolvimento da equipe.

## Instalação do Vagrant

Para instalar o Vagrant em seu sistema, siga as instruções disponíveis em [https://www.vagrantup.com/docs/installation](https://www.vagrantup.com/docs/installation).

## Estrutura do Código no `Vagrantfile`

O `Vagrantfile` é o arquivo de configuração principal do Vagrant e contém todas as informações necessárias para definir e configurar a máquina virtual. Vamos explicar cada parte do código presente no `Vagrantfile`:

```ruby
# Início da configuração do Vagrant
Vagrant.configure("2") do |config|
  # Define a imagem base da máquina virtual como Ubuntu 20.04 (Focal Fossa)
  config.vm.box = "ubuntu/focal64"

  # Provisionamento da máquina virtual usando um script shell
  config.vm.provision "shell", inline: <<-SHELL
    # Atualiza a lista de pacotes disponíveis para instalação
    sudo apt-get update

    # Instala o PostgreSQL e o pacote de contribuições
    sudo apt-get install -y postgresql postgresql-contrib
  SHELL
end
```
# Fim da Configuração do Vagrant

`Vagrant.configure("2") do |config|`: Inicia a configuração do Vagrant, onde "2" indica a versão do Vagrant que estamos usando e `config` é um objeto que representa a configuração da máquina virtual.

- `config.vm.box = "ubuntu/focal64"`: Define a imagem base da máquina virtual como Ubuntu 20.04 (Focal Fossa). Essa linha especifica qual sistema operacional será utilizado na máquina virtual.

- `config.vm.provision "shell", inline: <<-SHELL ... SHELL`: Define o provisionamento da máquina virtual usando um script shell. Isso significa que o Vagrant executará os comandos contidos no script shell dentro da máquina virtual durante a inicialização.

  Dentro do bloco de provisionamento, temos uma série de comandos shell que atualizam a lista de pacotes disponíveis e instalam o PostgreSQL e o pacote de contribuições.

# Uso Básico do Vagrant

Aqui estão alguns comandos básicos que você pode usar com o Vagrant:

- `vagrant up`: Inicia a máquina virtual e provisiona o ambiente de acordo com o Vagrantfile.
- `vagrant ssh`: Conecta-se à máquina virtual via SSH.
- `vagrant halt`: Desliga a máquina virtual.
- `vagrant destroy`: Remove a máquina virtual.
- `vagrant reload`: Reinicia a máquina virtual.

## Conclusão

O Vagrant é uma ferramenta poderosa para criar e gerenciar ambientes de desenvolvimento virtualizados. Com sua sintaxe simples e seu poderoso sistema de provisionamento, o Vagrant torna fácil a criação de ambientes de desenvolvimento consistentes e reproduzíveis.


Para saber mais sobre o Vagrant, consulte a documentação oficial em https://www.vagrantup.com/docs.
