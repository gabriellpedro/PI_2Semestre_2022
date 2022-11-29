-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.24-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para bancolpv
CREATE DATABASE IF NOT EXISTS `bancolpv` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `bancolpv`;

-- Copiando estrutura para tabela bancolpv.books
CREATE TABLE IF NOT EXISTS `books` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `isbn10` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isbn13` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publisher` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creators` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `books_isbn10_unique` (`isbn10`),
  UNIQUE KEY `books_isbn13_unique` (`isbn13`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela bancolpv.books: ~196 rows (aproximadamente)
INSERT INTO `books` (`id`, `created_at`, `updated_at`, `isbn10`, `isbn13`, `category`, `publisher`, `name`, `creators`, `pages`) VALUES
	(1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550815551', '978-8550815558', 'Livros > Educação, Referência e Didáticos > Escolas e Ensino', 'Alta Books; 1ª edição (30 março 2021)', 'Responsabilidade extrema: Como os Navy Seals lideram e vencem', '(Autor), - Jocko Willink\n(Autor) - Leif Babin (Autor) › Visite a página de Leif Babin Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Leif Babin', 352),
	(2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8576088711', '978-8576088714', 'Livros > Administração, Negócios e Economia > Desenvolvimento de Negócios e Empreendedorismo', 'Alta Books; 1ª edição (12 fevereiro 2015)', 'O que a escola não nos ensina: Sete habilidades essenciais para uma vida de sucesso que você não aprende na escola.', '(Autor) - João Cristofolini (Autor) › Visite a página de João Cristofolini Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor João Cristofolini', 272),
	(3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550803669', '978-8550803661', 'Livros > Saúde e Família > Psicologia e Aconselhamento', 'Alta Books; 1ª edição (31 julho 2018)', 'Ideias que colam: por que algumas ideias pegam e outras não', '(Autor), - Chip Heath\n(Autor) - Dan Heath (Autor) › Visite a página de Dan Heath Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Dan Heath', 272),
	(4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550814385', '978-8550814384', 'Livros > Administração, Negócios e Economia > Gestão e Liderança', 'Alta Books; 1ª edição (30 dezembro 2020)', 'A organização sem medo: Criando segurança psicológica no local de trabalho para aprendizado, novação e crescimento: Volume 1', '(Autor) - Amy C. Edmondson', 256),
	(5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550801720', '978-8550801728', 'Livros > Administração, Negócios e Economia > Gestão e Liderança', 'Alta Books; 1ª edição (29 novembro 2017)', 'Indicadores de desempenho', '(Autor), - Andresa S. N. Francischini (Autor) › Visite a página de Andresa S. N. Francischini Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Andresa S. N. Francischini\n(Autor) - Paulino G. Franc', 448),
	(6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550801003', '978-8550801001', 'Livros > Política, Filosofia e Ciências Sociais > Governo e Política', 'Alta Books; Revista e atualizada edição (26 setembro 2017)', 'Pai rico em quadrinhos: como educar seus filhos para se tornarem ricos', '(Autor) - Robert Kiyosaki', 80),
	(7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8542209826', '978-8542209822', 'Livros > Literatura e Ficção > Drama', 'Outro Planeta; 1ª edição (30 março 2017)', 'Mil beijos de garoto (Sucesso do TikTok)', '(Autor) - Tillie Cole (Autor) › Visite a página de Tillie Cole Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Tillie Cole', 400),
	(8, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550815888', '978-8550815886', 'Livros > Administração, Negócios e Economia > Gestão e Liderança', 'Alta Books; 1ª edição (5 julho 2021)', 'Hábitos De Sucesso Para Leigos: Os Primeiros Passos Para o Sucesso - Edição de Bolso', '(Autor), - Dirk Zeller\n(Tradutor) - Eveline Vieira Machado', 256),
	(9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '853808979X', '978-8538089797', 'Livros > Infantil > Literatura', 'Ciranda Cultural; 1ª edição (13 fevereiro 2019)', '365 atividades com unicórnios', '(Autor) - Ciranda Cultural', 288),
	(10, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8547000240', '978-8547000240', 'Livros > Saúde e Família > Psicologia e Aconselhamento', 'Objetiva; 1ª edição (24 janeiro 2017)', 'Mindset: A nova psicologia do sucesso', '(Autor), - Carol S. Dweck (Autor) › Visite a página de Carol S. Dweck Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Carol S. Dweck\n(Tradutor) - S. Duarte', 312),
	(11, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '6580634340', '978-6580634347', 'Livros > Autoajuda > Transformação Pessoal', 'Globo Livros; 1ª edição (2 abril 2020)', 'Por que os generalistas vencem em um mundo de especialistas', '(Autor), - David Epstein (Autor) › Visite a página de David Epstein Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor David Epstein\n(Tradutor), - Marcelo Barbão\n(Tradutor) - Fal Vitielo', 336),
	(12, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8578812891', '978-8578812898', 'Livros > Gastronomia e Culinária > Receitas de Forno', 'Editora Alaúde; 1ª edição (1 setembro 2015)', 'Fabulosos - Bolos Espetaculares Para Todas as Ocasiões', '(Coeditor) - Bia Nunes de Editora Alaúde', 288),
	(13, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8579802245', '978-8579802249', 'Livros > Literatura e Ficção > Literatura Mundial', 'Rocco Jovens Leitores; 1ª edição (7 junho 2017)', 'Jane Austen roubou meu namorado', '(Autor) - Cora Harrison', 288),
	(14, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8584391606', '978-8584391608', 'Livros > Religião e Espiritualidade > New Age', 'Fontanar; 1ª edição (28 fevereiro 2020)', 'O livro que você gostaria que seus pais tivessem lido: (e seus filhos ficarão gratos por você ler)', '(Autor), - Philippa Perry\n(Tradutor), - Guilherme Miranda\n(Arte de Capa) - original', 320),
	(15, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '859454118X', '978-8594541185', 'Livros > HQs, Mangás e Graphic Novels > Graphic Novels', 'Darkside; 1ª edição (13 junho 2018)', 'O Corvo - Edição Definitiva: Edição especial de luxo da aclamada história que inspirou o filme com Brandon Lee', '(Autor), - James Barr\n(Tradutor) - Érico Assis', 272),
	(16, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8553219941', '978-8553219940', 'Livros > Direito > Procedimentos e Contencioso', 'Revista dos Tribunais; Nova Ediçãoª (14 outubro 2019)', 'Manual De Juizados Especiais Cíveis Estaduais', '(Autor) - Thiago De Moraes Silva Livro Italia', 240),
	(17, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '855080181X', '978-8550801810', 'Livros > Literatura e Ficção > Drama', 'Alta Books; 1ª edição (29 agosto 2017)', 'A organização dirigida por valores: Liberando o potencial humano para a performance e a lucratividade', '(Autor) - Richard Barrett', 280),
	(18, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8551006754', '978-8551006757', 'Livros > Jovens e Adolescentes > Fantasia e Ficção Científica', 'Intrínseca; Capa Dura com Pintura Trilateral - Acompanha marcador de páginas especial edição (19 junho 2020)', 'Coraline - Acompanha Marcador de Páginas Especial', '(Autor), - Neil Gaiman\n(Ilustrador), - Chris Riddell\n(Tradutor) - Bruna Beber', 224),
	(19, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550807567', '978-8550807560', 'Livros > Administração, Negócios e Economia > Gestão e Liderança', 'Alta Life; 1ª edição (8 agosto 2019)', 'Hábitos atômicos: Um método fácil e comprovado de criar bons hábitos e se livrar dos maus.', '(Tradutor), - Wendy Campos\n(Autor) - James Clear (Autor) › Visite a página de James Clear Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor James Clear', 320),
	(20, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8524305517', '978-8524305511', 'Livros > Religião e Espiritualidade > Cristandade', 'United Press; Portugues edição (1 janeiro 2018)', 'Até que nada mais importe: Como viver longe de um mundo de performances religiosas e mais próximo do que Deus espera de você.', '(Autor) - Luciano Subirá', 160),
	(21, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550801046', '978-8550801049', 'Livros > Administração, Negócios e Economia > Economia', 'Alta Books; Edição revisada e atualizada (11 setembro 2017)', 'Mulher rica: Odeio que me digam o que fazer!', '(Autor) - Kim Kiyosaki', 288),
	(22, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '6555204974', '978-6555204971', 'Livros > Saúde e Família > Psicologia e Aconselhamento', 'Alta Books; 1ª edição (24 junho 2021)', 'Além Da Ordem: Mais 12 Regras Para a Vida', '(Autor) - Jordan B.Peterson (Autor) › Visite a página de Jordan B.Peterson Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Jordan B.Peterson', 432),
	(23, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8502218484', '978-8502218482', 'Livros > Autoajuda > Transformação Pessoal', 'Benvirá; 1ª edição (29 novembro 2013)', 'Ansiedade: Como enfrentar o mal do século', '(Autor) - Augusto Cury (Autor) › Visite a página de Augusto Cury Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Augusto Cury', 160),
	(24, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550801712', '978-8550801711', 'Livros > Administração, Negócios e Economia > Gestão e Liderança', 'Alta Books; 1ª edição (16 fevereiro 2018)', 'Gestão visual de projetos: utilizando a informação para inovar', '(Autor) - Júlio Monteiro Teixeira', 208),
	(25, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8543109701', '978-8543109701', 'Livros > Administração, Negócios e Economia > Gestão e Liderança', 'Editora Sextante; 1ª edição (18 fevereiro 2021)', 'O que todo corpo fala: Um ex-agente do FBI ensina como decodificar a linguagem corporal e ler as pessoas', '(Autor), - Joe Navarro (Autor) › Visite a página de Joe Navarro Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Joe Navarro\n(Autor), - Marvin Karlins\n(Tradutor) - Edson Furmankiewicz', 240),
	(26, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '655617310X', '978-6556173108', 'Livros > Artesanato, Casa e Estilo de Vida > Artesanato e Estilo de Vida', 'Todolivro; 1ª edição (1 setembro 2021)', 'Livro de Colorir antiestresse: Mindfulness', '(Autor) - Todolivro Ltda.', 48),
	(27, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '6555640197', '978-6555640199', 'Livros > Artesanato, Casa e Estilo de Vida > Artesanato e Estilo de Vida', 'Editora Sextante; 1ª edição (22 maio 2020)', 'Coleção Selva Mágica + Oceano Perdido', '(Autor) - Johanna Basford (Autor) › Visite a página de Johanna Basford Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Johanna Basford', 168),
	(28, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '6556600164', '978-6556600161', 'Livros > Política, Filosofia e Ciências Sociais > Governo e Política', 'Edipro; 1ª edição (30 novembro 2020)', 'Sobre a brevidade da vida: Edição Bilíngue com postal + marcador', '(Autor), - Sêneca\n(Tradutor) - Artur Costrino', 96),
	(29, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550807168', '978-8550807164', 'Livros > Administração, Negócios e Economia > Gestão e Liderança', 'Alta Books; 1ª edição (22 outubro 2019)', 'O fim da Idade Média e o início da Idade Mídia', '(Autor) - Walter Longo', 384),
	(30, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8501076252', '978-8501076250', 'Livros > Romance > Contemporâneo', 'Galera; 19ª edição (6 setembro 2016)', 'Novembro, 9', '(Autor), - Colleen Hoover (Autor) › Visite a página de Colleen Hoover Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Colleen Hoover\n(Tradutor) - Ryta Vinagre', 352),
	(31, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '6550970407', '978-6550970406', 'Livros > Biografias e Histórias Reais > Líderes e Pessoas Notáveis', 'Principis; 6ª edição (8 janeiro 2020)', 'O diário de Anne Frank', '(Autor), - Anne Frank\n(Tradutor) - BR75', 224),
	(32, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '6555650656', '978-6555650655', 'Livros > Literatura e Ficção > Literatura Feminina', 'Editora Arqueiro; 1ª edição (7 janeiro 2021)', 'Clube do Livro dos Homens (Clube do livro dos homens – Livro 1)', '(Autor), - Lyssa Kay Adams (Autor) › Visite a página de Lyssa Kay Adams Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Lyssa Kay Adams\n(Tradutor) - Regiane Winarski', 320),
	(33, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8595081530', '978-8595081536', 'Livros > Jovens e Adolescentes > Arte, Música e Fotografia', 'HarperCollins; 1ª edição (4 agosto 2017)', 'O homem mais rico da Babilônia', '(Autor) - George S Clason', 160),
	(34, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550802999', '978-8550802992', 'Livros > Literatura e Ficção > Drama', 'Alta Books; 2ª edição (6 agosto 2018)', 'Mindfulness para leigos', '(Autor) - Shamash Alidina (Autor) › Visite a página de Shamash Alidina Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Shamash Alidina', 376),
	(35, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8545202121', '978-8545202127', 'Livros > Autoajuda > Transformação Pessoal', 'Gente; 2ª edição (1 outubro 2017)', 'Meu livro da consciência: 365 mensagens para nossas boas escolhas de cada dia', '(Autor) - Tadashi Kadomoto (Autor) › Visite a página de Tadashi Kadomoto Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Tadashi Kadomoto', 400),
	(36, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8537644285', '978-8537644287', 'Livros > Artesanato, Casa e Estilo de Vida > Artesanato e Estilo de Vida', 'Brasileitura; 1ª edição (1 julho 2020)', 'Livro-Tapete para Colorir: Mais de 100 Desenhos Incríveis', '(Autor) - Todolivro', 16),
	(37, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '6555642963', '978-6555642964', 'Livros > Infantil > Ciência e Natureza', 'Editora Sextante; 1ª edição (23 fevereiro 2022)', 'O livro de feitiços para novas bruxas: Acesse a magia que há dentro de você e transforme sua vida', '(Autor), - Ambrosia Hawthorn (Autor) › Visite a página de Ambrosia Hawthorn Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Ambrosia Hawthorn\n(Tradutor) - Fernanda Abreu', 240),
	(38, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8567097576', '978-8567097572', 'Livros > Jovens e Adolescentes > Fantasia e Ficção Científica', 'Via Leitura; Edição Integral sem Censura (1 fevereiro 2018)', 'O Retrato de Dorian Gray', '(Autor), - Oscar Wilde\n(Tradutor) - Alexandre Barbosa de Souza', 224),
	(39, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '850130476X', '978-8501304766', 'Livros > Jovens e Adolescentes > Literatura e Ficção', 'Galera; 1ª edição (30 agosto 2021)', 'Kit Um de nós (acompanha marcadores)', '(Autor), - Karen M. McManus\n(Tradutor), - André Gordirro\n(Tradutor) - Ana Lima', 784),
	(40, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550801194', '978-8550801193', 'Livros > Administração, Negócios e Economia > Gestão e Liderança', 'Alta Books; 1ª edição (24 abril 2017)', 'Alinhamento utilizando balanced scorecard', '(Autor), - Robert S. Kaplan\n(Autor) - David P. Norton', 360),
	(41, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '6550970008', '978-6550970000', 'Livros > Literatura e Ficção > Ficção', 'Principis; 1ª edição (24 abril 2020)', 'Mulherzinhas', '(Autor) - Louisa May Alcott (Autor) › Visite a página de Louisa May Alcott Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Louisa May Alcott', 256),
	(42, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '6556172391', '978-6556172392', 'Livros > Educação, Referência e Didáticos > Dicionários, Gramática e Linguística', 'Brasileitura; 1ª edição (1 março 2021)', '365 Atividades Inglês', '(Autor) - Cristiane Castro', 288),
	(43, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8501117684', '978-8501117687', 'Livros > Literatura e Ficção > Drama', 'Galera; 23ª edição (24 julho 2019)', 'Todas as suas (im)perfeições', '(Autor), - Colleen Hoover\n(Tradutor) - Adriana Fidalgo', 304),
	(44, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550806137', '978-8550806136', 'Livros > Administração, Negócios e Economia > Gestão e Liderança', 'Alta Books; 1ª edição (3 janeiro 2019)', 'Plataforma: A revolução da estratégia', '(Autor), - Geoffrey G. Parker\n(Autor), - Marshall W. van Alstyne\n(Autor) - Sangeet Paul Choudary', 376),
	(45, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '6559870537', '978-6559870530', 'Livros > Engenharia e Transporte > Engenharia', 'Globo Livros; 1ª edição (27 julho 2022)', '2041: Como a inteligência artificial vai mudar sua vida nas próximas décadas', '(Autor), - Kai-Fu Lee\n(Autor), - Chen Qiufan\n(Tradutor) - Isadora Sinay', 480),
	(46, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550807826', '978-8550807829', 'Livros > Administração, Negócios e Economia > Gestão e Liderança', 'Alta Books; 1ª edição (15 julho 2019)', 'Abundância: o futuro é melhor do que você imagina', '(Autor), - Peter H. Diamandis (Autor) › Visite a página de Peter H. Diamandis Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Peter H. Diamandis\n(Autor) - Steven Kotler', 424),
	(47, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8525064416', '978-8525064417', 'Livros > Política, Filosofia e Ciências Sociais > Governo e Política', 'Globo Livros; 2ª edição (2 junho 2017)', 'O livro da política (reduzido)', '(Autor), - Vários autores\n(Tradutor) - Rafael Longo', 352),
	(48, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8584911197', '978-8584911196', 'Livros > Política, Filosofia e Ciências Sociais > Filosofia', 'Ecclesiae; 1ª edição (28 fevereiro 2019)', 'Sobre o Livre-arbítrio', '(Autor) - Santo Agostinho', 196),
	(49, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550802077', '978-8550802077', 'Livros > Arte, Cinema e Fotografia > Fotografia', 'Alta Books; 1ª edição (19 dezembro 2017)', 'A alma da fotografia', '(Autor) - David Duchemin', 288),
	(50, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550802557', '978-8550802558', 'Livros > Administração, Negócios e Economia > Gestão e Liderança', 'Alta Books; Edição revista e atualizada (8 dezembro 2018)', 'A pergunta definitiva 2.0: Como as empresas que implementam o Net promoter score prosperam em um mundo voltado aos clientes.', '(Autor), - Fred Reichheld\n(Autor) - Rob Markey (Autor) › Visite a página de Rob Markey Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Rob Markey', 224),
	(51, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '6550970431', '978-6550970437', 'Livros > Literatura e Ficção > Ficção', 'Principis; 3ª edição (21 janeiro 2020)', 'Orgulho e preconceito', '(Autor) - Jane Austen', 288),
	(52, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '855081069X', '978-8550810690', 'Livros > Computação, Informática e Mídias Digitais > Base de Dados', 'Alta Books; 1ª edição (9 dezembro 2019)', 'Governança de Dados: Práticas, conceitos e novos caminhos', '(Autor) - Carlos Barbieri', 288),
	(53, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '6556173096', '978-6556173092', 'Livros > Artesanato, Casa e Estilo de Vida > Artesanato e Estilo de Vida', 'Todolivro; 1ª edição (1 setembro 2021)', 'Livro de Colorir antiestresse: Arteterapia que inspira', '(Autor) - Todolivro Ltda.', 48),
	(54, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8525065366', '978-8525065360', 'Livros > Jovens e Adolescentes > Literatura e Ficção', 'Alt; 1ª edição (10 novembro 2017)', 'Textos cruéis demais para serem lidos rapidamente: 1', '(Autor), - Igor Pires\n(Autor), - Gabriela Barreira\n(Ilustrador) - Anália Moraes', 304),
	(55, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550808415', '978-8550808413', 'Livros > Computação, Informática e Mídias Digitais > Base de Dados', 'Alta Books; 4ª edição (1 abril 2020)', 'Análise de dados com Excel para leigos', '(Autor) - Paul McFedries (Autor) › Visite a página de Paul McFedries Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Paul McFedries', 344),
	(56, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '658967809X', '978-6589678090', 'Livros > Literatura e Ficção', 'Tricaju; Texto integral traduzido do original em inglês edição (18 março 2021)', 'O morro dos ventos uivantes', '(Autor) - Emily Bronte', 368),
	(57, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550802328', '978-8550802329', 'Livros > Administração, Negócios e Economia > Gestão e Liderança', 'Alta Books; 1ª edição (3 abril 2018)', 'Trabalho focado: como ter sucesso em um mundo distraído', '(Autor) - Cal Newport (Autor) › Visite a página de Cal Newport Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Cal Newport', 304),
	(58, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550807346', '978-8550807348', 'Livros > Educação, Referência e Didáticos > Escolas e Ensino', 'Alta Books; 1ª edição (1 abril 2019)', 'Os primeiros 90 dias: Estratégias de sucesso para novos líderes', '(Autor) - Michael Watkins (Autor) › Visite a página de Michael Watkins Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Michael Watkins', 240),
	(59, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550815810', '978-8550815817', 'Livros > Administração, Negócios e Economia > Marketing e Vendas', 'Alta Books; 1ª edição (12 maio 2020)', 'Contágio: Por que as coisas pegam', '(Autor) - Jonah Berger', 224),
	(60, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '6588131089', '978-6588131084', 'Livros > Literatura e Ficção', 'Alt; 1ª edição (7 dezembro 2020)', 'Todo esse tempo', '(Autor), - Rachael Lippincott (Autor) › Visite a página de Rachael Lippincott Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Rachael Lippincott\n(Autor), - Mikki Daughtry\n(Tradutor) - Isadora Sin', 352),
	(61, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550802794', '978-8550802794', 'Livros > Educação, Referência e Didáticos > Estudos de Línguas Estrangeiras', 'Alta Books; 1ª edição (22 junho 2018)', 'Combinando palavras em inglês', '(Autor) - Denilso de Lima (Autor) › Visite a página de Denilso de Lima Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Denilso de Lima', 200),
	(62, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '655520219X', '978-6555202199', 'Livros > Administração, Negócios e Economia > Carreiras', 'Alta Books; 2ª edição (14 abril 2021)', 'Empatia Assertiva: Como Ser Um Líder Incisivo Sem Perder a Humanidade', '(Autor), - Kim Scott (Autor) › Visite a página de Kim Scott Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Kim Scott\n(Tradutor) - Cristina Yamagami', 320),
	(63, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8568014054', '978-8568014059', 'Livros > Educação, Referência e Didáticos > Escolas e Ensino', 'Citadel; 1ª edição (15 maio 2015)', 'Atitude mental positiva', '(Autor), - Napoleon Hill (Autor) › Visite a página de Napoleon Hill Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Napoleon Hill\n(Autor), - W. Clement Stone\n(Prefácio), - Og Mandino', 312),
	(64, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8584391509', '978-8584391509', 'Livros > Literatura e Ficção > Ficção', 'Paralela; 1ª edição (21 outubro 2019)', 'Os sete maridos de Evelyn Hugo', '(Autor), - Taylor Jenkins Reid (Autor) › Visite a página de Taylor Jenkins Reid Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Taylor Jenkins Reid\n(Tradutor), - Alexandre Boide\n(Arte de Capa) - ', 360),
	(65, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '6555350946', '978-6555350944', 'Livros > Saúde e Família > Medicina Alternativa', 'Academia; 1ª edição (25 julho 2020)', 'Ponto de virada: O que faz uma pessoa mudar?', '(Autor) - Monja Coen', 160),
	(66, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '6559811875', '978-6559811878', 'Livros > Jovens e Adolescentes > Fantasia e Ficção Científica', 'Galera; 1ª edição (11 outubro 2022)', 'Uma magia destilada em veneno (Vol. 1 Os Livros do Chá)', '(Autor), - Judy I. Lin\n(Tradutor) - Adriana Fidalgo', 336),
	(67, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8582353960', '978-8582353967', 'Livros > Literatura e Ficção > Drama', 'Gutenberg; 1ª edição (25 agosto 2016)', 'Como se fosse magia', '(Autor) - Bianca Briones (Autor) › Visite a página de Bianca Briones Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Bianca Briones', 208),
	(68, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8542217462', '978-8542217469', 'Livros > Literatura e Ficção > Poesia', 'Planeta; 1ª edição (30 setembro 2019)', 'A voz da sereia volta neste livro', '(Autor) - Amanda Lovelace (Autor) › Visite a página de Amanda Lovelace Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Amanda Lovelace', 208),
	(69, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '6586016258', '978-6586016253', 'Livros > Fantasia, Horror e Ficção Científica > Fantasia', 'WMF Martins Fontes; 1ª edição (13 novembro 2020)', 'The Witcher - Box capa dura', '(Autor) - Andrzej Sapkowski', 3140),
	(70, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550802751', '978-8550802756', 'Livros > Educação, Referência e Didáticos > Escolas e Ensino', 'Alta Books; 1ª edição (30 abril 2018)', '12 regras para a vida: um antídoto para o caos', '(Autor), - Jordan B. Peterson (Autor) › Visite a página de Jordan B. Peterson Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Jordan B. Peterson\n(Autor) - Alberto Gassul', 448),
	(71, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550803839', '978-8550803838', 'Livros > Administração, Negócios e Economia > Marketing e Vendas', 'Alta Books; 1ª edição (31 maio 2019)', 'Objeções: Como se tornar um mestre na arte e na ciência de superar um não', '(Autor) - Jeb Blount (Autor) › Visite a página de Jeb Blount Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Jeb Blount', 240),
	(72, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8581053041', '978-8581053042', 'Livros > Literatura e Ficção > Drama', 'Suma; 1ª edição (14 agosto 2015)', 'O vilarejo', '(Autor), - Raphael Montes (Autor) › Visite a página de Raphael Montes Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Raphael Montes\n(Ilustrador) - Marcelo Damm', 96),
	(73, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8501117846', '978-8501117847', 'Livros > Policial, Suspense e Mistério > Suspense', 'Galera; 17ª edição (9 março 2020)', 'Verity', '(Autor), - Colleen Hoover (Autor) › Visite a página de Colleen Hoover Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Colleen Hoover\n(Tradutor) - Thaís Britto', 320),
	(74, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8594541473', '978-8594541475', 'Livros > Biografias e Histórias Reais > Histórias Reais', 'Darkside; 1ª edição (24 janeiro 2019)', 'Lady Killers: Assassinas em Série: As mulheres mais letais da história - Em uma edição igualmente matadora', '(Autor), - Tori Telfer (Autor) › Visite a página de Tori Telfer Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Tori Telfer\n(Tradutor), - Marcus Santana\n(Tradutor) - Daniel Alves da Cruz', 384),
	(75, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8582892101', '978-8582892107', 'Livros > Administração, Negócios e Economia > Indústrias e Profissões', 'DVS EDITORA; 1ª edição (22 março 2019)', 'Gatilhos Mentais: O Guia Completo com Estratégias de Negócios e Comunicações Provadas Para Você Aplicar', '(Autor) - Gustavo Ferreira (Autor) › Visite a página de Gustavo Ferreira Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Gustavo Ferreira', 144),
	(76, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8525065374', '978-8525065377', 'Livros > Jovens e Adolescentes > Literatura e Ficção', 'Alt; 1ª edição (16 julho 2018)', 'Um milhão de finais felizes', '(Autor) - Vitor Martins (Autor) › Visite a página de Vitor Martins Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Vitor Martins', 352),
	(77, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8542218752', '978-8542218756', 'Livros > Autoajuda', 'Academia; 1ª edição (28 fevereiro 2020)', 'Especialista em pessoas: Soluções bíblicas e inteligentes para lidar com todo tipo de gente', '(Autor) - Tiago Brunet (Autor) › Visite a página de Tiago Brunet Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Tiago Brunet', 224),
	(78, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8562409901', '978-8562409905', 'Livros > Política, Filosofia e Ciências Sociais > Governo e Política', 'Faro Editorial; 1ª edição (24 fevereiro 2017)', 'Politica ideologia e conspirações', '(Autor), - Garry Allen\n(Autor) - Larry Abraham', 143),
	(79, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550804738', '978-8550804736', 'Livros > Literatura e Ficção > Drama', 'Alta Books; 1ª edição (1 julho 2019)', 'Aprenda Python 3 do jeito certo: uma introdução muito simples ao incrível mundo dos computadores e da codificação', '(Autor), - Zed A. Shaw\n(Tradutor) - Eveline Vieira Machado', 320),
	(80, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '9788550803401', '978-8550803401', 'Livros > Computação, Informática e Mídias Digitais > Programação', 'Alta Books; 2ª edição (13 agosto 2018)', 'Use a Cabeça! Python ― 2ª Edição', '(Autor) - Paul Barry (Autor) › Visite a página de Paul Barry Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Paul Barry', 616),
	(81, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '6555358181', '978-6555358186', 'Livros > Religião e Espiritualidade > Cristandade', 'Planeta; 1ª edição (5 setembro 2022)', 'Quantos eus que não são meus?: Como desvelar, construir e preservar a identidade', '(Autor) - Pe. Fábio de Melo', 288),
	(82, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8545202180', '978-8545202189', 'Livros > Administração, Negócios e Economia > Marketing e Vendas', 'Gente; 2ª edição (1 fevereiro 2018)', 'Você nasceu para vender MUITO: Como reprogramar a sua mente para a prosperidade e conquistar o sim de seus clientes', '(Autor) - Hélio Tatsuo', 208),
	(83, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550814091', '978-8550814094', 'Livros > Administração, Negócios e Economia > Carreiras', 'Alta Books; 1ª edição (28 agosto 2020)', 'Tração: Domine os 19 canais que uma startup usa para atingir aumento exponencial em sua base de cliente', '(Autor), - Gabriel Weinberg\n(Autor) - Justin Mares', 256),
	(84, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8543104491', '978-8543104492', 'Livros > Artesanato, Casa e Estilo de Vida > Artesanato e Estilo de Vida', 'Editora Sextante; 1ª edição (7 novembro 2016)', 'As cores do Natal: Celebrando as festas com mais alegria', '(Autor), - Johanna Basford (Autor) › Visite a página de Johanna Basford Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Johanna Basford\n(Tradutor) - Renata Dib', 80),
	(85, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '6558380544', '978-6558380542', 'Livros > Fantasia, Horror e Ficção Científica > Ficção Científica', 'Bertrand Brasil; 8ª edição (27 setembro 2021)', 'A Biblioteca da Meia-Noite', '(Autor), - Matt Haig (Autor) › Visite a página de Matt Haig Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Matt Haig\n(Tradutor) - Adriana Fidalgo', 308),
	(86, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '6556090662', '978-6556090665', 'Livros > Jovens e Adolescentes > Fantasia e Ficção Científica', 'Universo dos Livros; 1ª edição (10 dezembro 2020)', 'Kit Estilhaça-me: A série completa', '(Autor) - Tahereh Mafi (Autor) › Visite a página de Tahereh Mafi Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Tahereh Mafi', 2272),
	(87, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8539825392', '978-8539825394', 'Livros > Literatura e Ficção > Drama', 'Harlequin Books; 1ª edição (1 fevereiro 2018)', 'Amor em Manhattan: Para Nova York, com amor Livro 1', '(Autor), - Sarah Morgan (Autor) › Visite a página de Sarah Morgan Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Sarah Morgan\n(Tradutor) - William Zeytoulian', 384),
	(88, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '853252978X', '978-8532529787', 'Livros > Literatura e Ficção > Literatura de Gênero', 'Rocco; 1ª edição (17 setembro 2018)', 'Mulheres que correm com os lobos: Mitos e histórias do arquétipo da Mulher Selvagem', '(Autor), - Clarissa Pinkola Estés\n(Tradutor) - Waldéa Barcellos', 576),
	(89, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '6555203404', '978-6555203400', 'Livros > Administração, Negócios e Economia > Marketing e Vendas', 'Alta Books; 1ª edição (27 abril 2021)', 'Venda Ou Seja Vendido: Como Trilhar o Seu Caminho nos Negócios e Na Vida', '(Autor), - Grant Cardone (Autor) › Visite a página de Grant Cardone Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Grant Cardone\n(Tradutor) - Carolina Paduan', 288),
	(90, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '6555322713', '978-6555322712', 'Livros > Literatura e Ficção > Literatura de Gênero', 'Rocco; 1ª edição (8 julho 2022)', 'Box Coleção Alice Oseman (3 livros + marcadores magnéticos)', '(Autor), - Alice Oseman (Autor) › Visite a página de Alice Oseman Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Alice Oseman\n(Tradutor) - Carolina Caires', 872),
	(91, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8576774801', '978-8576774808', 'Livros > Religião e Espiritualidade > Cristandade', 'Canção Nova; 1ª edição (8 setembro 2017)', '30 Minutos Para Mudar o Seu Dia', '(Autor) - Marcio Mendes (Autor) › Visite a página de Marcio Mendes Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Marcio Mendes', 96),
	(92, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8542816935', '978-8542816938', 'Livros > Jovens e Adolescentes > Fantasia e Ficção Científica', 'Novo Século; 1ª edição (16 março 2020)', 'Box Terríveis Mestres (3 livros + pôster + suplemento)', '(Autor), - Edgar Allan Poe\n(Autor), - H.P. Lovecraft\n(Autor) - Arthur Conan Doyle', 676),
	(93, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '655047194X', '978-6550471941', 'Livros > Religião e Espiritualidade > Cristandade', 'Citadel; 1ª edição (2 novembro 2022)', 'Sonhos', '(Autor) - Vinícius Iracet', 272),
	(94, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8533100167', '978-8533100169', 'Livros > Política, Filosofia e Ciências Sociais > Ciências Sociais', 'Brasileitura; Acompanha canetinha. edição (1 março 2020)', 'Aprenda em Casa Escreva e Apague: Coordenação Motora', '(Autor), - Todolivro\n(Ilustrador) - Belli Studio & Todolivro', 18),
	(95, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8542805674', '978-8542805673', 'Livros > Arte, Cinema e Fotografia > Arte', 'Novo Século; 1ª edição (1 fevereiro 2022)', 'Voos da Imaginação - Livro de Colorir Antiestresse: Folhas destacáveis', '(Autor) - Elizabeth James (Autor) › Visite a página de Elizabeth James Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Elizabeth James', 128),
	(96, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8551005456', '978-8551005453', 'Livros > Literatura e Ficção > Drama', 'Intrínseca; 1ª edição (14 novembro 2019)', 'Um Caminho Para A Liberdade', '(Autor), - Jojo Moyes (Autor) › Visite a página de Jojo Moyes Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Jojo Moyes\n(Tradutor), - Ana Rodrigues\n(Tradutor), - Catharina Pinheiro', 368),
	(97, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8501105732', '978-8501105738', 'Livros > Romance', 'Galera; 28ª edição (23 julho 2015)', 'O lado feio do amor', '(Autor), - Colleen Hoover (Autor) › Visite a página de Colleen Hoover Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Colleen Hoover\n(Tradutor) - Priscila Catão', 336),
	(98, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8535926550', '978-8535926552', 'Livros > Literatura e Ficção', 'Companhia das Letras; 1ª edição (13 janeiro 2016)', 'Não me abandone jamais', '(Autor), - Kazuo Ishiguro (Autor) › Visite a página de Kazuo Ishiguro Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Kazuo Ishiguro\n(Tradutor) - Beth Vieira', 344),
	(99, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '6555603097', '978-6555603095', 'Livros > Jovens e Adolescentes > Literatura e Ficção', 'Intrínseca; 1ª edição (21 setembro 2021)', 'Box Amor & Livros', '(Autor), - Jenna Evans Welch\n(Tradutor), - Joana Faro\n(Tradutor), - Flora Pinheiro', 1040),
	(100, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8594318111', '978-8594318114', 'Livros > Literatura e Ficção > Drama', 'Principis; 1ª edição (10 junho 2019)', 'Frankenstein', '(Autor) - Mary Shelley', 240),
	(101, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '9788550803333', '978-8550803333', 'Livros > Arte, Cinema e Fotografia > Fotografia', 'Alta Books; 1ª edição (12 setembro 2018)', 'O livro do flash: aprenda técnicas para iluminar com flash e faça as fotografias que sempre sonhou', '(Autor), - Scott Kelby (Autor) › Visite a página de Scott Kelby Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Scott Kelby\n(Tradutor) - Carolina Gaio Palhares', 208),
	(102, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8568925332', '978-8568925331', 'Livros > Fantasia, Horror e Ficção Científica > Fantasia', 'Ler Editorial; 1ª edição (1 dezembro 2016)', 'O Encantador de Livros', '(Autor) - Lucas De Sousa', 148),
	(103, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '9788550802923', '978-8550802923', 'Livros > Educação, Referência e Didáticos > Dicionários, Gramática e Linguística', 'Alta Books; 1ª edição (22 agosto 2018)', 'Gramática de uso da língua inglesa: A gramática do inglês na ponta da língua', '(Autor) - Denilso de Lima (Autor) › Visite a página de Denilso de Lima Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Denilso de Lima', 216),
	(104, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8578201256', '978-8578201258', 'Livros > Jovens e Adolescentes > Literatura e Ficção', 'Aeroplano; 1ª edição (9 março 2021)', 'Box 2 Livros-As Aventuras de Alice', '(Autor) - Lewis Carroll (Autor) › Visite a página de Lewis Carroll Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Lewis Carroll', 275),
	(105, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '6588132158', '978-6588132159', 'Livros > Ciências > Ciências Biológicas', 'Principium; 1ª edição (22 agosto 2022)', 'Sagaz: Encontre seu foco e mude sua vida em 12 minutos por dia', '(Autor), - Amishi P. Jha\n(Tradutor) - Cristiane Riba', 336),
	(106, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550807818', '978-8550807812', 'Livros > Administração, Negócios e Economia > Economia', 'Alta Books; 1ª edição (25 fevereiro 2019)', 'Líderes se servem por último: Como construir equipes seguras e confiantes', '(Autor) - Simon Sinek (Autor) › Visite a página de Simon Sinek Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Simon Sinek', 320),
	(107, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8537644277', '978-8537644270', 'Livros > Artesanato, Casa e Estilo de Vida > Artesanato e Estilo de Vida', 'Brasileitura; 1ª edição (1 julho 2020)', 'Livro-Tapete para Colorir: Brasil', '(Autor) - Todolivro', 16),
	(108, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8569809778', '978-8569809777', 'Livros > Literatura e Ficção > Drama', 'HarperCollins; 1ª edição (19 maio 2016)', 'Código de um cavaleiro', '(Autor), - Ethan Hawke (Autor) › Visite a página de Ethan Hawke Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Ethan Hawke\n(Ilustrador), - Ryan Hawke\n(Tradutor), - Mônica Maia', 192),
	(109, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8542211316', '978-8542211313', 'Livros > Religião e Espiritualidade > Cristandade', 'Planeta; 1ª edição (1 janeiro 2017)', 'Crer ou não crer', '(Autor), - Leandro Karnal\n(Autor) - Fabio De Melo', 192),
	(110, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550800678', '978-8550800677', 'Livros > Computação, Informática e Mídias Digitais', 'Alta Books; 1ª edição (14 fevereiro 2017)', 'Blockchain para negócios', '(Autor) - William Mougayar (Autor) › Visite a página de William Mougayar Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor William Mougayar', 224),
	(111, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8501304840', '978-8501304841', 'Livros > Literatura e Ficção > Literatura de Gênero', 'Record; 1ª edição (1 novembro 2021)', 'Box As crônicas de Artur (Edição de colecionador)', '(Autor), - Bernard Cornwell\n(Tradutor) - Alves Calado', 1596),
	(112, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '6550471400', '978-6550471408', 'Livros > Educação, Referência e Didáticos > Escolas e Ensino', 'Citadel; 1ª edição (20 junho 2022)', 'Epaminondas: O gato explicador', '(Autor) - Clóvis de Barros Filho', 240),
	(113, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8543105692', '978-8543105697', 'Livros > Política, Filosofia e Ciências Sociais > Filosofia', 'Editora Sextante; 1ª edição (30 janeiro 2018)', 'A coragem de não agradar: Como a filosofia pode ajudar você a se libertar da opinião dos outros, superar suas limitações e se tornar a pessoa que deseja', '(Autor), - Ichiro Kishimi\n(Autor), - Fumitake Koga (Autor) › Visite a página de Fumitake Koga Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Fumitake Koga\n(Tradutor) - Ivo Korytowski', 272),
	(114, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '6555670231', '978-6555670233', 'Livros > Ciências > Matemática', 'Globo Livros; 1ª edição (19 outubro 2020)', 'O livro da matemática', '(Autor), - Vários\n(Tradutor) - Maria da Anunciação Rodrigues', 352),
	(115, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550811173', '978-8550811178', 'Livros > Administração, Negócios e Economia > Gestão e Liderança', 'Alta Books; 1ª edição (18 setembro 2019)', 'O melhor do mundo: saiba quando insistir e quando desistir', '(Autor) - Seth Godin', 96),
	(116, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550804533', '978-8550804538', 'Livros > Administração, Negócios e Economia > Desenvolvimento de Negócios e Empreendedorismo', 'Alta Books; 1ª edição (4 janeiro 2019)', 'Bad blood: fraude bilionária no Vale do Silício', '(Autor), - John Carreyrou (Autor) › Visite a página de John Carreyrou Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor John Carreyrou\n(Tradutor) - Alberto Gassul Streicher', 352),
	(117, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550802271', '978-8550802275', 'Livros > Administração, Negócios e Economia > Gestão e Liderança', 'Alta Books; 1ª edição (12 abril 2018)', 'Planejamento avançado da qualidade: sistemas de gestão, técnicas e ferramentas', '(Autor), - Marcos Albertin\n(Autor) - Viviane Guertzenstein', 304),
	(118, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8578815971', '978-8578815974', 'Livros > Gastronomia e Culinária > Dietas Especiais', 'Editora Alaúde; 1ª edição (1 setembro 2019)', 'Delícias da Izabel: As receitas low carb que mudaram a minha vida', '(Autor) - Izabel Alvares (Autor) › Visite a página de Izabel Alvares Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Izabel Alvares', 240),
	(119, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8543105293', '978-8543105291', 'Livros > Religião e Espiritualidade > Espiritualidade', 'Editora Sextante; 1ª edição (27 setembro 2017)', 'As coisas que você só vê quando desacelera: Como manter a calma em um mundo frenético', '(Autor), - Haemin Sunim (Autor) › Visite a página de Haemin Sunim Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Haemin Sunim\n(Tradutor) - Rafaella Lemos', 256),
	(120, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8576088045', '978-8576088042', 'Livros > Administração, Negócios e Economia > Gestão e Liderança', 'Alta Books; 1ª edição (30 outubro 2013)', 'Tribos: Nós precisamos que vocês nos liderem', '(Autor) - Seth Godin (Autor) › Visite a página de Seth Godin Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Seth Godin', 160),
	(121, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8537644307', '978-8537644300', 'Livros > Artesanato, Casa e Estilo de Vida > Artesanato e Estilo de Vida', 'Brasileitura; 1ª edição (1 julho 2020)', 'Livro-Tapete para Colorir: Mundo', '(Autor) - Todolivro', 16),
	(122, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8576087006', '978-8576087007', 'Livros > Autoajuda > Transformação Pessoal', 'Alta Books; 1ª edição (20 março 2013)', 'Persuasão e influência para leigos', '(Autor) - Elizabeth Kuhnke (Autor) › Visite a página de Elizabeth Kuhnke Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Elizabeth Kuhnke', 400),
	(123, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8542215788', '978-8542215786', 'Livros > Autoajuda', 'Academia; 2ª edição (22 março 2019)', 'Arrume a sua cama: Pequenas coisas que podem mudar a sua vida... E talvez o mundo - 2ª Edição', '(Autor), - William H. McRaven (Autor) › Visite a página de William H. McRaven Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor William H. McRaven\n(Tradutor) - Eliana Rocha', 128),
	(124, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550807257', '978-8550807256', 'Livros > Administração, Negócios e Economia > Desenvolvimento de Negócios e Empreendedorismo', 'Alta Books; 1ª edição (1 março 2019)', 'Value Proposition Design: Como construir propostas de valor inovadoras', '(Autor), - Alex Osterwalder\n(Autor), - Greg Bernarda\n(Autor), - Yves Pigneur', 320),
	(125, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550300985', '978-8550300986', 'Livros > Biografias e Histórias Reais > Memórias', 'Universo dos Livros; Livro de bolso edição (31 janeiro 2020)', 'Para depois que eu partir (Pocket)', '(Autor) - Heather Mc Manamy; William Croyle', 192),
	(126, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8531521726', '978-8531521720', 'Livros > Religião e Espiritualidade > Ocultismo', 'Pensamento; 1ª edição (3 fevereiro 2022)', 'O livro dos esplendores: O mistério hierático ou os documentos tradicionais da alta iniciação', '(Autor), - Éliphas Lévi\n(Tradutor), - Márcio Pugliesi\n(Tradutor) - Norberto de Paula Lima', 175),
	(127, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550807281', '978-8550807287', 'Livros > Administração, Negócios e Economia > Gestão e Liderança', 'Alta Books; 1ª edição (8 abril 2019)', '10X: A regra que faz a diferença entre o sucesso x fracasso', '(Autor) - Grant Cardone (Autor) › Visite a página de Grant Cardone Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Grant Cardone', 264),
	(128, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '6555643013', '978-6555643015', 'Livros > Ciências > Matemática', 'Editora Sextante; 1ª edição (22 março 2022)', 'O poder do infinito: Como o cálculo revela os segredos do universo', '(Autor), - Steven Strogatz\n(Tradutor) - Paulo Afonso', 352),
	(129, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550802859', '978-8550802855', 'Livros > Administração, Negócios e Economia > Gestão e Liderança', 'Alta Books; 1ª edição (13 junho 2018)', 'O poder da liderança positiva', '(Autor) - Jon Gordon', 208),
	(130, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '855080214X', '978-8550802145', 'Livros > Biografias e Histórias Reais > Profissionais e Universitários', 'Alta Books; 1ª edição (30 novembro 2017)', 'Sam Walton: Made in America', '(Autor), - Sam Walton (Autor) › Visite a página de Sam Walton Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Sam Walton\n(Autor) - John Huey', 288),
	(131, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550810843', '978-8550810843', 'Livros > Saúde e Família > Psicologia e Aconselhamento', 'Alta Life; 1ª edição (12 agosto 2019)', 'A introdução definitiva à PNL: Como construir uma vida de sucesso', '(Tradutor), - Luciana Ferraz\n(Autor), - Richard Bandler\n(Autor), - Alessio Roberti', 160),
	(132, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8578815947', '978-8578815943', 'Livros > Gastronomia e Culinária > Receitas de Forno', 'Editora Alaúde; 1ª edição (1 agosto 2019)', 'Larousse do chocolate – Le petit', '(Autor) - Instituto Le Cordon Bleu', 416),
	(133, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '855080858X', '978-8550808581', 'Livros > Administração, Negócios e Economia > Gestão e Liderança', 'Alta Books; 1ª edição (8 abril 2020)', 'Feitas para durar: Práticas bem-sucedidas de empresas visionárias', '(Autor), - Jerry I. Porras (Autor) › Visite a página de Jerry I. Porras Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Jerry I. Porras\n(Autor) - Jim Collins', 368),
	(134, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550802824', '978-8550802824', 'Livros > Educação, Referência e Didáticos > Dicionários, Gramática e Linguística', 'Alta Books; 2ª edição (6 julho 2018)', 'Inglês em 50 aulas: o guia definitivo para você aprender inglês', '(Autor) - Ben Parry Davies', 348),
	(135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8578601890', '978-8578601898', 'Livros > Política, Filosofia e Ciências Sociais > Ciências Sociais', 'Thomas Nelson Brasil; 1ª edição (18 setembro 2017)', 'A abolição do homem', '(Autor), - C. S. Lewis (Autor) › Visite a página de C. S. Lewis Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor C. S. Lewis\n(Tradutor) - Gabriele Greggersen', 128),
	(136, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8578814568', '978-8578814564', 'Livros > Literatura e Ficção > Drama', 'Editora Alaúde; 1ª edição (22 setembro 2017)', 'Larousse da cerveja: A história e as curiosidades de uma das bebidas mais populares do mundo', '(Autor) - Ronaldo Morado (Autor) › Visite a página de Ronaldo Morado Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Ronaldo Morado', 440),
	(137, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '6580448067', '978-6580448067', 'Livros > Jovens e Adolescentes > Fantasia e Ficção Científica', 'Excelsior; Português edição (7 outubro 2019)', 'Dungeons & Dragons: Monstros e Criaturas', '(Autor), - Jim Zub (Autor) › Visite a página de Jim Zub Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Jim Zub\n(Autor), - Stacy King\n(Autor), - Andrew Wheeler (Autor) › Visite a página de Andrew', 112),
	(138, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550811416', '978-8550811413', 'Livros > Administração, Negócios e Economia > Gestão e Liderança', 'Alta Books; 1ª edição (2 dezembro 2019)', 'Drucker: O homem que inventou a administração', '(Autor) - Peter F. Drucker', 224),
	(139, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550303917', '978-8550303918', 'Livros > Jovens e Adolescentes > Literatura e Ficção', 'Universo dos Livros; 1ª edição (3 setembro 2021)', 'Garotas como nós', '(Autor), - Dana Mele (Autor) › Visite a página de Dana Mele Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Dana Mele\n(Tradutor) - Ana Death Duarte', 336),
	(140, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '6555981873', '978-6555981872', 'Livros > HQs, Mangás e Graphic Novels > Mangá', 'Darkside; 1ª edição (19 julho 2022)', 'O Livro dos Insetos Humanos', '(Autor), - Osamu Tezuka\n(Tradutor) - Luiz Claudio Bodanese', 384),
	(141, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '857881505X', '978-8578815059', 'Livros > Artesanato, Casa e Estilo de Vida', 'Editora Alaúde; 3ª edição (1 abril 2018)', 'O grande livro da Palmirinha: 1000 receitas deliciosas da vovó mais querida do Brasil', '(Autor) - Palmira Onofre', 896),
	(142, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '6555203110', '978-6555203110', 'Livros > Educação, Referência e Didáticos > Escolas e Ensino', 'Alta Books; 1ª edição (2 maio 2022)', 'Lugar de Potência: Lições de carreira e liderança de mais de 10 mil entrevistas, cafés e reuniões', '(Autor) - Ricardo Basaglia', 416),
	(143, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8595080836', '978-8595080836', 'Livros > Biografias e Histórias Reais > Arte e Literatura', 'HarperCollins; 1ª edição (1 junho 2019)', 'Box Sherlock Holmes', '(Autor), - Arthur Conan Doyle (Autor) › Visite a página de Arthur Conan Doyle Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Arthur Conan Doyle\n(Tradutor) - Vários tradutores', 1808),
	(144, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8569371012', '978-8569371014', 'Livros > Educação, Referência e Didáticos > Escolas e Ensino', 'SportBook; 1ª edição (1 fevereiro 2019)', 'O Jogo Interior do Tênis: O Guia Clássico para o lado mental da Excelência no Desempenho', '(Autor), - W. Timothy Gallwey (Autor) › Visite a página de W. Timothy Gallwey Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor W. Timothy Gallwey\n(Tradutor) - Alexandre Sanches Camacho', 160),
	(145, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550304190', '978-8550304199', 'Livros > Literatura e Ficção > Ação e Aventura', 'Universo dos Livros; 1ª edição (31 janeiro 2020)', 'O livro mágico de feitiços: Star X Forças do mal', '(Autor), - Daron Nefcy\n(Tradutor) - Carolina Coelho', 304),
	(146, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550804592', '978-8550804590', 'Livros > Administração, Negócios e Economia > Marketing e Vendas', 'Alta Books; 1ª edição (22 março 2019)', 'Storybrand: Crie mensagens claras e atraia a atenção dos clientes para sua marca', '(Autor), - Donald Miller (Autor) › Visite a página de Donald Miller Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Donald Miller\n(Tradutor) - Carlos Bacci', 240),
	(147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550800740', '978-8550800745', 'Livros > Autoajuda > Autoestima', 'Alta Books; 1ª edição (29 dezembro 2016)', 'Seja assertivo!: como conseguir mais autoconfiança e firmeza na sua vida profissional e pessoal', '(Autor) - Vera Martins (Autor) › Visite a página de Vera Martins Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Vera Martins', 240),
	(148, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8545202210', '978-8545202219', 'Livros > Administração, Negócios e Economia > Gestão e Liderança', 'Gente; 4ª edição (1 fevereiro 2018)', 'O poder da autorresponsabilidade: Livro de bolso: A ferramenta comprovada que gera alta performance e resultados em pouco tempo', '(Autor) - Paulo Vieira (Autor) › Visite a página de Paulo Vieira Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Paulo Vieira', 160),
	(149, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8543106273', '978-8543106274', 'Livros > Saúde e Família > Dietas e Emagrecimento', 'Editora Sextante; 1ª edição (17 julho 2018)', 'Culinária básica: As melhores receitas e dicas para o seu dia a dia ficar ainda mais saudável', '(Autor), - Vigilantes do Peso\n(Tradutor), - Gabriella Gachet\n(Tradutor), - Matheus Motta', 416),
	(150, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550810134', '978-8550810133', 'Livros > Literatura e Ficção > Drama', 'Alta Books; 1ª edição (19 agosto 2019)', 'A dicotomia da liderança: como equilibrar os desafios da responsabilidade extrema para liderar e vencer', '(Autor), - Jocko Willink (Autor) › Visite a página de Jocko Willink Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Jocko Willink\n(Autor) - Leif Babin', 336),
	(151, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '6555204869', '978-6555204865', 'Livros > Administração, Negócios e Economia > Gestão e Liderança', 'Alta Books; 1ª edição (7 abril 2022)', 'Disciplina É Liberdade: Manual do Campo', '(Autor) - Jocko Willink (Autor) › Visite a página de Jocko Willink Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Jocko Willink', 256),
	(152, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8501305537', '978-8501305534', 'Livros > Erótico > Ficção', 'Record; 1ª edição (11 julho 2022)', 'Box A Lenda dos Quatro Soldados', '(Autor), - Elizabeth Hoyt (Autor) › Visite a página de Elizabeth Hoyt Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Elizabeth Hoyt\n(Tradutor), - Silvia Rezende\n(Tradutor) - Carol Simmer', 1414),
	(153, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8501305561', '978-8501305565', 'Livros > Romance > Contemporâneo', 'Galera; 1ª edição (8 agosto 2022)', 'Kit Hopeless', '(Autor), - Colleen Hoover (Autor) › Visite a página de Colleen Hoover Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Colleen Hoover\n(Tradutor) - Priscila Catão', 960),
	(154, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8544106595', '978-8544106594', 'Livros > Literatura e Ficção > Poesia', 'Leya; 1ª edição (30 novembro 2017)', 'A princesa salva a si mesma neste livro', '(Autor) - Amanda Lovelace (Autor) › Visite a página de Amanda Lovelace Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Amanda Lovelace', 208),
	(155, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8581052983', '978-8581052984', 'Livros > Policial, Suspense e Mistério > Suspense', 'Suma; 1ª edição (2 julho 2015)', 'Joyland', '(Autor), - Stephen King (Autor) › Visite a página de Stephen King Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Stephen King\n(Tradutor) - Regiane Winarski', 240),
	(156, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '6587715176', '978-6587715179', 'Livros > Infantil > Ciência e Natureza', 'Blu Editora; 1ª edição (1 maio 2022)', 'Livro musical: O sapo não lava o pé', '(Autor) - Blu Editora', 12),
	(157, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8576849941', '978-8576849940', 'Livros > Autoajuda > Autoestima', 'BestSeller; 87ª edição (19 julho 2016)', 'O milagre da manhã: O segredo para transformar sua vida (antes das 8 horas)', '(Autor), - Hal Elrod (Autor) › Visite a página de Hal Elrod Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Hal Elrod\n(Tradutor) - Marcelo Schild', 196),
	(158, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8575227785', '978-8575227787', 'Livros > Computação, Informática e Mídias Digitais > Redes Informáticas', 'Novatec Editora (15 julho 2019)', 'DevOps Nativo de Nuvem com Kubernetes: Como Construir, Implantar e Escalar Aplicações Modernas na Nuvem', '(Autor), - John Arundel (Autor) › Visite a página de John Arundel Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor John Arundel\n(Autor) - Justin Domingus', 384),
	(159, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '6555791047', '978-6555791044', 'Livros > Literatura e Ficção > Horror', 'Pandorga Editora; 1ª edição (13 setembro 2021)', 'Carmilla - A vampira de Karnstein +: O Vampiro, de John William Polidori', '(Autor), - Le Fanu J. Sheridan\n(Autor) - John Polidori', 176),
	(160, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550804452', '978-8550804453', 'Livros > Administração, Negócios e Economia > Marketing e Vendas', 'Alta Books; 1ª edição (13 novembro 2018)', 'Hacking Growth: A estratégia de marketing inovadora das empresas de crescimento mais rápido', '(Autor), - Morgan Brown (Autor) › Visite a página de Morgan Brown Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Morgan Brown\n(Autor), - Sean Ellis\n(Tradutor) - Ada Felix', 328),
	(161, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8535930914', '978-8535930917', 'Livros > Política, Filosofia e Ciências Sociais > Governo e Política', 'Companhia das Letras; 1ª edição (30 agosto 2018)', '21 lições para o século 21', '(Autor), - Yuval Noah Harari (Autor) › Visite a página de Yuval Noah Harari Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Yuval Noah Harari\n(Tradutor) - Paulo Geiger', 432),
	(162, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8594318596', '978-8594318596', 'Livros > Administração, Negócios e Economia > Gestão e Liderança', 'Principis; 3ª edição (2 maio 2019)', 'A arte da guerra', '(Autor), - Sun Tzu\n(Tradutor) - Pedro Manoel Soares', 160),
	(163, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '855080729X', '978-8550807294', 'Livros > Administração, Negócios e Economia > Gestão e Liderança', 'Alta Books; 1ª edição (25 fevereiro 2019)', 'Comece por você: adapte-se ao futuro, invista em você e transforme a sua carreira', '(Autor), - Ben Casnocha (Autor) › Visite a página de Ben Casnocha Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Ben Casnocha\n(Autor) - Reid Hoffman', 252),
	(164, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550806153', '978-8550806150', 'Livros > Administração, Negócios e Economia > Carreiras', 'Alta Books; 1ª edição (21 junho 2019)', 'Confiança criativa: libere sua criatividade e implemente suas Ideias', '(Autor), - Tom Kelley\n(Autor) - David Kelley', 264),
	(165, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '6557121367', '978-6557121368', 'Livros > Religião e Espiritualidade > New Age', 'BestSeller; 1ª edição (26 setembro 2022)', 'O GPS da vida', '(Autor) - Paulo Madjarof Julio', 244),
	(166, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8568014267', '978-8568014264', 'Livros > Educação, Referência e Didáticos > Escolas e Ensino', 'Citadel; 1ª edição (17 maio 2017)', 'O manuscrito original: As leis do triunfo e do sucesso de Napoleon Hill', '(Autor), - Napoleon Hill (Autor) › Visite a página de Napoleon Hill Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Napoleon Hill\n(Tradutor), - Lúcia Brito\n(Tradutor) - Débora Santos', 784),
	(167, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '6559700704', '978-6559700707', 'Livros > Romance > Contemporâneo', 'Harlequin; original edição (15 outubro 2021)', 'Um salto para o amor', '(Autor) - Aione Simões (Autor) › Visite a página de Aione Simões Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Aione Simões', 384),
	(168, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '858235648X', '978-8582356487', 'Livros > Jovens e Adolescentes > Fantasia e Ficção Científica', 'Gutenberg; 1ª edição (13 abril 2022)', 'Era uma vez um coração partido (Sucesso do TikTok)', '(Autor), - Stephanie Garber (Autor) › Visite a página de Stephanie Garber Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Stephanie Garber\n(Tradutor) - Lavínia Fávero', 336),
	(169, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550807648', '978-8550807645', 'Livros > Educação, Referência e Didáticos > Escolas e Ensino', 'Alta Books; 1ª edição (17 junho 2019)', 'Isso é marketing: Para ser visto é preciso aprender a enxergar', '(Autor) - Seth Godin (Autor) › Visite a página de Seth Godin Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Seth Godin', 288),
	(170, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8576088886', '978-8576088882', 'Livros > Literatura e Ficção > Drama', 'Alta Books; 1ª edição (13 agosto 2014)', 'Motivação sem truques', '(Autor) - Meiry Kamia', 160),
	(171, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8532521509', '978-8532521507', 'Livros > Saúde e Família > Psicologia e Aconselhamento', 'Rocco; 1ª edição (28 maio 2007)', 'A ciranda das mulheres sábias: Ser jovem enquanto velha, velha enquanto jovem', '(Autor), - Clarissa Pinkola Estés\n(Tradutor) - Waldéa Barcellos', 128),
	(172, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550806064', '978-8550806068', 'Livros > Saúde e Família > Psicologia e Aconselhamento', 'Alta Books; Edição de bolso (26 março 2019)', 'Terapia cognitivo-comportamental Para Leigos - edição de bolso', '(Autor), - Rhena Branch\n(Autor), - Rob Willson\n(Tradutor), - Lia Gabriele Magalhães', 240),
	(173, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '858285028X', '978-8582850282', 'Livros > Literatura e Ficção', 'Penguin-Companhia; 1ª edição (13 abril 2018)', 'Helena', '(Autor) - Machado de Assis (Autor) › Visite a página de Machado de Assis Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Machado de Assis', 280),
	(174, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '655981002X', '978-6559810024', 'Livros > Fantasia, Horror e Ficção Científica > Fantasia', 'Galera; 4ª edição (8 novembro 2021)', 'De sangue e cinzas (Vol. 1)', '(Autor), - Jennifer L. Armentrout (Autor) › Visite a página de Jennifer L. Armentrout Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Jennifer L. Armentrout\n(Tradutor) - Flavia de Lavor', 588),
	(175, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550803561', '978-8550803562', 'Livros > Artesanato, Casa e Estilo de Vida', 'Alta Books; 1ª edição - Edição de bolso (5 setembro 2018)', 'Cerveja para leigos', '(Autor), - Marty Nachel\n(Autor), - Steve Ettlinger\n(Tradutor), - Juliana França', 250),
	(176, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550814369', '978-8550814360', 'Livros > Administração, Negócios e Economia > Economia', 'Alta Books; Edição comemorativa de 10 anos (30 setembro 2020)', 'Design Thinking: uma metodologia poderosa para decretar o fim das velhas ideias', '(Autor) - Tim Brown', 304),
	(177, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8525067210', '978-8525067210', 'Livros > Literatura e Ficção > Drama', 'Globo Livros; 2ª edição (30 outubro 2018)', 'O livro da economia (reduzido)', '(Autor), - Vários autores\n(Tradutor) - Carlos S. Mendes Rosa', 352),
	(178, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550800767', '978-8550800769', 'Livros > Literatura e Ficção > Drama', 'Alta Books; 1ª edição (14 junho 2017)', 'Análise preditiva', '(Autor) - Eric Siegel (Autor) › Visite a página de Eric Siegel Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Eric Siegel', 320),
	(179, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8567097533', '978-8567097534', 'Livros > Jovens e Adolescentes > Fantasia e Ficção Científica', 'Via Leitura; 1ª edição (1 fevereiro 2018)', 'Carmilla: A Vampira de Karnstein', '(Autor), - Joseph Thomas Sheridan Le Fanu\n(Tradutor), - Martha Argel\n(Tradutor) - Humberto Moura Neto', 96),
	(180, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8543108756', '978-8543108759', 'Livros > Religião e Espiritualidade > Cristandade', 'Editora Sextante; 2ª edição (26 dezembro 2019)', 'Salomão, o homem mais rico que já existiu: A sabedoria da Bíblia para uma vida plena e bem-sucedida', '(Autor), - Steven K. Scott (Autor) › Visite a página de Steven K. Scott Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Steven K. Scott\n(Tradutor) - Fabiano Morais', 176),
	(181, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8595086494', '978-8595086494', 'Livros > Fantasia, Horror e Ficção Científica > Fantasia', 'HarperCollins (4 novembro 2019)', 'Kit Grandes Contos Tolkien', '(Autor), - J.r.r. Tolkien\n(Tradutor) - Reinaldo José Lopes', 1152),
	(182, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8501109320', '978-8501109323', 'Livros > Literatura e Ficção > Drama', 'Galera; 9ª edição (8 junho 2017)', 'Confesse', '(Autor), - Colleen Hoover (Autor) › Visite a página de Colleen Hoover Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Colleen Hoover\n(Tradutor) - Priscila Catão', 320),
	(183, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '6556600628', '978-6556600628', 'Livros > Jovens e Adolescentes > Educação e Didáticos', 'Edipro; 1ª edição (29 abril 2022)', 'O Estoicismo', '(Autor), - George Stock\n(Tradutor) - Edson Bini', 112),
	(184, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8501116432', '978-8501116437', 'Livros > Literatura e Ficção > Drama', 'Record; 28ª edição (20 maio 2019)', 'A paciente silenciosa', '(Autor), - Alex Michaelides (Autor) › Visite a página de Alex Michaelides Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Alex Michaelides\n(Tradutor) - Clóvis Marques', 364),
	(185, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '655598225X', '978-6555982251', 'Livros > Literatura e Ficção > Horror', 'Darkside; 1ª edição (28 outubro 2022)', 'Livros de Sangue: Volume 4', '(Autor), - Clive Barker\n(Tradutor) - Paulo Raviere', 240),
	(186, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8576089750', '978-8576089759', 'Livros > Computação, Informática e Mídias Digitais > Programação', 'Alta Books; 1ª edição (7 março 2016)', 'Começando a programar em C para leigos', '(Autor) - Dan Gookin (Autor) › Visite a página de Dan Gookin Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Dan Gookin', 448),
	(187, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550803065', '978-8550803067', 'Livros > Educação, Referência e Didáticos > Dicionários, Gramática e Linguística', 'Alta Books; 1ª edição (5 setembro 2018)', 'Como dizer tudo em inglês: livro de atividades', '(Autor) - Ron Martinez (Autor) › Visite a página de Ron Martinez Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Ron Martinez', 184),
	(188, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550807516', '978-8550807515', 'Livros > Administração, Negócios e Economia > Gestão e Liderança', 'Alta Books; 1ª edição (12 março 2019)', 'Liderança shakti: O Equilíbrio do Poder Feminino e Masculino nos Negócios', '(Autor), - Nilima Bhat\n(Autor) - Raj Sisodia', 216),
	(189, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550801216', '978-8550801216', 'Livros > Administração, Negócios e Economia > Marketing e Vendas', 'Alta Books; Edição revisada e atualizada (8 maio 2017)', 'Escola de negócios: para pessoas que gostam de ajudar pessoas', '(Autor) - Robert Kiyosaki', 144),
	(190, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550810258', '978-8550810256', 'Livros > Educação, Referência e Didáticos > Escolas e Ensino', 'Alta Books; 1ª edição (18 julho 2019)', 'Storytelling: Aprenda a contar histórias com Steve Jobs, Papa Francisco, Churchill e outras lendas da liderança', '(Autor) - Carmine Gallo (Autor) › Visite a página de Carmine Gallo Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Carmine Gallo', 288),
	(191, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550803758', '978-8550803753', 'Livros > Administração, Negócios e Economia > Gestão e Liderança', 'Alta Books; 6ª edição (11 outubro 2018)', 'O desafio da liderança: como fazer acontecer em sua empresa', '(Autor), - James M. Kouzes\n(Autor), - Barry Z. Posner\n(Tradutor) - Carolina Gaio', 400),
	(192, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8550804509', '978-8550804507', 'Livros > Administração, Negócios e Economia > Gestão e Liderança', 'Alta Books; 1ª edição (30 março 2019)', 'Prospecção fanática: O guia definitivo de conversas para iniciar vendas e encher o funil aproveitando ao máximo redes sociais, telefone, e-mail, texto e chamadas frias', '(Autor), - Jeb Blount (Autor) › Visite a página de Jeb Blount Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Jeb Blount\n(Tradutor) - Maíra Meyer Bregalda', 304),
	(193, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '6555790490', '978-6555790498', 'Livros > Literatura e Ficção > Ação e Aventura', 'Pandorga Editora; 1ª edição (7 julho 2022)', 'Box Peter Pan: 3 livros + pôster + marcadores e Cards', '(Autor) - J.M. Barrie (Autor) › Visite a página de J.M. Barrie Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor J.M. Barrie', 606),
	(194, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8581052142', '978-8581052144', 'Livros > Policial, Suspense e Mistério > Suspense', 'Suma; 1ª edição (22 abril 2014)', 'Misery: Louca obsessão', '(Autor), - Stephen King (Autor) › Visite a página de Stephen King Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Stephen King\n(Tradutor) - Elton Mesquita', 328),
	(195, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8594540353', '978-8594540355', 'Livros > HQs, Mangás e Graphic Novels > Graphic Novels', 'Darkside; 1ª edição (30 junho 2017)', 'Meu Amigo Dahmer: Estudando com um serial killer', '(Autor), - Derf Backderf (Autor) › Visite a página de Derf Backderf Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Derf Backderf\n(Tradutor) - Érico Assis', 288),
	(196, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '8525058394', '978-8525058393', 'Livros > Política, Filosofia e Ciências Sociais > Ciências Sociais', 'Principium; 1ª edição (1 novembro 2014)', 'Mentes Inquietas: TDAH: desatenção, hiperatividade e impulsividade', '(Autor) - Ana Beatriz Barbosa Silva (Autor) › Visite a página de Ana Beatriz Barbosa Silva Encontre todos os livros, leia sobre o autor, e muito mais. Consulte Resultados da pesquisa para este autor Ana Beatriz Barbosa Silva', 304);

-- Copiando estrutura para tabela bancolpv.book_users
CREATE TABLE IF NOT EXISTS `book_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date_boor` date NOT NULL,
  `date_devolution` date NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `id_books` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `book_users_user_id_foreign` (`user_id`),
  KEY `book_users_id_books_foreign` (`id_books`),
  CONSTRAINT `book_users_id_books_foreign` FOREIGN KEY (`id_books`) REFERENCES `books` (`id`),
  CONSTRAINT `book_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela bancolpv.book_users: ~0 rows (aproximadamente)

-- Copiando estrutura para view bancolpv.doacoes_minas_gerais
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `doacoes_minas_gerais` (
	`Título` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`Cidade` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`CEP` INT(11) NOT NULL,
	`Descrição` TEXT NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`Autor` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para tabela bancolpv.donations
CREATE TABLE IF NOT EXISTS `donations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `category` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`items`)),
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `donations_user_id_foreign` (`user_id`),
  CONSTRAINT `donations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela bancolpv.donations: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela bancolpv.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela bancolpv.failed_jobs: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela bancolpv.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela bancolpv.migrations: ~22 rows (aproximadamente)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(22, '2014_10_12_000000_create_users_table', 1),
	(23, '2014_10_12_100000_create_password_resets_table', 1),
	(24, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
	(25, '2019_08_19_000000_create_failed_jobs_table', 1),
	(26, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(27, '2022_10_13_125805_create_donations_table', 1),
	(28, '2022_10_13_131008_add_category_to_donations_table', 1),
	(29, '2022_10_14_191936_add_image_to_donations_table', 1),
	(30, '2022_10_17_184922_add_items_to_donations_table', 1),
	(31, '2022_10_18_183533_create_sessions_table', 1),
	(32, '2022_11_17_182712_add_user_id_to_donations_table', 1),
	(33, '2022_11_23_010544_add_phone_to_users_table', 1),
	(34, '2022_11_23_114732_create_user_info_view', 1),
	(35, '2022_11_26_233734_create_procedure_update_users_donation_number', 1),
	(36, '2022_11_26_234509_add_donation_number_to_users', 1),
	(37, '2022_11_26_234731_create_trigger_donation_created', 1),
	(38, '2022_11_27_004487_create_books', 1),
	(39, '2022_11_27_005043_create_stock', 1),
	(40, '2022_11_27_005300_create_procedure_view_user', 1),
	(41, '2022_11_28_231317_create_book_users', 1),
	(42, '2022_11_28_231636_add_user_id_to_book_users', 1),
	(43, '2022_11_28_232607_add_id_books_to_book_users', 1);

-- Copiando estrutura para tabela bancolpv.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela bancolpv.password_resets: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela bancolpv.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela bancolpv.personal_access_tokens: ~0 rows (aproximadamente)

-- Copiando estrutura para procedure bancolpv.Procedure_View_User
DELIMITER //
CREATE PROCEDURE `Procedure_View_User`()
BEGIN
            SELECT 
                cpf AS CPF,
                name AS Nome,
                type_user AS TipoUsuario,
                adress AS Endereco,
                phone AS Contato,
                email AS Email
            FROM 
                user;
            END//
DELIMITER ;

-- Copiando estrutura para tabela bancolpv.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela bancolpv.sessions: ~1 rows (aproximadamente)
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('yzKT7YeHO8P8vQmgwQT3M17P8dt59Bn9Sdwv9lVD', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidzNQS1FvdUxhRWUwcjVPMmFLZmVmTjRwQlpIbWpLTlgxbjFVdlFyUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1669685708);

-- Copiando estrutura para tabela bancolpv.stock
CREATE TABLE IF NOT EXISTS `stock` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `date_register` date NOT NULL,
  `date_update` date NOT NULL,
  `id_books` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `stock_id_books_foreign` (`id_books`),
  CONSTRAINT `stock_id_books_foreign` FOREIGN KEY (`id_books`) REFERENCES `books` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela bancolpv.stock: ~0 rows (aproximadamente)

-- Copiando estrutura para procedure bancolpv.update_users_donation_number
DELIMITER //
CREATE PROCEDURE `update_users_donation_number`(IN `idx` INT)
BEGIN

                UPDATE users set donation_number = donation_number + 1 where id = idx;

            END//
DELIMITER ;

-- Copiando estrutura para tabela bancolpv.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) unsigned DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cep` int(11) NOT NULL,
  `donation_number` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela bancolpv.users: ~0 rows (aproximadamente)

-- Copiando estrutura para trigger bancolpv.donation_created
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
DELIMITER //
CREATE TRIGGER `donation_created` AFTER INSERT ON `donations` FOR EACH ROW BEGIN

           CALL update_users_donation_number(NEW.user_id);

        END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para view bancolpv.doacoes_minas_gerais
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `doacoes_minas_gerais`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `doacoes_minas_gerais` AS SELECT `donations`.`title` AS `Título`, `users`.`city` AS `Cidade`, `users`.`cep` AS `CEP`, `donations`.`description` AS `Descrição`, `donations`.`author` AS `Autor` FROM (`users` join `donations` on(`donations`.`user_id` = `users`.`id`)) WHERE `users`.`cep` > 30000000 AND `users`.`cep` < 3999999939999999 ;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
