/* cria o generator para o campo id usuario */
create generator gen_id_usuario;

/* cria a triger para usuario */
SET TERM ^ ;

CREATE TRIGGER insere_id_usuario for usuario active 
 BEFORE INSERT POSITION 0
AS 
BEGIN 
    new.ID_USUARIO=gen_id(gen_id_usuario,1);
END^

SET TERM ; ^


/* cria o generator para o campo id cliente */
create generator gen_id_cliente;

/* cria a triger para cliente */
SET TERM ^ ;

CREATE TRIGGER insere_id_cliente for cliente active 
 BEFORE INSERT POSITION 0
AS 
BEGIN 
    new.ID_cliente=gen_id(gen_id_cliente,1);
END^

SET TERM ; ^


/* cria o generator para ocampo id empresa */
 CREATE GENERATOR GEN_ID_EMPRESA;

/* cria triger para empresa */
SET TERM ^ ;

CREATE TRIGGER INSERE_ID_EMPRESA FOR EMPRESA ACTIVE 
 BEFORE INSERT POSITION 0 
AS 
BEGIN 
    NEW.ID_EMPRESA=gen_id(GEN_ID_EMPRESA,1);
END^

SET TERM ; ^


/* cria o generator para o campo id fornecedor */
 CREATE GENERATOR GEN_ID_FORNECEDOR;

/* cria a triger para fornecedor */
SET TERM ^ ;

CREATE TRIGGER INSERE_ID_FORNECEDOR FOR FORNECEDOR ACTIVE 
 BEFORE INSERT POSITION 0 
AS 
BEGIN 
    NEW.ID_FORNECEDOR=gen_id(GEN_ID_FORNECEDOR,1);
END^

SET TERM ; ^


/* cria o generator para o campo id produto */
 CREATE GENERATOR GEN_ID_PRODUTO;

/* cria a triger para produto */
SET TERM ^ ;

CREATE TRIGGER INSERE_ID_PRODUTO FOR PRODUTO ACTIVE 
 BEFORE INSERT POSITION 0 
AS 
BEGIN 
    NEW.ID_PRODUTO=gen_id(GEN_ID_PRODUTO,1);
END^

SET TERM ; ^


/* cria o generator para o campo id forma de pagamento */
 CREATE GENERATOR GEN_ID_FORMA_PGTO;

/* cria a triger para pagamento */
SET TERM ^ ;

CREATE TRIGGER INSERE_ID_FORMA_PGTO FOR FORMA_PGTO ACTIVE 
 BEFORE INSERT POSITION 0 
AS 
BEGIN 
    NEW.ID_FORMA_PGTO=gen_id(GEN_ID_FORMA_PGTO,1);
END^

SET TERM ; ^


/* cria o generator para o campo id compra */
 CREATE GENERATOR GEN_ID_COMPRA;

/* cria a triger para compra */
SET TERM ^ ;

CREATE TRIGGER INSERE_ID_COMPRA FOR COMPRA ACTIVE 
 BEFORE INSERT POSITION 0 
AS 
BEGIN 
    NEW.ID_COMPRA=gen_id(GEN_ID_COMPRA,1);
END^

SET TERM ; ^


/* cria o generator para o campo id venda */
 CREATE GENERATOR GEN_ID_VENDA;

/* cria a triger para venda */
SET TERM ^ ;

CREATE TRIGGER INSERE_ID_VENDA FOR VENDA ACTIVE 
 BEFORE INSERT POSITION 0 
AS 
BEGIN 
    NEW.ID_VENDA=gen_id(GEN_ID_VENDA,1);
END^

SET TERM ; ^