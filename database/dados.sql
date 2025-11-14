INSERT INTO PROVA (titulo, descricao, data_aplicacao, tam_fonte, modo_alto_contraste, uma_questao_por_pagina) 
VALUES 
('Prova de Matemática', 'Prova de Matemática com questões de álgebra e geometria.', '2025-05-01', 14, TRUE, FALSE),
('Prova de História', 'Prova de História com foco em acontecimentos do século XIX.', '2025-06-01', 16, FALSE, TRUE),
('Prova de Ciências', 'Prova de Ciências abordando biologia e física.', '2025-07-01', 18, FALSE, FALSE);

INSERT INTO QUESTAO (id_prova, ordem, enunciado, tipo, pontuacao) 
VALUES
(1, 1, 'Qual é a solução da equação 2x + 3 = 7?', 'Múltipla escolha', 1.00),
(1, 2, 'Qual é a fórmula da área do círculo?', 'Múltipla escolha', 1.50),
(2, 1, 'Quem foi o imperador romano durante a maior parte do século I?', 'Múltipla escolha', 2.00);

INSERT INTO OPCAO (id_questao, rotulo, texto, is_correta) 
VALUES
(1, 'A', 'x = 2', TRUE),
(1, 'B', 'x = 3', FALSE),
(1, 'C', 'x = 1', FALSE),
(1, 'D', 'x = 4', FALSE),
(2, 'A', 'πr²', TRUE),
(2, 'B', '2πr', FALSE),
(2, 'C', '4πr²', FALSE),
(2, 'D', 'πd', FALSE),
(3, 'A', 'Nero', FALSE),
(3, 'B', 'Júlio César', FALSE),
(3, 'C', 'Augusto', TRUE),
(3, 'D', 'Constantino', FALSE);

