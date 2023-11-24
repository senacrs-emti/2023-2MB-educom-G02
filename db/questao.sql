-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Nov-2023 às 16:17
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `questao`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `areaconhecimento`
--

CREATE TABLE `areaconhecimento` (
  `id` int(11) NOT NULL,
  `Nome` varchar(90) NOT NULL,
  `foto` varchar(90) DEFAULT NULL,
  `Questionario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `areaconhecimento`
--

INSERT INTO `areaconhecimento` (`id`, `Nome`, `foto`, `Questionario_id`) VALUES
(1, 'Ciências da Natureza', 'ciencias.PNG', 1),
(2, 'Ciências Humanas', 'humanas.PNG', 1),
(3, 'Linguagens', 'linguagensi.PNG', 1),
(4, 'Matemática', 'matematica.PNG', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `questionario`
--

CREATE TABLE `questionario` (
  `id` int(11) NOT NULL,
  `Nome` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `questionario`
--

INSERT INTO `questionario` (`id`, `Nome`) VALUES
(1, 'Enem');

-- --------------------------------------------------------

--
-- Estrutura da tabela `questoes`
--

CREATE TABLE `questoes` (
  `id` int(11) NOT NULL,
  `Pergunta` longtext DEFAULT NULL,
  `Area` varchar(90) DEFAULT NULL,
  `Nome` varchar(45) NOT NULL,
  `Foto` varchar(90) DEFAULT NULL,
  `Questionario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `questoes`
--

INSERT INTO `questoes` (`id`, `Pergunta`, `Area`, `Nome`, `Foto`, `Questionario_id`) VALUES
(0, '(Enem 2020). A Pesquisa Nacional por Amostra de Domicílios (Pnad) é uma pesquisa feita anualmente pelo IBGE, exceto nos anos em que há Censo. Em um ano, foram entrevistados 363 mil jovens para fazer um levantamento sobre suas atividades profissionais e/ou acadêmicas. Os resultados da pesquisa estão indicados no gráfico. ', '4', '', 'ftmat1.png', 1),
(1, '(ENEM - 2018) \r\n\r\n       A Transferência Eletrônica Disponível (TED) é uma transação financeira de valores entre diferentes bancos. Um economista decide analisar os valores enviados por meio de TEDs entre cinco bancos (1, 2, 3, 4 e 5) durante um mês. Para isso, ele dispõe esses  valores em uma matriz A = [aij], em que 1≤i≤5\r\n1≤�≤5\r\n e 1≤j≤5\r\n1≤�≤5\r\n, e o elemento aij corresponde ao total proveniente das operações feitas via TED, em milhão de real, transferidos do banco i para o banco j durante o mês. Observe que os elementos aij = 0, uma vez que TED é uma transferência entre bancos distintos. Esta é a matriz obtida para essa análise: ', '4', '', 'ftmat2.png', 1),
(2, '(ENEM - 2010) \r\n\r\nA classificação de um país no quadro de medalhas nos jogos olímpicos depende do número de medalhas de ouro que obteve na competição, tendo como critérios de desempate o número de medalhas de prata seguido do número de medalhas de bronze conquistados. Nas Olimpíadas de 2004, o Brasil foi o décimo sexto colocado no quadro de medalhas, tendo obtido 5 medalhas de \r\nouro, 2 de prata e 3 de bronze. Parte desse quadro de medalhas é reproduzida a seguir. ', '4', '', 'ftmat3.png', 1),
(3, '(ENEM - 2010) \r\n\r\nA classificação de um país no quadro de medalhas nos jogos olímpicos depende do número de medalhas de ouro que obteve na competição, tendo como critérios de desempate o número de medalhas de prata seguido do número de medalhas de bronze conquistados. Nas Olimpíadas de 2004, o Brasil foi o décimo sexto colocado no quadro de medalhas, tendo obtido 5 medalhas de \r\nouro, 2 de prata e 3 de bronze. Parte desse quadro de medalhas é reproduzida a seguir. ', '4', '', 'ftmat3.png', 1),
(5, '(ENEM - 2016) \r\n\r\nEm uma empresa de móveis, um cliente encomenda um guarda-roupa nas dimensões 220 cm de altura, 120 cm de largura e 50 cm de profundidade. Alguns dias depois, o projetista, com o desenho elaborado na escala 1 : 8, entra em contato com o cliente para fazer sua apresentação. No momento da impressão, o profissional percebe que o desenho não caberia na folha de papel que costumava usar. Para resolver o problema, configurou a impressora para que a figura fosse reduzida em 20%. \r\n\r\n  \r\n\r\nA altura, a largura e a profundidade do desenho impresso para a apresentação serão, respectivamente, ', '4', '', '', 1),
(6, '(Enem 2017)  \r\n\r\nRaios de luz solar estão atingindo a superfície de um lago formando um ângulo x com a sua superfície, conforme indica a figura. Em determinadas condições, pode-se supor que a intensidade luminosa desses raios, na superfície do lago, seja dada aproximadamente por l(x) = k . sen(x)  sendo k uma constante, e supondo-se que x está entre 0° e 90°. ', '4', '', 'ftmat6.png', 1),
(7, '(ENEM - 2013) Para oferecer acessibilidade aos portadores de dificuldades de locomoção, é utilizado, em ônibus e automóveis, o elevador hidráulico. Nesse dispositivo é usada uma bomba elétrica, para forçar um fluido a passar de uma tubulação estreita para outra mais larga, e dessa forma acionar um pistão que movimenta a plataforma. Considere um elevador hidráulico cuja área da cabeça do pistão seja cinco vezes maior do que a área da tubulação que sai da bomba. Desprezando o atrito e considerando uma aceleração gravitacional de 10m/s2,  deseja-se elevar uma pessoa de 65 kg em uma cadeira de rodas de 15 kg sobre a plataforma de 20 kg.  \r\n\r\nQual deve ser a força exercida pelo motor da bomba sobre o fluido, para que o cadeirante seja elevado com velocidade constante? ', '1', '', '', 1),
(8, '(ENEM - 2013) Para oferecer acessibilidade aos portadores de dificuldades de locomoção, é utilizado, em ônibus e automóveis, o elevador hidráulico. Nesse dispositivo é usada uma bomba elétrica, para forçar um fluido a passar de uma tubulação estreita para outra mais larga, e dessa forma acionar um pistão que movimenta a plataforma. Considere um elevador hidráulico cuja área da cabeça do pistão seja cinco vezes maior do que a área da tubulação que sai da bomba. Desprezando o atrito e considerando uma aceleração gravitacional de 10m/s2,  deseja-se elevar uma pessoa de 65 kg em uma cadeira de rodas de 15 kg sobre a plataforma de 20 kg.  \r\n\r\nQual deve ser a força exercida pelo motor da bomba sobre o fluido, para que o cadeirante seja elevado com velocidade constante? ', '1', '', 'fisica2.png', 1),
(9, '(ENEM - 2013) Em um piano, o Dó central e a próxima nota Dó (Dó maior) apresentam sons parecidos, mas não idênticos. É possível utilizar programas computacionais para \r\nexpressar o formato dessas ondas sonoras em cada uma das situações como apresentado nas figuras, em que estão indicados intervalos de tempo idênticos (T). \r\nA razão entre as frequências do Dó central e do Dó maior é de: \r\n\r\nA protanopia é um tipo de daltonismo em que há diminuição ou ausência de receptores da cor vermelha. Considere um teste com dois voluntários: uma pessoa com visão normal e outra com caso severo de protanopia. Nesse teste, eles devem escrever a cor dos cartões que lhes são mostrados. São utilizadas as cores indicadas na figura. \r\n\r\n  \r\n\r\nPara qual cartão os dois voluntários identificarão a mesma cor? ', '1', '', 'fisica3.png', 1),
(10, '(Enem 2016) Durante a primeira fase do projeto de uma usina de geração de energia elétrica, os engenheiros da equipe de avaliação de impactos ambientais procuram saber se esse projeto está de acordo com as normas ambientais. A nova planta estará localizada a beira de um rio, cuja temperatura média da água é de 25 ºC, e usará a sua água somente para refrigeração. O projeto pretende que a usina opere com 1,0 MW de potência elétrica e, em razão de restrições técnicas, o dobro dessa potência será dissipada por seu sistema de arrefecimento, na forma de calor. Para atender a resolução número 430, de 13 de maio de 2011, do Conselho Nacional do Meio Ambiente, com uma ampla margem de segurança, os engenheiros determinaram que a água só poderá ser devolvida ao rio com um aumento de temperatura de, no máximo, 3 ºC em relação à temperatura da água do rio captada pelo sistema de arrefecimento. Considere o calor específico da água igual a 4kJ/(kg ºC). \r\n\r\nPara atender essa determinação, o valor mínimo do fluxo de água, em kg/s, para a refrigeração da usina deve ser mais próximo de ', '1', '', '', 1),
(11, '(ENEM 2014) Ao sintonizarmos uma estação de rádio ou um canal de TV em um aparelho, estamos alterando algumas características elétricas de seu circuito receptor. Das inúmeras ondas eletromagnéticas que chegam simultaneamente ao receptor, somente aquelas que oscilam com determinada frequência resultarão em máxima absorção de energia. \r\n\r\nO fenômeno descrito é a: ', '1', '', '', 1),
(12, '(ENEM - 2014) \r\n\r\nA liberação dos gases clorofluorcarbonos (CFCs) na atmosfera pode provocar depleção de ozônio (O3) na estratosfera. O ozônio estratosférico é responsável por absorver parte da radiação ultravioleta emitida pelo Sol, a qual é nociva aos seres vivos. Esse processo, na camada de ozônio, é ilustrado simplificadamente na figura. \r\nQuimicamente, a destruição do ozônio na atmosfera por gases CFCs é decorrência da ', '1', '', 'quim1.png', 1),
(13, '(ENEM - 2017) \r\n\r\nUm fato corriqueiro ao se cozinhar arroz é o derramamento de parte da água de cozimento sobre a chama azul do fogo, mudando-a para uma chama amarela. Essa mudança de cor pode suscitar interpretações diversas, relacionadas às substâncias presentes na água de cozimento. Além do sal de cozinha (NaCl) nela se encontram carboidratos, proteínas e sais minerais. \r\n\r\nCientificamente, sabe-se que essa mudança de cor da chama ocorre pela ', '1', '', '', 1),
(14, '(ENEM - 2015) \r\n\r\nA soda cáustica pode ser usada no desentupimento de encanamentos domésticos e tem, em sua composição, o hidróxido de sódio como principal componente, além de algumas impurezas. A soda normalmente é comercializada na forma sólida, mas que apresenta aspecto “derretido” quando exposta ao ar por certo período. \r\n\r\n  \r\n\r\nO fenômeno de “derretimento” decorre da ', '1', '', '', 1),
(15, '(ENEM - 2020) \r\n\r\nUm microempresário do ramo de cosméticos utiliza óleos essenciais e quer produzir um creme com fragrância de rosas. O principal componente do óleo de rosas tem cadeia poli-insaturada e hidroxila em carbono terminal. O catálogo dos óleos essenciais apresenta, para escolha da essência, estas estruturas químicas: \r\n\r\nQual substância o empresário deverá utilizar?  ', '1', '', 'quim4.png', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `resolucoes`
--

CREATE TABLE `resolucoes` (
  `id` int(11) NOT NULL,
  `correta` varchar(45) DEFAULT NULL,
  `descricao` longtext DEFAULT NULL,
  `AreaID` int(11) NOT NULL,
  `Questoes_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `resolucoes`
--

INSERT INTO `resolucoes` (`id`, `correta`, `descricao`, `AreaID`, `Questoes_id`) VALUES
(0, 'C', 'b) 164 076. \r\nc) 213 444. \r\nd) 284 592. \r\ne) 291 582. ', 4, 1),
(1, 'A', 'A) 1 \r\n\r\nB) 2. \r\n\r\nC) 3. \r\n\r\nD) 4. \r\n\r\nE) 5. ', 4, 2);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `areaconhecimento`
--
ALTER TABLE `areaconhecimento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_AreaConhecimento_Questionario_idx` (`Questionario_id`);

--
-- Índices para tabela `questionario`
--
ALTER TABLE `questionario`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `questoes`
--
ALTER TABLE `questoes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Questoes_Questionario1_idx` (`Questionario_id`);

--
-- Índices para tabela `resolucoes`
--
ALTER TABLE `resolucoes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Resolucoes_Questoes1_idx` (`Questoes_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `areaconhecimento`
--
ALTER TABLE `areaconhecimento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `areaconhecimento`
--
ALTER TABLE `areaconhecimento`
  ADD CONSTRAINT `fk_AreaConhecimento_Questionario` FOREIGN KEY (`Questionario_id`) REFERENCES `questionario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `questoes`
--
ALTER TABLE `questoes`
  ADD CONSTRAINT `fk_Questoes_Questionario1` FOREIGN KEY (`Questionario_id`) REFERENCES `questionario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `resolucoes`
--
ALTER TABLE `resolucoes`
  ADD CONSTRAINT `fk_Resolucoes_Questoes1` FOREIGN KEY (`Questoes_id`) REFERENCES `questoes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
