/* ============================================================  

====================   CONSULTAS   ==========================   
 
*/ -- 1) Dados completos dos clientes + endereço 
SELECT c.cliente_id, c.nome, c.email, c.data_nascimento, c.cpf,        
e.rua, e.numero, e.bairro, e.cidade, e.estado, e.cep 
FROM cliente c 
LEFT JOIN endereco e ON c.endereco_id = e.endereco_id; 

-- 2) Clientes + serviço dos agendamentos cancelados 
SELECT c.nome AS cliente_nome, c.email AS cliente_email,        
s.nome AS servico_nome, s.descricao AS servico_descricao,        
a.agendamento_id, a.data_hora 
FROM agendamento a 
JOIN cliente c ON a.cliente_id = c.cliente_id 
JOIN servico s ON a.servico_id = s.servico_id 
WHERE a.status = 'cancelado';

-- 3) Agendamentos de dezembro/2025 
SELECT a.data_hora, s.descricao AS servico_descricao 
FROM agendamento a 
JOIN servico s ON a.servico_id = s.servico_id 
WHERE a.data_hora >= '2025-12-01 00:00:00'   
AND a.data_hora < '2026-01-01 00:00:00'; 

-- 4) Agendamentos feitos por "Paulo Oliveira" 
SELECT a.data_hora, a.status, s.nome AS servico_nome, c.nome AS cliente_nome 
FROM agendamento a 
JOIN usuario u ON a.funcionario_id = u.usuario_id 
JOIN servico s ON a.servico_id = s.servico_id 
JOIN cliente c ON a.cliente_id = c.cliente_id 
WHERE u.nome = 'Paulo Oliveira'; 

-- 5) Clientes que já concluíram "corte masculino" 
SELECT DISTINCT c.nome, c.data_nascimento, e.rua, e.numero, e.bairro, e.cidade, e.estado, e.cep 
FROM cliente c 
JOIN agendamento a ON c.cliente_id = a.cliente_id 
JOIN servico s ON a.servico_id = s.servico_id 
LEFT JOIN endereco e ON c.endereco_id = e.endereco_id 
WHERE a.status = 'concluido'  
AND LOWER(s.nome) = 'corte masculino';
