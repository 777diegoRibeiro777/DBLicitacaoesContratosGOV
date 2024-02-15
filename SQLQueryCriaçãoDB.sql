-- Criar o banco de dados
CREATE DATABASE ContratosLicitacoesGov;

-- Usar o banco de dados criado
USE ContratosLicitacoesGov;

-- Criar a tabela de fornecedores
CREATE TABLE Fornecedores (
    FornecedorID INT PRIMARY KEY,
    Nome NVARCHAR(100),
    CNPJ NVARCHAR(20),
    Endereco NVARCHAR(200),
    Telefone NVARCHAR(20)
);

-- Criar a tabela de órgãos governamentais
CREATE TABLE OrgaosGovernamentais (
    OrgaoID INT PRIMARY KEY,
    Nome NVARCHAR(100),
    Tipo NVARCHAR(50),
    Endereco NVARCHAR(200),
    Telefone NVARCHAR(20)
);

-- Criar a tabela de contratos
CREATE TABLE Contratos (
    ContratoID INT PRIMARY KEY,
    OrgaoID INT,
    FornecedorID INT,
    DataInicio DATE,
    DataFim DATE,
    Valor DECIMAL(18, 2),
    FOREIGN KEY (OrgaoID) REFERENCES OrgaosGovernamentais(OrgaoID),
    FOREIGN KEY (FornecedorID) REFERENCES Fornecedores(FornecedorID)
);

-- Criar a tabela de licitações
CREATE TABLE Licitacoes (
    LicitacaoID INT PRIMARY KEY,
    OrgaoID INT,
    DataInicio DATE,
    DataFim DATE,
    Descricao NVARCHAR(500),
    ValorEstimado DECIMAL(18, 2),
    FOREIGN KEY (OrgaoID) REFERENCES OrgaosGovernamentais(OrgaoID)
);

-- Criar a tabela de participantes das licitações
CREATE TABLE ParticipantesLicitacao (
    LicitacaoID INT,
    FornecedorID INT,
    ValorProposta DECIMAL(18, 2),
    PRIMARY KEY (LicitacaoID, FornecedorID),
    FOREIGN KEY (LicitacaoID) REFERENCES Licitacoes(LicitacaoID),
    FOREIGN KEY (FornecedorID) REFERENCES Fornecedores(FornecedorID)
);

-- Tabela de tipos de contratos
CREATE TABLE TiposContratos (
    TipoContratoID INT PRIMARY KEY,
    Descricao NVARCHAR(100)
);

-- Tabela de status de contratos
CREATE TABLE StatusContratos (
    StatusContratoID INT PRIMARY KEY,
    Descricao NVARCHAR(100)
);

-- Tabela de itens dos contratos
CREATE TABLE ItensContrato (
    ItemContratoID INT PRIMARY KEY,
    ContratoID INT,
    Descricao NVARCHAR(200),
    Quantidade INT,
    ValorUnitario DECIMAL(18, 2),
    ValorTotal DECIMAL(18, 2),
    FOREIGN KEY (ContratoID) REFERENCES Contratos(ContratoID)
);

-- Tabela de modalidades de licitações
CREATE TABLE ModalidadesLicitacao (
    ModalidadeID INT PRIMARY KEY,
    Descricao NVARCHAR(100)
);

-- Tabela de documentos relacionados aos contratos
CREATE TABLE DocumentosContrato (
    DocumentoID INT PRIMARY KEY,
    ContratoID INT,
    Nome NVARCHAR(200),
    Tipo NVARCHAR(50),
    DataUpload DATETIME,
    FOREIGN KEY (ContratoID) REFERENCES Contratos(ContratoID)
);

-- Tabela de histórico de modificações nos contratos
CREATE TABLE HistoricoModificacoesContrato (
    ModificacaoID INT PRIMARY KEY,
    ContratoID INT,
    DataModificacao DATETIME,
    Descricao NVARCHAR(500),
    FOREIGN KEY (ContratoID) REFERENCES Contratos(ContratoID)
);

-- Tabela de vencedores das licitações
CREATE TABLE VencedoresLicitacao (
    LicitacaoID INT,
    FornecedorID INT,
    ValorProposta DECIMAL(18, 2),
    PRIMARY KEY (LicitacaoID, FornecedorID),
    FOREIGN KEY (LicitacaoID) REFERENCES Licitacoes(LicitacaoID),
    FOREIGN KEY (FornecedorID) REFERENCES Fornecedores(FornecedorID)
);

-- Tabela de documentos relacionados às licitações
CREATE TABLE DocumentosLicitacao (
    DocumentoID INT PRIMARY KEY,
    LicitacaoID INT,
    Nome NVARCHAR(200),
    Tipo NVARCHAR(50),
    DataUpload DATETIME,
    FOREIGN KEY (LicitacaoID) REFERENCES Licitacoes(LicitacaoID)
);

-- Tabela de tipos de licitações
CREATE TABLE TiposLicitacao (
    TipoLicitacaoID INT PRIMARY KEY,
    Descricao NVARCHAR(100)
);

-- Tabela de funcionários responsáveis pelos contratos
CREATE TABLE Funcionarios (
    FuncionarioID INT PRIMARY KEY,
    Nome NVARCHAR(100),
    Cargo NVARCHAR(100),
    Email NVARCHAR(100)
);

-- Tabela de histórico de aprovações de contratos
CREATE TABLE HistoricoAprovacoesContrato (
    AprovacaoID INT PRIMARY KEY,
    ContratoID INT,
    FuncionarioID INT,
    DataAprovacao DATETIME,
    Comentario NVARCHAR(500),
    FOREIGN KEY (ContratoID) REFERENCES Contratos(ContratoID),
    FOREIGN KEY (FuncionarioID) REFERENCES Funcionarios(FuncionarioID)
);

-- Tabela de aditivos contratuais
CREATE TABLE AditivosContrato (
    AditivoID INT PRIMARY KEY,
    ContratoID INT,
    DataAditivo DATETIME,
    Descricao NVARCHAR(500),
    ValorAditivo DECIMAL(18, 2),
    FOREIGN KEY (ContratoID) REFERENCES Contratos(ContratoID)
);

-- Tabela de penalidades dos contratos
CREATE TABLE PenalidadesContrato (
    PenalidadeID INT PRIMARY KEY,
    ContratoID INT,
    DataAplicacao DATETIME,
    Descricao NVARCHAR(500),
    ValorPenalidade DECIMAL(18, 2),
    FOREIGN KEY (ContratoID) REFERENCES Contratos(ContratoID)
);

-- Tabela de tipos de penalidades
CREATE TABLE TiposPenalidade (
    TipoPenalidadeID INT PRIMARY KEY,
    Descricao NVARCHAR(100)
);

-- Tabela de pagamentos dos contratos
CREATE TABLE PagamentosContrato (
    PagamentoID INT PRIMARY KEY,
    ContratoID INT,
    DataPagamento DATETIME,
    ValorPagamento DECIMAL(18, 2),
    FOREIGN KEY (ContratoID) REFERENCES Contratos(ContratoID)
);

-- Tabela de notas fiscais relacionadas aos pagamentos
CREATE TABLE NotasFiscais (
    NotaFiscalID INT PRIMARY KEY,
    PagamentoID INT,
    Numero NVARCHAR(50),
    DataEmissao DATETIME,
    ValorTotal DECIMAL(18, 2),
    FOREIGN KEY (PagamentoID) REFERENCES PagamentosContrato(PagamentoID)
);

-- Tabela de histórico de status das licitações
CREATE TABLE HistoricoStatusLicitacao (
    HistoricoID INT PRIMARY KEY,
    LicitacaoID INT,
    Status NVARCHAR(100),
    DataAlteracao DATETIME,
    FOREIGN KEY (LicitacaoID) REFERENCES Licitacoes(LicitacaoID)
);

-- Tabela de documentos complementares das licitações
CREATE TABLE DocumentosComplementaresLicitacao (
    DocumentoID INT PRIMARY KEY,
    LicitacaoID INT,
    Nome NVARCHAR(200),
    Tipo NVARCHAR(50),
    DataUpload DATETIME,
    FOREIGN KEY (LicitacaoID) REFERENCES Licitacoes(LicitacaoID)
);

-- Tabela de participantes desistentes nas licitações
CREATE TABLE DesistentesLicitacao (
    LicitacaoID INT,
    FornecedorID INT,
    DataDesistencia DATETIME,
    Motivo NVARCHAR(500),
    PRIMARY KEY (LicitacaoID, FornecedorID),
    FOREIGN KEY (LicitacaoID) REFERENCES Licitacoes(LicitacaoID),
    FOREIGN KEY (FornecedorID) REFERENCES Fornecedores(FornecedorID)
);

-- Tabela de departamentos
CREATE TABLE Departamentos (
    DepartamentoID INT PRIMARY KEY,
    Nome NVARCHAR(100)
);

-- Tabela de unidades de medida
CREATE TABLE UnidadesMedida (
    UnidadeID INT PRIMARY KEY,
    Nome NVARCHAR(50),
    Abreviacao NVARCHAR(10)
);

-- Tabela de registros de atividades nos contratos
CREATE TABLE RegistroAtividades (
    RegistroID INT PRIMARY KEY,
    ContratoID INT,
    DataRegistro DATETIME,
    Descricao NVARCHAR(500),
    FOREIGN KEY (ContratoID) REFERENCES Contratos(ContratoID)
);

-- Tabela de classificações das licitações
CREATE TABLE ClassificacoesLicitacao (
    ClassificacaoID INT PRIMARY KEY,
    Descricao NVARCHAR(100)
);

-- Tabela de histórico de preços de itens
CREATE TABLE HistoricoPrecosItens (
    HistoricoID INT PRIMARY KEY,
    ItemContratoID INT,
    DataAtualizacao DATETIME,
    ValorAnterior DECIMAL(18, 2),
    NovoValor DECIMAL(18, 2),
    FOREIGN KEY (ItemContratoID) REFERENCES ItensContrato(ItemContratoID)
);

-- Tabela de propostas alternativas nas licitações
CREATE TABLE PropostasAlternativas (
    PropostaID INT PRIMARY KEY,
    LicitacaoID INT,
    FornecedorID INT,
    Descricao NVARCHAR(500),
    ValorProposta DECIMAL(18, 2),
    FOREIGN KEY (LicitacaoID) REFERENCES Licitacoes(LicitacaoID),
    FOREIGN KEY (FornecedorID) REFERENCES Fornecedores(FornecedorID)
);

-- Tabela de avaliação de propostas nas licitações
CREATE TABLE AvaliacaoPropostas (
    AvaliacaoID INT PRIMARY KEY,
    LicitacaoID INT,
    FornecedorID INT,
    Nota DECIMAL(5, 2),
    Comentario NVARCHAR(500),
    FOREIGN KEY (LicitacaoID) REFERENCES Licitacoes(LicitacaoID),
    FOREIGN KEY (FornecedorID) REFERENCES Fornecedores(FornecedorID)
);

-- Tabela de documentos de análise nas licitações
CREATE TABLE DocumentosAnaliseLicitacao (
    DocumentoID INT PRIMARY KEY,
    LicitacaoID INT,
    Nome NVARCHAR(200),
    Tipo NVARCHAR(50),
    DataUpload DATETIME,
    FOREIGN KEY (LicitacaoID) REFERENCES Licitacoes(LicitacaoID)
);

-- Tabela de ações corretivas nos contratos
CREATE TABLE AcoesCorretivas (
    AcaoID INT PRIMARY KEY,
    ContratoID INT,
    DataAcao DATETIME,
    Descricao NVARCHAR(500),
    FOREIGN KEY (ContratoID) REFERENCES Contratos(ContratoID)
);

-- Tabela de auditorias nos contratos
CREATE TABLE AuditoriasContrato (
    AuditoriaID INT PRIMARY KEY,
    ContratoID INT,
    DataAuditoria DATETIME,
    Resultado NVARCHAR(100),
    Observacoes NVARCHAR(500),
    FOREIGN KEY (ContratoID) REFERENCES Contratos(ContratoID)
);

-- Tabela de documentação de auditorias
CREATE TABLE DocumentacaoAuditoria (
    DocumentoID INT PRIMARY KEY,
    AuditoriaID INT,
    Nome NVARCHAR(200),
    Tipo NVARCHAR(50),
    DataUpload DATETIME,
    FOREIGN KEY (AuditoriaID) REFERENCES AuditoriasContrato(AuditoriaID)
);