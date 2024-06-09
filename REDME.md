# Loja de Celulares - Banco de Dados

Este repositório contém o script SQL para a criação e inserção de dados em um banco de dados PostgreSQL para uma loja de celulares. Além disso, inclui algumas consultas SQL úteis para análise de dados.

## Estrutura das Tabelas

### Modelos
Tabela contendo informações sobre os modelos de celular.

- `id`: Identificador único do modelo.
- `nome`: Nome do modelo.
- `marca`: Marca do modelo.
- `preco`: Preço do modelo.
- `caracteristicas`: Características do modelo.

### Clientes
Tabela contendo informações sobre os clientes.

- `id`: Identificador único do cliente.
- `nome`: Nome do cliente.
- `email`: Email do cliente.
- `bairro`: Bairro do cliente.
- `idade`: Idade do cliente.
- `renda_mensal`: Renda mensal do cliente.

### Vendedores
Tabela contendo informações sobre os vendedores.

- `id`: Identificador único do vendedor.
- `nome`: Nome do vendedor.

### Compras
Tabela registrando as compras realizadas.

- `id`: Identificador único da compra.
- `cliente_id`: Identificador do cliente (chave estrangeira).
- `modelo_id`: Identificador do modelo (chave estrangeira).
- `vendedor_id`: Identificador do vendedor (chave estrangeira).
- `forma_pagamento`: Forma de pagamento utilizada na compra.
- `data_compra`: Data da compra.

## Instruções para Execução

### Requisitos

- PostgreSQL instalado. Para instalar, siga as instruções no [site oficial do PostgreSQL](https://www.postgresql.org/download/).

### Passos para Configuração

1. **Clone o repositório:**
   ```sh
   git clone  https://github.com/lessamike/documentacao-estudos.git
   cd seu-repositorio

2.**Crie um banco de dados no PostgreSQL:**
   sql
    Copiar código
    CREATE DATABASE loja_celulares;

3.**Execute o script SQL para criar e popular as tabelas:**
   Você pode usar o terminal ou uma interface gráfica como pgAdmin.
   No terminal
  
   psql -d loja_celulares -f script_inicial.sql
   
4.**Exemplos de consultas**

    4.1. Consulta básica com JOIN

         SELECT 
         c.nome AS cliente,
         m.nome AS modelo,
         v.nome AS vendedor,
         co.forma_pagamento,
         co.data_compra
      FROM 
         compras co
      JOIN 
         clientes c ON co.cliente_id = c.id
      JOIN 
         modelos m ON co.modelo_id = m.id
      JOIN 
         vendedores v ON co.vendedor_id = v.id;

   4.2. Consulta de vendas por modelo
   
         SELECT 
         m.nome AS modelo,
         COUNT(co.id) AS total_vendas
      FROM 
         compras co
      JOIN 
         modelos m ON co.modelo_id = m.id
      GROUP BY 
         m.nome
      ORDER BY 
         total_vendas DESC;
