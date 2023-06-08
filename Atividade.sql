CREATE TABLE empregado(
	num_empregado INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nome_empregado VARCHAR(50) NOT NULL,
    num_departamento INT NOT NULL,
    nome_departamento VARCHAR(50) NOT NULL,
    num_gerente INT NOT NULL,
    nome_gerente VARCHAR(50) NOT NULL,
    num_projeto INT NOT NULL,
    inicio_projeto DATE,
    horas_trabalhadas INT NOT NULL
);

CREATE TABLE ordem_compra(
	cod_ordem_compra INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    data_emissao DATE,
    cod_fornecedor INT NOT NULL,
    num_fornecedor INT NOT NULL,
    endereco_fornecedor VARCHAR(150),
    cod_material INT NOT NULL,
    descricao_material VARCHAR(150),
    Qtd_comprada INT,
    valor_unitario INT NOT NULL,
    valor_total_item INT,
    valor_totalordem INT
);

CREATE TABLE tabela_notas_fiscais(
	num_NF INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    serie INT, 
    data_emissao DATE,
    cod_cliente INT NOT NULL,
    nome_cliente VARCHAR(50) NOT NULL, 
    endereco_cliente VARCHAR(150) NOT NULL,
    CDG_cliente INT,
    codigo_mercadoria INT NOT NULL,
    descricao_mercadoria VARCHAR(150) NOT NULL,
    quantidade_vendida INT,
    preco_venda INT,
    total_venda_mercadoria INT,
    total_geral_nota INT
)