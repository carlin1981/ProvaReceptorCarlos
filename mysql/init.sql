-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS bdgaleria;

-- Uso do banco de dados
USE bdgaleria;

-- Criação da tabela 'obradearte'
CREATE TABLE IF NOT EXISTS obradearte (
    obra_id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    artista VARCHAR(100) NOT NULL,
    ano_criacao YEAR NOT NULL,
    descricao TEXT NOT NULL,
    valor_estimado DECIMAL(15, 2) NOT NULL,
    status_disponibilidade INT NOT NULL,
    categoria VARCHAR(50) NOT NULL
);

-- Inserção dos dados na tabela 'obradearte'
INSERT IGNORE INTO obradearte (titulo, artista, ano_criacao, descricao, valor_estimado, status_disponibilidade, categoria)
VALUES
('Mona Lisa', 'Leonardo da Vinci', 1503, 'Retrato de uma mulher com um sorriso enigmático.', 870000000.00, 1, 'Retrato'),
('O Grito', 'Edvard Munch', 1893, 'Representação expressionista do desespero humano.', 120000000.00, 1, 'Expressionismo'),
('A Noite Estrelada', 'Vincent van Gogh', 1889, 'Céu noturno turbulento sobre uma vila.', 100000000.00, 1, 'Paisagem'),
('Guernica', 'Pablo Picasso', 1937, 'Obra icônica contra a guerra e violência.', 200000000.00, 0, 'Modernismo'),
('O Beijo', 'Gustav Klimt', 1907, 'Representação simbólica de amor e erotismo.', 150000000.00, 1, 'Simbolismo'),
('David', 'Michelangelo', 1504, 'Escultura renascentista de um jovem herói bíblico.', 500000000.00, 0, 'Escultura'),
('A Persistência da Memória', 'Salvador Dalí', 1931, 'Relógios derretendo em um cenário onírico.', 80000000.00, 1, 'Surrealismo'),
('As Meninas', 'Diego Velázquez', 1656, 'Cena de um grupo de figuras em um palácio.', 150000000.00, 0, 'Barroco'),
('O Jardim das Delícias Terrenas', 'Hieronymus Bosch', 1505, 'Tríptico explorando temas de pecado e salvação.', 200000000.00, 0, 'Renascimento'),
('A Criação de Adão', 'Michelangelo', 1512, 'Detalhe do teto da Capela Sistina.', 450000000.00, 0, 'Renascimento'),
('Campbell\'s Soup Cans', 'Andy Warhol', 1962, 'Série que representa latas de sopa Campbell.', 15000000.00, 1, 'Pop Art'),
('O Nascimento de Vênus', 'Sandro Botticelli', 1486, 'Representação renascentista do mito de Vênus.', 300000000.00, 1, 'Renascimento'),
('A Última Ceia', 'Leonardo da Vinci', 1498, 'Cena bíblica do momento em que Jesus anuncia a traição.', 400000000.00, 0, 'Renascimento'),
('A Liberdade Guiando o Povo', 'Eugène Delacroix', 1830, 'Símbolo do romantismo e da revolução francesa.', 120000000.00, 1, 'Romantismo'),
('Noite de Verão', 'Edvard Munch', 1890, 'Paisagem expressionista com reflexos na água.', 50000000.00, 1, 'Expressionismo');


-- Criação da tabela 'usuario'
CREATE TABLE IF NOT EXISTS usuario (
    usuario_id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_nome VARCHAR(100) NOT NULL,
    usuario_sobrenome VARCHAR(100) NOT NULL,
    usuario_cpf VARCHAR(11) NOT NULL UNIQUE,
    usuario_email VARCHAR(100) NOT NULL UNIQUE,
    usuario_senha VARCHAR(100) NOT NULL,
    usuario_endereco VARCHAR(255) NOT NULL,
    usuario_telefone VARCHAR(15) NOT NULL,
    usuario_status INT NOT NULL
);

-- Inserção dos dados na tabela 'usuario'
INSERT IGNORE INTO usuario (usuario_nome, usuario_sobrenome, usuario_cpf, usuario_email, usuario_senha, usuario_endereco, usuario_telefone, usuario_status)
VALUES
('João', 'Silva', '12345678901', 'joao.silva@email.com', 'senha123', 'Rua A, 100', '(11) 99999-0001', 1),
('Maria', 'Oliveira', '23456789012', 'maria.oliveira@email.com', 'senha123', 'Rua B, 200', '(11) 99999-0002', 1),
('Carlos', 'Santos', '34567890123', 'carlos.santos@email.com', 'senha123', 'Rua C, 300', '(21) 98888-0003', 1),
('Ana', 'Pereira', '45678901234', 'ana.pereira@email.com', 'senha123', 'Rua D, 400', '(21) 98888-0004', 1),
('Fernanda', 'Costa', '56789012345', 'fernanda.costa@email.com', 'senha123', 'Rua E, 500', '(31) 97777-0005', 1),
('Roberto', 'Almeida', '67890123456', 'roberto.almeida@email.com', 'senha123', 'Rua F, 600', '(31) 97777-0006', 1),
('Paula', 'Lima', '78901234567', 'paula.lima@email.com', 'senha123', 'Rua G, 700', '(41) 96666-0007', 1),
('Bruno', 'Ribeiro', '89012345678', 'bruno.ribeiro@email.com', 'senha123', 'Rua H, 800', '(41) 96666-0008', 1),
('Juliana', 'Martins', '90123456789', 'juliana.martins@email.com', 'senha123', 'Rua I, 900', '(51) 95555-0009', 1),
('Gustavo', 'Barbosa', '01234567890', 'gustavo.barbosa@email.com', 'senha123', 'Rua J, 1000', '(51) 95555-0010', 1),
('Ricardo', 'Ferreira', '11234567890', 'ricardo.ferreira@email.com', 'senha123', 'Rua K, 1100', '(61) 94444-0011', 1),
('Mariana', 'Sousa', '21234567890', 'mariana.sousa@email.com', 'senha123', 'Rua L, 1200', '(61) 94444-0012', 1),
('Leandro', 'Rodrigues', '31234567890', 'leandro.rodrigues@email.com', 'senha123', 'Rua M, 1300', '(71) 93333-0013', 1),
('Camila', 'Azevedo', '41234567890', 'camila.azevedo@email.com', 'senha123', 'Rua N, 1400', '(71) 93333-0014', 1),
('Felipe', 'Carvalho', '51234567890', 'felipe.carvalho@email.com', 'senha123', 'Rua O, 1500', '(81) 92222-0015', 1),
('Bianca', 'Souza', '61234567890', 'bianca.souza@email.com', 'senha123', 'Rua P, 1600', '(81) 92222-0016', 1),
('André', 'Mendes', '71234567890', 'andre.mendes@email.com', 'senha123', 'Rua Q, 1700', '(91) 91111-0017', 1),
('Flávia', 'Teixeira', '81234567890', 'flavia.teixeira@email.com', 'senha123', 'Rua R, 1800', '(91) 91111-0018', 1),
('Eduardo', 'Gomes', '91234567890', 'eduardo.gomes@email.com', 'senha123', 'Rua S, 1900', '(51) 95555-0019', 1),
('Patrícia', 'Moura', '10123456789', 'patricia.moura@email.com', 'senha123', 'Rua T, 2000', '(31) 97777-0020', 1);