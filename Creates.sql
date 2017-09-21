-- MySQL Script generated by MySQL Workbench
-- Fri May 26 10:22:13 2017
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering


-- -----------------------------------------------------
-- Table `mydb`.`Editora`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Editora (
  id INT NOT NULL,
  nome VARCHAR(45) NULL,
  PRIMARY KEY (id));


-- -----------------------------------------------------
-- Table `mydb`.`Livro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Livro (
  id INT NOT NULL,
  titulo VARCHAR(45) NULL,
  edicao INT NULL,
  preco DECIMAL NULL,
  ideditora INT NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_Livro_Editora1
    FOREIGN KEY (idEditora)
    REFERENCES Editora (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `mydb`.`Autor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Autor (
  id INT NOT NULL,
  nome VARCHAR(45) NULL,
  PRIMARY KEY (id));


-- -----------------------------------------------------
-- Table `mydb`.`Livro_Autor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Livro_Autor (
  idLivro INT NOT NULL,
  idAutor INT NOT NULL,
  PRIMARY KEY (idLivro, idAutor),
  CONSTRAINT fk_Livro_has_Autor_Livro
    FOREIGN KEY (idLivro)
    REFERENCES Livro(id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_Livro_has_Autor_Autor1
    FOREIGN KEY (idAutor)
    REFERENCES Autor(id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `mydb`.`Pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Pedido (
  idPedido INT NOT NULL,
  PRIMARY KEY (idPedido));


-- -----------------------------------------------------
-- Table `mydb`.`ItemPedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS ItemPedido (
  quantidade INT NULL,
  idLivro INT NOT NULL,
  idPedido INT NOT NULL,
  PRIMARY KEY (idLivro, idPedido),
  CONSTRAINT fk_ItemPedido_Livro1
    FOREIGN KEY (idLivro)
    REFERENCES Livro(id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_ItemPedido_Pedido1
    FOREIGN KEY (idPedido)
    REFERENCES Pedido (idPedido)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `mydb`.`Estoque`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Estoque (
  id INT NOT NULL,
  idProduto INT NULL,
  quantidade INT NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_estoqueLivro
    FOREIGN KEY (idProduto)
    REFERENCES Livro (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

