-- Inserir Usuários
INSERT INTO Usuario (Nome, Data_Nasc, Email, Senha, Bio)
VALUES 
('Ana Souza', '1995-06-15', 'ana@example.com', 'senha123', 'Gosta de eventos culturais.'),
('Carlos Lima', '1990-11-22', 'carlos@example.com', 'senha456', 'Apaixonado por tecnologia.'),
('Beatriz Dias', '2000-03-09', 'beatriz@example.com', 'senha789', 'Ama música ao vivo.');

-- Inserir Endereços
INSERT INTO Endereco (Logradouro, Numero, Bairro, Cidade, Estado, CEP)
VALUES 
('Rua das Flores', 123, 'Centro', 'São Paulo', 'SP', '01000-000'),
('Av. Brasil', 456, 'Jardins', 'Rio de Janeiro', 'RJ', '20000-000');

-- Inserir Eventos
INSERT INTO Evento (Nome, Descricao, Data, Categoria_Evento, ID_Endereco, ID_Usuario)
VALUES 
('Feira de Tecnologia', 'Evento com palestras e workshops sobre inovação.', '2025-05-10 10:00:00', 'Tecnologia', 1, 2),
('Festival de Música', 'Shows ao vivo com bandas locais.', '2025-06-20 18:00:00', 'Música', 2, 1);

-- Inserir Grupos
INSERT INTO Grupo (Nome, Descricao, ID_Evento)
VALUES 
('Entusiastas de IA', 'Grupo para debater inteligência artificial.', 1),
('Fãs de Rock', 'Grupo para curtir shows juntos.', 2);

-- Inserir Usuario_Grupo
INSERT INTO Usuario_Grupo (ID_Grupo, ID_Evento, ID_Usuario)
VALUES 
(1, 1, 2),  -- Carlos no grupo IA
(1, 1, 3),  -- Beatriz no grupo IA
(2, 2, 1),  -- Ana no grupo Rock
(2, 2, 3);  -- Beatriz no grupo Rock

-- Inserir Interesses
INSERT INTO Interesse (ID_Usuario, ID_Evento)
VALUES 
(1, 2),  -- Ana interessada no Festival
(3, 1);  -- Beatriz interessada na Feira

-- Inserir Mensagens
INSERT INTO Mensagem (ID_Usuario, ID_Grupo, ID_Evento, Texto, Data_Horario)
VALUES 
(2, 1, 1, 'Mal posso esperar pelo evento de IA!', '2025-04-21 09:00:00'),
(3, 1, 1, 'Vamos montar um carpool?', '2025-04-21 09:30:00'),
(1, 2, 2, 'Alguém sabe quem vai tocar?', '2025-04-21 10:00:00');

-- Inserir Denúncias
INSERT INTO Denuncia (ID_Evento, ID_Usuario, ID_Evento, Motivo)
VALUES 
(101, 3, 1, 'Comportamento inadequado no grupo.'),
(102, 1, 2, 'Conteúdo ofensivo em mensagem.');
