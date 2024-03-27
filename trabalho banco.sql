create database mini_mundos;
use mini_mundo;

create table clientes(
  id_cliente int primary key auto_increment,
  nome varchar(20) not null,
  endereço varchar(100) not null,
  email varchar (100) not null,
  celular tinyint (14) not null,
  nascimento date not null
);
create table produtos(
id_produtos int auto_increment not null,
nome varchar(100),
preço decimal(5,4),
descrição varchar(150),
qnt_estoque tinyint unsigned not null,
primary key (id_produtos),
foreign key (id_clientes) references clientes (id_clientes)
);

create table pedidos(
id_pedidos  int auto_increment,
numero_pds int not null,
data_cmp date not null,
total  decimal (30) not null,
data_entg date not null,
primary key (id_pedidos),
foreign key (id_produtos) references produtos (id_produtos)
);

create table itens (
id_itens int auto_increment,
valor_unitario int  not null,
total decimal(100) not null,
primary key (id_itens),
foreign key (id_pedidos) references pedidos (id_pedidos)
);
