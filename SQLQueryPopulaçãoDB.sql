-- Inserir dados na tabela Fornecedores
INSERT INTO Fornecedores (FornecedorID, Nome, CNPJ, Endereco, Telefone)
VALUES 
    (1, 'Empresa A', '1234567890001', 'Rua A, 123', '(11) 1234-5678'),
    (2, 'Empresa B', '9876543210002', 'Rua B, 456', '(22) 9876-5432'),
    (3, 'Empresa C', '4567891230003', 'Rua C, 789', '(33) 4567-8901');

-- Inserir dados na tabela OrgaosGovernamentais
INSERT INTO OrgaosGovernamentais (OrgaoID, Nome, Tipo, Endereco, Telefone)
VALUES 
    (1, 'Minist�rio da Sa�de', 'Federal', 'Esplanada dos Minist�rios', '(61) 1234-5678'),
    (2, 'Secretaria de Educa��o', 'Estadual', 'Avenida Principal, 123', '(XX) XXXX-XXXX'),
    (3, 'Prefeitura Municipal', 'Municipal', 'Rua da Prefeitura, 456', '(XX) XXXX-XXXX');

-- Inserir dados na tabela Contratos
INSERT INTO Contratos (ContratoID, OrgaoID, FornecedorID, DataInicio, DataFim, Valor)
VALUES 
    (1, 1, 1, '2023-01-01', '2023-12-31', 100000.00),
    (2, 2, 2, '2023-02-01', '2023-11-30', 75000.00),
    (3, 3, 3, '2023-03-01', '2023-10-31', 50000.00);

-- Inserir dados na tabela Licitacoes
INSERT INTO Licitacoes (LicitacaoID, OrgaoID, DataInicio, DataFim, Descricao, ValorEstimado)
VALUES 
    (1, 1, '2023-01-01', '2023-02-28', 'Aquisi��o de Medicamentos', 50000.00),
    (2, 2, '2023-02-01', '2023-03-31', 'Compra de Livros Did�ticos', 30000.00),
    (3, 3, '2023-03-01', '2023-04-30', 'Servi�os de Limpeza Urbana', 20000.00);

-- Inserir dados na tabela TiposContratos
INSERT INTO TiposContratos (TipoContratoID, Descricao)
VALUES 
    (1, 'Contrato de Presta��o de Servi�os'),
    (2, 'Contrato de Fornecimento de Bens'),
    (3, 'Contrato de Obra e Servi�os de Engenharia');

-- Inserir dados na tabela StatusContratos
INSERT INTO StatusContratos (StatusContratoID, Descricao)
VALUES 
    (1, 'Ativo'),
    (2, 'Encerrado'),
    (3, 'Em Vig�ncia');

-- Inserir dados na tabela ItensContrato
INSERT INTO ItensContrato (ItemContratoID, ContratoID, Descricao, Quantidade, ValorUnitario, ValorTotal)
VALUES 
    (1, 1, 'Servi�o de Manuten��o Preventiva', 10, 500.00, 5000.00),
    (2, 2, 'Fornecimento de Computadores', 20, 2000.00, 40000.00),
    (3, 3, 'Constru��o de Cal�adas', 5, 10000.00, 50000.00);

-- Inserir dados na tabela ModalidadesLicitacao
INSERT INTO ModalidadesLicitacao (ModalidadeID, Descricao)
VALUES 
    (1, 'Concorr�ncia P�blica'),
    (2, 'Tomada de Pre�os'),
    (3, 'Concurso');

-- Inserir dados na tabela TiposLicitacao
INSERT INTO TiposLicitacao (TipoLicitacaoID, Descricao)
VALUES 
    (1, 'Compra'),
    (2, 'Servi�os'),
    (3, 'Obras');

-- Inserir dados na tabela Funcionarios
INSERT INTO Funcionarios (FuncionarioID, Nome, Cargo, Email)
VALUES 
    (1, 'Ana Lima', 'Analista de Contratos', 'ana@example.com'),
    (2, 'Carlos Santos', 'Gerente de Licita��es', 'carlos@example.com'),
    (3, 'Fernanda Oliveira', 'Coordenadora de Compras', 'fernanda@example.com');

-- Inserir dados na tabela TiposPenalidade
INSERT INTO TiposPenalidade (TipoPenalidadeID, Descricao)
VALUES 
    (1, 'Multa Financeira'),
    (2, 'Suspens�o Tempor�ria'),
    (3, 'Impedimento de Licitar');

-- Inserir dados na tabela ClassificacoesLicitacao
INSERT INTO ClassificacoesLicitacao (ClassificacaoID, Descricao)
VALUES 
    (1, 'Menor Pre�o'),
    (2, 'Maior Desconto'),
    (3, 'T�cnica e Pre�o');

-- Inserir dados na tabela AcoesCorretivas
INSERT INTO AcoesCorretivas (AcaoID, ContratoID, DataAcao, Descricao)
VALUES 
    (1, 1, '2023-05-15', 'Revis�o dos Prazos de Entrega'),
    (2, 2, '2023-06-20', 'Treinamento de Equipe T�cnica'),
    (3, 3, '2023-07-25', 'Substitui��o de Material Defeituoso');


-- Inserir dados na tabela UnidadesMedida
INSERT INTO UnidadesMedida (UnidadeID, Nome, Abreviacao)
VALUES 
    (1, 'Litro', 'L'),
    (2, 'Quilograma', 'kg'),
    (3, 'Metro', 'm');

-- Inserir dados na tabela RegistroAtividades
INSERT INTO RegistroAtividades (RegistroID, ContratoID, DataRegistro, Descricao)
VALUES 
    (1, 1, '2023-05-01 08:00:00', 'Realiza��o de Manuten��o Preventiva'),
    (2, 2, '2023-06-01 09:00:00', 'Entrega dos Equipamentos'),
    (3, 3, '2023-07-01 10:00:00', 'In�cio da Constru��o das Cal�adas');

-- Inserir dados na tabela PropostasAlternativas
INSERT INTO PropostasAlternativas (PropostaID, LicitacaoID, FornecedorID, Descricao, ValorProposta)
VALUES 
    (1, 1, 1, 'Proposta com prazo de entrega menor', 48000.00),
    (2, 2, 2, 'Proposta com desconto adicional', 28000.00),
    (3, 3, 3, 'Proposta com materiais alternativos', 18000.00);

-- Inserir dados na tabela AvaliacaoPropostas
INSERT INTO AvaliacaoPropostas (AvaliacaoID, LicitacaoID, FornecedorID, Nota, Comentario)
VALUES 
    (1, 1, 1, 4.5, 'Prazo de entrega atende �s necessidades'),
    (2, 2, 2, 4.0, 'Desconto oferecido � atrativo'),
    (3, 3, 3, 3.8, 'Materiais alternativos ser�o avaliados');

-- Inserir dados na tabela DocumentosAnaliseLicitacao
INSERT INTO DocumentosAnaliseLicitacao (DocumentoID, LicitacaoID, Nome, Tipo, DataUpload)
VALUES 
    (1, 1, 'An�lise T�cnica', 'PDF', '2023-01-15 10:00:00'),
    (2, 2, 'Planilha de Custos', 'Excel', '2023-02-15 11:00:00'),
    (3, 3, 'Proposta Comercial', 'PDF', '2023-03-15 12:00:00');

-- Inserir dados na tabela HistoricoModificacoesContrato
INSERT INTO HistoricoModificacoesContrato (ModificacaoID, ContratoID, DataModificacao, Descricao)
VALUES 
    (1, 1, '2023-05-15 08:00:00', 'Altera��o de Cl�usulas Contratuais'),
    (2, 2, '2023-06-15 09:00:00', 'Inclus�o de Novos Termos'),
    (3, 3, '2023-07-15 10:00:00', 'Extens�o de Prazo de Execu��o');

-- Inserir dados na tabela HistoricoStatusLicitacao
INSERT INTO HistoricoStatusLicitacao (HistoricoID, LicitacaoID, Status, DataAlteracao)
VALUES 
    (1, 1, 'Em Andamento', '2023-01-15 08:00:00'),
    (2, 2, 'Finalizada', '2023-02-15 09:00:00'),
    (3, 3, 'Em An�lise', '2023-03-15 10:00:00');

-- Inserir dados na tabela DesistentesLicitacao
INSERT INTO DesistentesLicitacao (LicitacaoID, FornecedorID, DataDesistencia, Motivo)
VALUES 
    (1, 2, '2023-01-20 08:00:00', 'Inviabilidade de Prazo'),
    (2, 3, '2023-02-20 09:00:00', 'Condi��es Comerciais Desfavor�veis'),
    (3, 1, '2023-03-20 10:00:00', 'Necessidade de Foco em Outro Segmento');

-- Inserir dados na tabela AditivosContrato
INSERT INTO AditivosContrato (AditivoID, ContratoID, DataAditivo, Descricao, ValorAditivo)
VALUES 
    (1, 1, '2023-06-01', 'Aditivo de prazo para conclus�o', 5000.00),
    (2, 2, '2023-07-01', 'Aditivo de aumento de escopo', 3000.00),
    (3, 3, '2023-08-01', 'Aditivo de prorroga��o de prazo', 2000.00);

-- Inserir dados na tabela PenalidadesContrato
INSERT INTO PenalidadesContrato (PenalidadeID, ContratoID, DataAplicacao, Descricao, ValorPenalidade)
VALUES 
    (1, 1, '2023-06-15', 'Atraso na entrega', 1000.00),
    (2, 2, '2023-07-15', 'Execu��o abaixo do padr�o', 2000.00),
    (3, 3, '2023-08-15', 'N�o cumprimento de cl�usula', 1500.00);

-- Inserir dados na tabela PagamentosContrato
INSERT INTO PagamentosContrato (PagamentoID, ContratoID, DataPagamento, ValorPagamento)
VALUES 
    (1, 1, '2023-06-30', 2000.00),
    (2, 2, '2023-07-31', 3000.00),
    (3, 3, '2023-08-31', 2500.00);

-- Inserir dados na tabela NotasFiscais
INSERT INTO NotasFiscais (NotaFiscalID, PagamentoID, Numero, DataEmissao, ValorTotal)
VALUES 
    (1, 1, 'NF123', '2023-06-30', 2000.00),
    (2, 2, 'NF456', '2023-07-31', 3000.00),
    (3, 3, 'NF789', '2023-08-31', 2500.00);

-- Inserir dados na tabela AuditoriasContrato
INSERT INTO AuditoriasContrato (AuditoriaID, ContratoID, DataAuditoria, Resultado, Observacoes)
VALUES 
    (1, 1, '2023-06-15', 'Conformidade', 'Sem observa��es adicionais'),
    (2, 2, '2023-07-15', 'Parcialmente Conformidade', 'Observar o item 3.2'),
    (3, 3, '2023-08-15', 'N�o Conformidade', 'Revis�o necess�ria');

-- Inserir dados na tabela DocumentacaoAuditoria
INSERT INTO DocumentacaoAuditoria (DocumentoID, AuditoriaID, Nome, Tipo, DataUpload)
VALUES 
    (1, 1, 'Relat�rio de Auditoria', 'PDF', '2023-06-20 08:00:00'),
    (2, 2, 'Planilha de Verifica��o', 'Excel', '2023-07-20 09:00:00'),
    (3, 3, 'Registro Fotogr�fico', 'JPG', '2023-08-20 10:00:00');

-- Inserir dados na tabela DocumentosContrato
INSERT INTO DocumentosContrato (DocumentoID, ContratoID, Nome, Tipo, DataUpload)
VALUES 
    (1, 1, 'Contrato Original', 'PDF', '2023-01-01 08:00:00'),
    (2, 2, 'Aditivo de Prazo', 'PDF', '2023-02-01 09:00:00'),
    (3, 3, 'Termo Aditivo', 'PDF', '2023-03-01 10:00:00');