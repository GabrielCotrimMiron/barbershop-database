/*     
====================   INSERTS   ============================  

*/ -- ENDEREÇOS 
INSERT INTO endereco (rua, numero, bairro, cidade, estado, cep) 
  VALUES ('Rua das Flores','123','Centro','Curitiba','PR','80000-000'), 
  ('Av. Brasil','45','Bela Vista','São Paulo','SP','01000-000'), 
  ('Rua A','10','Jardim','Cornélio Procópio','PR','86300-000'); 

-- USUÁRIOS 
INSERT INTO usuario (nome, email, data_nascimento, endereco_id, login, senha, tipo) 
  VALUES ('Paulo Oliveira','paulo.oliveira@exemplo.com','1985-04-12',1,'paulo.oliveira','senha123','Funcionario'), 
  ('Ana Administradora','ana.admin@exemplo.com','1990-07-20',2,'ana.admin','senhaadmin','Administrador'); 

-- CLIENTES 
INSERT INTO cliente (nome, email, data_nascimento, cpf, endereco_id) 
  VALUES ('João Silva','joao.silva@exemplo.com','1995-03-05','123.456.789-10',3), 
  ('Carlos Pereira','carlos.pereira@exemplo.com','1988-11-02','987.654.321-00',1), 
  ('Maria Souza','maria.souza@exemplo.com','2000-06-15','111.222.333-44',2); 

-- TELEFONES 
INSERT INTO telefone (numero, usuario_id, cliente_id) 
  VALUES ('41 99999-0001',1,NULL), ('11 98888-0002',2,NULL), 
  ('43 98877-1234',NULL,1), ('41 3333-4444',NULL,2), 
  ('11 97777-8888',NULL,3); 

-- SERVIÇOS 
INSERT INTO servico (nome, descricao, valor) 
  VALUES ('corte masculino','Corte de cabelo masculino padrão',35.00), 
  ('corte feminino','Corte feminino com finalização',60.00), 
  ('escova','Escova modeladora',50.00); 

-- AGENDAMENTOS 
INSERT INTO agendamento (data_hora, servico_id, funcionario_id, cliente_id, status) 
  VALUES ('2025-12-05 10:00:00',1,1,1,'ativo'), ('2025-12-20 15:30:00',2,1,2,'ativo'), 
  ('2025-11-10 09:00:00',1,1,3,'concluido'), ('2025-06-01 14:00:00',3,2,1,'cancelado'), 
  ('2025-07-08 11:00:00',1,1,2,'concluido'), ('2025-08-15 16:00:00',2,2,3,'cancelado');
