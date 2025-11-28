CREATE DATABASE jojoby;
USE jojoby;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50)
);

select * from usuario;
TRUNCATE usuario;

CREATE TABLE personagem (
	idPersonagem INT PRIMARY KEY AUTO_INCREMENT,
    nomePersonagem  VARCHAR(100),
    personalidade VARCHAR(255),
    tecnica VARCHAR(50),
    frase VARCHAR(255)
);


CREATE TABLE temporada (
	idTemporada INT PRIMARY KEY AUTO_INCREMENT,
    numeroTemporada INT,
    nomeTemporada VARCHAR(255),
    anoLancamento YEAR
);

CREATE TABLE personagem_temporada (
	idPersonagem INT,
    idTemporada INT,
    CONSTRAINT pkComposta_personagem PRIMARY KEY (idPersonagem, idTemporada),
    CONSTRAINT fkpersonagem FOREIGN KEY (idPersonagem) REFERENCES personagem(idPersonagem),
    CONSTRAINT fktemporada FOREIGN KEY (idTemporada) REFERENCES temporada(idTemporada)
);

CREATE TABLE habilidade (
	idHabilidade INT PRIMARY KEY AUTO_INCREMENT,
    fkPersonagem INT NOT NULL, 
    nomeHabilidade VARCHAR(255),
    descricaoHabilidade VARCHAR(300),
    CONSTRAINT fkHabilidade_personagem FOREIGN KEY (fkPersonagem) REFERENCES personagem(idPersonagem)
    );
    
CREATE TABLE stand (
	idStand INT PRIMARY KEY AUTO_INCREMENT, 
    fkPersonagem INT UNIQUE NOT NULL, 
    nomeStand VARCHAR(255),
    descricao VARCHAR(300),
    CONSTRAINT fkStand_personagem FOREIGN KEY (fkPersonagem) REFERENCES personagem(idPersonagem)
);





INSERT INTO personagem (nomePersonagem, personalidade, tecnica, frase) VALUES 
('Jonathan Joestar', 'Orgulhoso, Travesso, Gentil', 'Hamon', 'Eu me esforço para ser um verdadeiro cavalheiro! Há momentos em que um cavalheiro tem que ser corajoso e lutar, mesmo quando seu oponente é maior do que ele e ele sabe que vai perder!'),
('Joseph Joestar', 'Impetuoso, Conflituoso, Brincalhão, Franco', 'Stand', 'Olá? Pode dizer aquilo de novo? Mais devagar? Em um idioma que eu entendo?'),
('Jotaro Kujo', 'Rude, Violento, Leal, Perspicaz, Inteligente', 'Stand', 'Yare Yare Daze'),
('Josuke Higashikata', 'Cabeça Quente, Bondade, Extrovertido, Amigável', 'Stand', 'Com licença... O que você disse sobre o meu cabelo?!'),
('Giorno Giovanna', 'Ambicioso, Confiante, Introvertido, Carisma', 'Stand', 'Eu, Giornon Giovanna, tenho um sonho que sei que é justo'),
('Jolyne Cujoh', 'Mal-Humorada, Corajosa, Confiante, Determinada','Stand', 'Dois homens olham pelas mesmas grades, um vê a parede e o outro, estrelas... Qual deles eu sou? Claro que vou ver as estrelas... até ver meu pai, quero continuar olhando para as estrelas.' ),
('Johnny Joestar','Depressivo, Amargurado', 'Spin, Stand', 'Tem sido verdadeiramente, verdadeiramente ... um caminho muito longo ...'),
('Gyro Zeppeli', 'Arrogante, Rude', 'Spin', 'Nyo-ho ho ho'),
('Josuke Higashikata', 'Manipulador, Educado, Humorista', 'Stand', 'Vou retomar o passado que perdi!'),
('Jodio Joestar', 'Ambicioso, Anti-Social', 'Stand', 'Estou ficando rico, não importa o que seja preciso!'),
('Rohan Kishibe', 'Dedicado, Curioso, Grosseiro, Impetuoso, Indelicado', 'Stand', 'Você achou que o grande Rohan Kishibe desenha quadrinhos porque quer dinheiro?! Eu desenho quadrinhos porque EU QUERO SER LIDO! Essa é a única razão. Eu não poderia me importar menos com qualquer outra coisa!'),
('Dio Brando', 'Manipulador, Violento, Egoísta, Arrogante', 'Stand', 'Eu rejeito minha humanidade! Jojo! Eu transcenderei a humanidade!'),
('Kars', 'Inteligente, Ambicioso, Sensato, Observador', NULL, '	Não tenho nenhum espírito romântico, nem quero me tornar um guerreiro como Wamuu... porque o método não é importante. Tudo o que importa... é obter a vitória final!'),
('Yoshikage Kira','Egocêntrico, Alegre, Confiante, Inteligente' ,'Stand', 'Para mim, não se trata realmente de ganhar ou perder. Eu quero uma vida pacífica.'),
('Diavolo', 'Orgulhoso, Confiante, Sortudo', 'Stand','O passado... mesmo quando você o quebra em pedaços e o sepulta em pedra, ele rasteja como um verme.'),
('Enrico Pucci', 'Simpático, Imoral, Reservado, Confiante', 'Stand','2...3...5...7...11...13...17...19.... Calma... Conte números primos para manter a compostura... Números primos são números solitários que só podem ser divididos por 1 e por si mesmos... eles me dão força...'),
('Funny Valentine','Patriota, Insensível, Egocentrico, Cuidadoso, Observador', 'Stand', 'Como presidente, é meu dever juramentado! Neste mundo, para garantir a segurança do povo do meu país. É a isso que tudo se resume!'),
('Toru', 'Insensível, Misterioso, Apatia', 'Stand', 'Quando tudo acabar, tudo o que restará... são sonhos e memórias. Isso é tudo.'),
('Acca Howler', 'Narcisista, Antiético', 'Stand', NULL),
('Anthonio Zeppeli', 'Destemido, Confiante, Corajoso, Justo', 'Hamon', 'O que é "coragem"? "Coragem" é conhecer o medo e fazer esse medo seu!'),
('Speedwagon', 'Justo, Leal, Gentil, Ansioso, Impulsivo', NULL, 'Seu rosto parece perguntar "Quem é esse?", então deixe-me me apresentar! Eu sou o Speedwagon intrometido'),
('Lisa Lisa','Digna, Distante, Estóica', 'Hamon', 'Não estou te ensinando a Onda para salvar sua vida. Estou ensinando vocês a se tornarem guerreiros capazes de derrotá-los... Só isso.'),
('Noriaki Kakyoin','Corajoso, Cruel, Justo', 'Stand', 'Eu nem sei o que me motiva a ir junto, mas... digamos que você abriu meus olhos... Só isso.'),
('Muhammad Avdol', 'Sério, Responsável, Justo', 'Stand', 'Polnareff! Iggy! Cuidado!'),
('Iggy', 'Inteligente, Indisciplinado, Orgulhoso, Apático, Independente', 'Stand', 'Cale a boca! Não me pergunte! Eu sou um cachorro! Não posso falar! O que você é,?'),
('Koichi Hirose', 'Amável, Manso, Simpatico, Gentil', 'Stand', 'Caso esteja se perguntando, meu nome é Koichi Hirose (embora acho que não é tão importante assim). Enfim, eu estava nervosamente indo para a aula... até conhecer aqueles dois caras bem estranhos.'),
('Okuyasu Nijimura', 'Impulsivo, Violento, Imaturidade, Extrovertido, Impulsivo', 'Stand','Parece um lugar legal, né? Sempre gostei de design italiano e coisas do tipo.'),
('Bruno Bucciarati','Violento, Bondade, Determinado, Leal', 'Stand', 'Mesmo neste mundo podre, ainda quero trilhar um caminho em que acredito!'),
('Pannacotta Fugo', 'Carinhoso, Sério, Impulsivo, Violento', 'Stand', 'Gostaria de pedir um espaguete para esse homem, se não se importar!'),
('Trish Una', 'Mimada, Egoísta', 'Stand', 'Eu também... pode superar... o destino que herdei de você... Não vou me acolher nem fugir! Se tentar me impedir... Eu voarei além de você.'),
('Ermes Costello', 'Teimosa, Independente, ', 'Stand', 'A vingança é por acertar as contas com seu próprio destino!'),
('Narciso Anasui', 'Protetor, Ousado, Confiante', 'Stand','Eu me apaixonei por ela. Desde a primeira vez que a vi, completamente.');


SELECT idPersonagem, nomePersonagem FROM personagem;

INSERT INTO temporada (numeroTemporada, nomeTemporada, anoLancamento) VALUES 
(1, 'Phanton  Blood', '1987'),
(2, 'Battle Tendency', '1989'),
(3, 'Stardust Crusaders', '1992'),
(4, 'Diamond is Unbreakable', '1995'),
(5, 'Vento Aureo', '1999'),
(6, 'Stone Ocean', '2003'),
(7, 'Steel Ball Run', '2011'),
(8, 'JoJolion', '2021'),
(9, 'JoJoLands', '2023');
INSERT INTO personagem_temporada (idPersonagem, idTemporada) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 7),
(9, 8),
(10, 9),
(11, 3),
(12, 1),
(13, 1),
(14, 4),
(15, 5),
(16, 6),
(17, 7),
(18, 8),
(19, 8),
(20, 2),
(21, 1),
(22, 2),
(23, 3),
(24, 3),
(25, 3),
(26, 4),
(27, 4),
(28, 5),
(29, 5),
(30, 6),
(31, 6),
(32, 9);




INSERT INTO stand (fkPersonagem, nomeStand, descricao) VALUES 
(2, 'Hermit Purple', 'Hermit Purple é um Stand parecido com uma videira que Joseph invoca em suas mãos. Ele permite que seu usuário adivinhe informações e mensagens de outros locais.'),
(3, 'Star Platinum', 'Star Platinum é um Stand de curta distância com força e velocidade excepcionais, além de ganhar a habilidade de parar o tempo durante a luta contra DIO. Seu poder esmagador, aliado à habilidade de luta de Jotaro, faz dele um dos Stands mais fortes e icônicos da série.'),
(25, 'Magicians Red', 'O Vermelho do Mago é um Stand humanóide cuja aparência é a de um híbrido pássaro-humano, com a habilidade de produzir e manipular fogo de várias maneiras.'),
(24, 'Hierophant Green', 'O primeiro Stand de longo alcance revelado na série, Hierophant Green luta à distância e é capaz de se desfazer em tentáculos e liberar uma brilhante explosão de esmeraldas conhecida como Emerald Splash.'),
(26, 'The Fool', 'The Fool é um Stand preso a uma massa de areia que geralmente apresenta a aparência de uma fera mecânica. Iggy empunha o The Fool para criar construtos de areia em batalha.'),
(12, 'The World', 'Um Stand extremamente poderoso que controla o tempo e é empunhado por um usuário igualmente poderoso, The World é um Stand esotérico, tanto reverenciado quanto temido por quase todos os personagens de Stardust Crusaders.'),
(4, 'Crazy Diamond', 'Um Stand poderoso com força comparável à Star Platinum, possui a habilidade de curar ou reparar objetos e/ou pessoas.'),
(28, 'The Hand', 'É um Stand musculoso e humanoide cuja habilidade é apagar tudo que sua palma direita toca.'),
(27, 'Echoes', 'Echos tem a habilidade incomum de assumir três formas distintas, ACT1, ACT2 e ACT3, que Koichi pode invocar alternadamente. Cada forma permite o uso de uma habilidade diferente, como gerar efeitos sonoros ou aplicar peso em um alvo.'),
(11, 'Heaven Door', 'É um pequeno Stand humanoide que transforma pessoas em livros para Rohan ler.'),
(14, 'Killer Queen', 'Killer Queen é um Stand humanoide musculoso com traços felinos. Suas habilidades giram todas em torno de bombas, cujas explosões são capazes de atomizar pessoas.'),
(5, 'Gold Experience', 'É um Stand do tipo poder de curto alcance, com a habilidade de criar vida a partir de material inanimado.'),
(29, 'Sticky Fingers', 'Sticky Fingers é um Stand humanoide de curto alcance que pode criar zíperes em qualquer superfície.'),
(30, 'Purple Haze', 'Purple Haze é um feroz Stand humanoide que armazena um vírus mortal devorador de carne nas cápsulas de suas mãos.'),
(31, 'Spice Girl', 'É um Stand humanoide de aparência feminina, com o poder de amolecer qualquer objeto que toca, conferindo-lhes propriedades semelhantes a borracha.'),
(6, 'Stone Free', 'Stone Free geralmente se manifesta como a habilidade de Jolyne de desfazer seu corpo em fios, mas no fim das contas tem uma forma base de um poderoso Stand humanoide de curta distância.'),
(32, 'Kiss', 'É um Stand humanoide de curto alcance que cria adesivos. Quando um adesivo é colado em um objeto, ele cria uma duplicata. Quando o adesivo é removido, os dois objetos se fundem novamente, causando danos severos.'),
(16, 'Whitesnake', 'Whitesnake possui a habilidade de criar ilusões e manipular a psique de uma pessoa em dois tipos de DISCs, dos quais podem ser extraídos principalmente e inseridos na mente de outra pessoa, permitindo que vejam as memórias do dono do DISC ou usem seu Stand.'),
(7, 'Tusk', 'As habilidades de Tusk estão intimamente ligadas ao fenômeno sobrenatural conhecido como Spin. Assim como em Echoes, Tusk desenvolve várias formas diferentes, ou "ACTs", que se baseiam nessa conexão à medida que Johnny amadurece e aprimora sua técnica.'),
(8, 'Ball Breaker', 'Quando um usuário de Ball Breaker com experiência acumulada executa a técnica de arremesso definitiva da Família Zeppeli, uma visualização da energia Spin é produzida com poder comparável ao de um Stand. Essa habilidade é capaz de contornar dimensões e acelerar a vida.'),
(17, 'Dirty Deeds Done Dirt Cheap', 'D4C é um Stand humanoide que permite ao usuário passar para mundos paralelos à vontade e puxar pessoas deles de volta para seu mundo. Com exceção do próprio Funny Valentine, se uma pessoa entrar em contato consigo mesma vinda de um mundo alternativo, ambas serão destruídas.'),
(9, 'Soft & Wet', 'Ele cria bolhas de sabão que podem roubar propriedades e objetos e, por meio de habilidades herdadas de Yoshikage Kira, explodir com um Giro explosivo.'),
(18, 'Wonker of U', 'É um Stand senciente que atua como diretor do Hospital Universitário TG usando esse nome Satoru Akefu, se passando pela identidade de um profissional médico aposentado. Ele é capaz de causar uma calamidade a qualquer pessoa que persiga ou trabalhe contra ele ou contra seu usuário.'),
(10, 'November Rain', 'Ele tem a habilidade de invocar chuvas que Jodio pode selecionar para tornar esmagadoramente pesadas.'),
(19, 'Acca Howler Stand', NULL); 

    
INSERT INTO habilidade (fkPersonagem, nomeHabilidade, descricaoHabilidade) VALUES
(1, 'Overdrive', 'Ataque com Punho'),
(1, 'Zoom Punch', 'O ataque envolve uma técnica de respiração ondulada que desloca e estica as articulações para estender o braço e dar maior alcance, enquanto também usa a mesma ondulação para amortecer a dor causada pelo movimento.'),
(1, 'Ripple Overdrive', 'Jonathan carrega uma onda Ondulação pelo braço e a libera em um objeto sólido, como uma parede ou divisória. A Ondulação pode atravessar e alcançar qualquer coisa do outro lado, e qualquer coisa atingida pela Ondulação é lançada em espiral.'),
(20, 'Ripple Hypnosis', 'Caesar pode hipnotizar pessoas e animais usando a Onda sobre eles. O processo pode envolver um beijo ou simplesmente tocar a cabeça com as mãos. A pessoa hipnotizada agirá conforme suas exigências e será mais forte que um ser comum, sendo imbuída com a Ondulação.'),
(20, 'Bubble Launcher', 'Caesar dispara uma saraivada de bolhas de suas luvas, cada uma coberta pela Ondulação. Isso aumenta a densidade das bolhas e permite que elas atinjam objetos com maior impacto. Quando atingido pela rajada, um homem adulto seria completamente levado pelo vento.');


select idPersonagem, nomePersonagem FROM personagem ORDER BY idPersonagem;

SELECT p.nomePersonagem AS 'Nome do Personagem',
	p.personalidade AS 'Principais Caracteristicas',
    p.tecnica AS 'Tipo de Técnica que o Personagem Usa',
    s.nomeStand AS 'Nome Do Stand',
    s.descricao AS 'Descricao Do Stand',
    h.nomeHabilidade AS 'Nome da Habilidade',
    h.descricaoHabilidade AS 'Descrição da Habilidade',
    p.frase AS 'Frase famosa do Personagems',
    t.numeroTemporada AS 'Número da Temporada',
    t.nomeTemporada AS 'Nome da Temporada',
    t.anoLancamento AS 'Ano de lancamento'
    FROM personagem AS p 
    LEFT JOIN stand AS s ON s.fkPersonagem = p.idPersonagem
    LEFT JOIN habilidade AS h ON h.fkPersonagem = p.idPersonagem
    LEFT JOIN personagem_temporada AS pt ON p.idPersonagem = pt.idPersonagem
    LEFT JOIN temporada AS t ON pt.idTemporada = t.idTemporada;
    
SELECT p.nomePersonagem,
	s.nomeStand,
    t.nomeTemporada
    FROM personagem AS p
    JOIN temporada AS t
    JOIN stand AS s ON s.fkPersonagem = p.idPersonagem
    JOIN personagem_temporada AS pt ON p.idPersonagem = pt.idPersonagem;
    
    SELECT 
    p.idPersonagem,
    p.nomePersonagem,
	s.nomeStand,
    h.nomeHabilidade,
    MAX(t.nomeTemporada),
    MAX(t.idTemporada)
    FROM personagem AS p
    LEFT JOIN stand AS s ON s.fkPersonagem = p.idPersonagem
    LEFT JOIN personagem_temporada AS pt ON pt.idPersonagem = p.idPersonagem
    LEFT JOIN temporada AS t ON t.idTemporada = pt.idTemporada
    LEFT JOIN habilidade AS h ON h.fkPersonagem = p.idPersonagem
    GROUP BY  p.idPersonagem
    ;
    
    SELECT personagem.nomePersonagem,
		temporada.nomeTemporada
        FROM personagem JOIN personagem_temporada AS pt ON personagem.idPersonagem = pt.idPersonagem
        JOIN temporada ON pt.idTemporada = temporada.idTemporada
        WHERE pt.idTemporada = 3;
    
    
    SELECT 
    p.idPersonagem,
    p.nomePersonagem,
    CASE
		WHEN p.tecnica IS NULL THEN ""
        ELSE p.tecnica
	END AS Tecnica,
	CASE
		WHEN s.nomeStand IS NULL THEN ""
        ELSE s.nomeStand
	END AS nomeStand,
    CASE 
		WHEN h.nomeHabilidade IS NULL THEN "Este Personagem já usuário Stand"
        ELSE h.nomeHabilidade
	END AS nomeHabilidade
FROM personagem AS p
LEFT JOIN stand AS s 
    ON s.fkPersonagem = p.idPersonagem
LEFT JOIN personagem_temporada AS pt 
    ON pt.idPersonagem = p.idPersonagem
LEFT JOIN temporada AS t 
    ON t.idTemporada = pt.idTemporada
LEFT JOIN habilidade AS h 
    ON h.fkPersonagem = p.idPersonagem
GROUP BY p.idPersonagem;


SELECT 
    p.idPersonagem,
    p.nomePersonagem,

    CASE
        WHEN p.tecnica IS NULL THEN 'Este personagem não possui técnicas Hamon ou Stand'
        ELSE p.tecnica
    END AS tecnica,

    CASE
        WHEN MAX(s.nomeStand) IS NULL THEN ''
        ELSE MAX(s.nomeStand)
    END AS nomeStand,

    CASE 
        WHEN MAX(h.nomeHabilidade) IS NULL THEN ''
        ELSE GROUP_CONCAT(DISTINCT h.nomeHabilidade)
    END AS habilidades,

    GROUP_CONCAT(DISTINCT t.nomeTemporada ORDER BY t.idTemporada) AS temporadas,
    GROUP_CONCAT(DISTINCT t.idTemporada ORDER BY t.idTemporada) AS idsTemporadas

FROM personagem AS p
LEFT JOIN stand AS s 
    ON s.fkPersonagem = p.idPersonagem
LEFT JOIN personagem_temporada AS pt 
    ON pt.idPersonagem = p.idPersonagem
LEFT JOIN temporada AS t 
    ON t.idTemporada = pt.idTemporada
LEFT JOIN habilidade AS h 
    ON h.fkPersonagem = p.idPersonagem

GROUP BY p.idPersonagem;


SELECT 
    p.idPersonagem,
    p.nomePersonagem,
    CASE
        WHEN p.tecnica IS NULL THEN ''
        ELSE p.tecnica
    END AS tecnica,
    CASE
        WHEN MAX(s.nomeStand) IS NULL THEN ''
        ELSE MAX(s.nomeStand)
    END AS nomeStand,
    CASE
        WHEN MAX(h.nomeHabilidade) IS NULL THEN 'Este Personagem já usuário Stand'
        ELSE GROUP_CONCAT(DISTINCT h.nomeHabilidade)
    END AS nomeHabilidade,
    GROUP_CONCAT(DISTINCT t.nomeTemporada) AS temporadas,
    GROUP_CONCAT(DISTINCT t.idTemporada) AS idsTemporadas
FROM personagem AS p
LEFT JOIN stand AS s 
    ON s.fkPersonagem = p.idPersonagem
LEFT JOIN personagem_temporada AS pt 
    ON pt.idPersonagem = p.idPersonagem
LEFT JOIN temporada AS t 
    ON t.idTemporada = pt.idTemporada
LEFT JOIN habilidade AS h 
    ON h.fkPersonagem = p.idPersonagem
GROUP BY p.idPersonagem;

CREATE TABLE quiz (
	idquiz INT PRIMARY KEY AUTO_INCREMENT,
    tituloQuiz VARCHAR(45)
);

CREATE TABLE pergunta(
	idpergunta INT PRIMARY KEY AUTO_INCREMENT,
    fkquiz INT, 
    descricao VARCHAR(255),
    CONSTRAINT fkpergunta_quiz FOREIGN KEY (fkquiz) REFERENCES quiz(idquiz)
);

CREATE TABLE resultado (
	idusuario INT,
    idquiz INT,
    pontuacao INT,
    CONSTRAINT pkcomposta PRIMARY KEY (idusuario, idquiz),
    CONSTRAINT fkusuario FOREIGN KEY (idusuario) REFERENCES usuario(id),
    CONSTRAINT fkquiz FOREIGN KEY (idquiz) REFERENCES quiz(idquiz)
);
 select * from resultado;
CREATE TABLE resposta (
	idresposta INT PRIMARY KEY AUTO_INCREMENT,
    fkpergunta INT,
    opcao CHAR(1),
    descricao VARCHAR(255),
    validacao TINYINT,
    CONSTRAINT fkresposta_pergunta FOREIGN KEY (fkpergunta) REFERENCES pergunta(idpergunta)
);

INSERT INTO quiz (tituloQuiz) VALUES
('Será que você realmente sabe sobre Jojo?');

INSERT INTO pergunta (idpergunta,fkquiz, descricao) VALUES
(1, 1, 'Em qual das partes do anime os stands são introduzidos?'),
(2, 1, 'Qual poder era explorado pela série antes da introdução dos stands?'),
(3, 1, 'Qual era o nome do pai de Jonathan Joestar, primeiro JoJo?'),
(4, 1, 'Onde se passa o início de Battle Tendency, segunda parte do anime?'),
(5, 1, 'Qual o nome da moça com que Joseph Joestar se casa ao fim de Battle Tendence?'),
(6, 1, 'Qual o nome da filha de Suzie e Joseph que dá a luz a Jotaro, terceiro protagonista do anime?'),
(7, 1, 'De quem Josuke Higashikata, quarto protagonista de JoJo, é filho?'),
(8, 1, 'Qual o nome do stand de Giorno Giovanna, quinto protagonista de JoJo?');

INSERT INTO resposta (fkpergunta, opcao, descricao, validacao) VALUES
(1, 'A', 'Diamond is unbreakable', 0),
(1, 'B', 'Stardust Crusaders', 1),
(1, 'C', 'Golden Wind', 0),
(1, 'D', 'Stone Ocean', 0),
(2, 'A', 'Hamon', 1),
(2, 'B', 'Telecinese', 0),
(2, 'C', 'Controle Elemental', 0),
(2, 'D', 'Força Física', 0),
(3, 'A', 'Joseph', 0),
(3, 'B', 'Dino', 0),
(3, 'C', 'Wilsom', 0),
(3, 'D', 'George', 1),
(4, 'A', 'Inglaterra', 0),
(4, 'B', 'Estados Unidos', 1),
(4, 'C', 'Japão', 0),
(4, 'D', 'Alemanha', 0),
(5, 'A', 'Suzie Q', 1),
(5, 'B', 'Motoko', 0),
(5, 'C', 'Lisa Lisa', 0),
(5, 'D', 'Erine', 0),
(6, 'A', 'Rachel', 0),
(6, 'B', 'Holly', 1),
(6, 'C', 'Halie', 0),
(6, 'D', 'Roberta', 0),
(7, 'A', 'Jotaro Kujo', 0),
(7, 'B', 'Joseph Joestar', 1),
(7, 'C', 'Dio Brando', 0),
(7, 'D', 'Jolyne Kujo', 0),
(8, 'A', 'Vento Aureo', 0),
(8, 'B', 'Metálica', 0),
(8, 'C', 'Golden Experience', 1),
(8, 'D', 'The World', 0);

select * from resposta;

desc resultado;


CREATE TABLE selecao (
	idselecao INT PRIMARY KEY AUTO_INCREMENT,
    fkusuario INT,
    fkpersonagem INT,
    fktemporada INT,
    CONSTRAINT fkselecao_usuario FOREIGN KEY (fkusuario) REFERENCES usuario(id),
    CONSTRAINT fkselecao_personagem FOREIGN KEY (fkpersonagem) REFERENCES personagem(idpersonagem),
    CONSTRAINT fkselecao_temporada FOREIGN KEY (fktemporada) REFERENCES temporada(idtemporada)
);
desc selecao;
select * from selecao;