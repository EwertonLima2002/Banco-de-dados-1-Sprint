create database Improvment_cocoa;
use Improvment_cocoa;

create table usuario(
idusuario int primary key auto_increment,
nome varchar(50),
email varchar(100) unique,
senha varchar(40),
cpf varchar(11),
tel_Cell varchar(11)
);


create table empresa (
idEmpresa int primary key auto_increment,
cnpj varchar(14) not null,
razão_social  varchar(40),
responsavel varchar(50),
cidade varchar(20),
estado char(2),
cep char(8),
numero int,
complemento varchar(45),
tel_empresa varchar(11)
)auto_increment = 50;


create table endereço(
idEndereço int primary key auto_increment,
cep char(8),
cidade varchar(30),
bairro varchar (50),
numero int,
complemento varchar (20)
) auto_increment = 100;


create table sensor(
idsensor int primary key auto_increment,
sensor varchar (20),
status_sensor char(10) constraint Chk_sensor check (status_sensor in('Ativo' , 'Desativado' , 'Manutenção'))
) auto_increment = 150;


create table leitura(
idleitura int primary key auto_increment,
temperatura float,
umidade float,
data_da_leitura_hora datetime default current_timestamp
) auto_increment = 200;


create table metricas (
id_metrica int primary key auto_increment,
media_temperatura float,
media_umidade float
) auto_increment = 250;

insert into metricas (media_temperatura , media_umidade)values
(20.5 , 70.4),
(18.2 , 60.2),
(22.3 , 64.1),
(21.0 , 90.1);

SELECT avg(media_temperatura)
FROM metricas;

SELECT avg(media_umidade)
FROM metricas;



insert into usuario (nome , email , senha , cpf , tel_Cell)values
('Gustavo Torres','Gustavo.torres@gmail.com','*12345Torres',12417392012,11960387699), 
('Diego Hessel','diegohessel@gmail.com','*09876Hes',12445678092,11971195627),
('Ewerton lima',"ewerton_lima@gmail.com","*lima123",44255100892,11945474677),
('João Duarte','joãoduarte@gmail.com','*joaoduarte123',43215155897,11974495712);




insert into empresa (cnpj , razão_social , responsavel , cidade , estado , cep , numero , complemento , tel_empresa)values
(7201786800010,'Cocoa Guard','will','São Paulo','sp',07937020,12,'sitio',11974677234), 
(04634126000179,'Cocoa Saviors','Douglas','São Paulo','sp',04751999,76,'fazenda',11934211225),
(26390067000173,'Help Cacau','rayssa' ,'	Francisco Morato','sp',01221880,30,'sitio',11934542199),
(73457284000113,'cocoa alert','aline','Franco da Rocha','sp',04134660, 01,'fazenda',11934143291);


insert into endereço(cep , cidade , bairro , numero , complemento) values
(17021460,'Bauru','Jardim Nossa Lourdes',12,'fazenda'),
(07141140,'Guarulhos','Jardim Santa Inês',91,'sitio'),
(08620745,'Suzano','Jardim Mimosa',344,'fazenda'),
(13806078,'Mogi Mirim','Jardim Longatto',245,'sitio');
    
    

    
insert into sensor (sensor , status_sensor)values 
(1, 'Ativo'),
(2 ,'Ativo'),
(3,'Manutenção'),
(4,'Desativado');



insert into leitura (temperatura , umidade)values 
('21.50', '50.5'),
('22.15', '50.5'),
('24.96', '50.5'),
('25.13', '50.5');

select * from usuario;
select * from empresa;
select * from endereço;
select * from sensor;
select* from leitura;
select * from metricas;
