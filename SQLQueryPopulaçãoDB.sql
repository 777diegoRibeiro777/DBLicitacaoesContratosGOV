-- Inserir dados na tabela Fornecedores
INSERT INTO Fornecedores (FornecedorID, Nome, CNPJ, Endereco, Telefone)
VALUES 
    (1, 'Empresa A', '1234567890001', 'Rua A, 123', '(11) 1234-5678'),
    (2, 'Empresa B', '9876543210002', 'Rua B, 456', '(22) 9876-5432'),
    (3, 'Empresa C', '4567891230003', 'Rua C, 789', '(33) 4567-8901');

-- Inserir dados na tabela OrgaosGovernamentais
INSERT INTO OrgaosGovernamentais (OrgaoID, Nome, Tipo, Endereco, Telefone)
VALUES 
    (1, 'Ministério da Saúde', 'Federal', 'Esplanada dos Ministérios', '(61) 1234-5678'),
    (2, 'Secretaria de Educação', 'Estadual', 'Avenida Principal, 123', '(XX) XXXX-XXXX'),
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
    (1, 1, '2023-01-01', '2023-02-28', 'Aquisição de Medicamentos', 50000.00),
    (2, 2, '2023-02-01', '2023-03-31', 'Compra de Livros Didáticos', 30000.00),
    (3, 3, '2023-03-01', '2023-04-30', 'Serviços de Limpeza Urbana', 20000.00);

-- Inserir dados na tabela TiposContratos
INSERT INTO TiposContratos (TipoContratoID, Descricao)
VALUES 
    (1, 'Contrato de Prestação de Serviços'),
    (2, 'Contrato de Fornecimento de Bens'),
    (3, 'Contrato de Obra e Serviços de Engenharia');

-- Inserir dados na tabela StatusContratos
INSERT INTO StatusContratos (StatusContratoID, Descricao)
VALUES 
    (1, 'Ativo'),
    (2, 'Encerrado'),
    (3, 'Em Vigência');

-- Inserir dados na tabela ItensContrato
INSERT INTO ItensContrato (ItemContratoID, ContratoID, Descricao, Quantidade, ValorUnitario, ValorTotal)
VALUES 
    (1, 1, 'Serviço de Manutenção Preventiva', 10, 500.00, 5000.00),
    (2, 2, 'Fornecimento de Computadores', 20, 2000.00, 40000.00),
    (3, 3, 'Construção de Calçadas', 5, 10000.00, 50000.00);

-- Inserir dados na tabela ModalidadesLicitacao
INSERT INTO ModalidadesLicitacao (ModalidadeID, Descricao)
VALUES 
    (1, 'Concorrência Pública'),
    (2, 'Tomada de Preços'),
    (3, 'Concurso');

-- Inserir dados na tabela TiposLicitacao
INSERT INTO TiposLicitacao (TipoLicitacaoID, Descricao)
VALUES 
    (1, 'Compra'),
    (2, 'Serviços'),
    (3, 'Obras');

-- Inserir dados na tabela Funcionarios
INSERT INTO Funcionarios (FuncionarioID, Nome, Cargo, Email)
VALUES 
    (1, 'Ana Lima', 'Analista de Contratos', 'ana@example.com'),
    (2, 'Carlos Santos', 'Gerente de Licitações', 'carlos@example.com'),
    (3, 'Fernanda Oliveira', 'Coordenadora de Compras', 'fernanda@example.com');

-- Inserir dados na tabela TiposPenalidade
INSERT INTO TiposPenalidade (TipoPenalidadeID, Descricao)
VALUES 
    (1, 'Multa Financeira'),
    (2, 'Suspensão Temporária'),
    (3, 'Impedimento de Licitar');

-- Inserir dados na tabela ClassificacoesLicitacao
INSERT INTO ClassificacoesLicitacao (ClassificacaoID, Descricao)
VALUES 
    (1, 'Menor Preço'),
    (2, 'Maior Desconto'),
    (3, 'Técnica e Preço');

-- Inserir dados na tabela AcoesCorretivas
INSERT INTO AcoesCorretivas (AcaoID, ContratoID, DataAcao, Descricao)
VALUES 
    (1, 1, '2023-05-15', 'Revisão dos Prazos de Entrega'),
    (2, 2, '2023-06-20', 'Treinamento de Equipe Técnica'),
    (3, 3, '2023-07-25', 'Substituição de Material Defeituoso');


-- Inserir dados na tabela UnidadesMedida
INSERT INTO UnidadesMedida (UnidadeID, Nome, Abreviacao)
VALUES 
    (1, 'Litro', 'L'),
    (2, 'Quilograma', 'kg'),
    (3, 'Metro', 'm');

-- Inserir dados na tabela RegistroAtividades
INSERT INTO RegistroAtividades (RegistroID, ContratoID, DataRegistro, Descricao)
VALUES 
    (1, 1, '2023-05-01 08:00:00', 'Realização de Manutenção Preventiva'),
    (2, 2, '2023-06-01 09:00:00', 'Entrega dos Equipamentos'),
    (3, 3, '2023-07-01 10:00:00', 'Início da Construção das Calçadas');

-- Inserir dados na tabela PropostasAlternativas
INSERT INTO PropostasAlternativas (PropostaID, LicitacaoID, FornecedorID, Descricao, ValorProposta)
VALUES 
    (1, 1, 1, 'Proposta com prazo de entrega menor', 48000.00),
    (2, 2, 2, 'Proposta com desconto adicional', 28000.00),
    (3, 3, 3, 'Proposta com materiais alternativos', 18000.00);

-- Inserir dados na tabela AvaliacaoPropostas
INSERT INTO AvaliacaoPropostas (AvaliacaoID, LicitacaoID, FornecedorID, Nota, Comentario)
VALUES 
    (1, 1, 1, 4.5, 'Prazo de entrega atende às necessidades'),
    (2, 2, 2, 4.0, 'Desconto oferecido é atrativo'),
    (3, 3, 3, 3.8, 'Materiais alternativos serão avaliados');

-- Inserir dados na tabela DocumentosAnaliseLicitacao
INSERT INTO DocumentosAnaliseLicitacao (DocumentoID, LicitacaoID, Nome, Tipo, DataUpload)
VALUES 
    (1, 1, 'Análise Técnica', 'PDF', '2023-01-15 10:00:00'),
    (2, 2, 'Planilha de Custos', 'Excel', '2023-02-15 11:00:00'),
    (3, 3, 'Proposta Comercial', 'PDF', '2023-03-15 12:00:00');

-- Inserir dados na tabela HistoricoModificacoesContrato
INSERT INTO HistoricoModificacoesContrato (ModificacaoID, ContratoID, DataModificacao, Descricao)
VALUES 
    (1, 1, '2023-05-15 08:00:00', 'Alteração de Cláusulas Contratuais'),
    (2, 2, '2023-06-15 09:00:00', 'Inclusão de Novos Termos'),
    (3, 3, '2023-07-15 10:00:00', 'Extensão de Prazo de Execução');

-- Inserir dados na tabela HistoricoStatusLicitacao
INSERT INTO HistoricoStatusLicitacao (HistoricoID, LicitacaoID, Status, DataAlteracao)
VALUES 
    (1, 1, 'Em Andamento', '2023-01-15 08:00:00'),
    (2, 2, 'Finalizada', '2023-02-15 09:00:00'),
    (3, 3, 'Em Análise', '2023-03-15 10:00:00');

-- Inserir dados na tabela DesistentesLicitacao
INSERT INTO DesistentesLicitacao (LicitacaoID, FornecedorID, DataDesistencia, Motivo)
VALUES 
    (1, 2, '2023-01-20 08:00:00', 'Inviabilidade de Prazo'),
    (2, 3, '2023-02-20 09:00:00', 'Condições Comerciais Desfavoráveis'),
    (3, 1, '2023-03-20 10:00:00', 'Necessidade de Foco em Outro Segmento');

-- Inserir dados na tabela AditivosContrato
INSERT INTO AditivosContrato (AditivoID, ContratoID, DataAditivo, Descricao, ValorAditivo)
VALUES 
    (1, 1, '2023-06-01', 'Aditivo de prazo para conclusão', 5000.00),
    (2, 2, '2023-07-01', 'Aditivo de aumento de escopo', 3000.00),
    (3, 3, '2023-08-01', 'Aditivo de prorrogação de prazo', 2000.00);

-- Inserir dados na tabela PenalidadesContrato
INSERT INTO PenalidadesContrato (PenalidadeID, ContratoID, DataAplicacao, Descricao, ValorPenalidade)
VALUES 
    (1, 1, '2023-06-15', 'Atraso na entrega', 1000.00),
    (2, 2, '2023-07-15', 'Execução abaixo do padrão', 2000.00),
    (3, 3, '2023-08-15', 'Não cumprimento de cláusula', 1500.00);

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
    (1, 1, '2023-06-15', 'Conformidade', 'Sem observações adicionais'),
    (2, 2, '2023-07-15', 'Parcialmente Conformidade', 'Observar o item 3.2'),
    (3, 3, '2023-08-15', 'Não Conformidade', 'Revisão necessária');

-- Inserir dados na tabela DocumentacaoAuditoria
INSERT INTO DocumentacaoAuditoria (DocumentoID, AuditoriaID, Nome, Tipo, DataUpload)
VALUES 
    (1, 1, 'Relatório de Auditoria', 'PDF', '2023-06-20 08:00:00'),
    (2, 2, 'Planilha de Verificação', 'Excel', '2023-07-20 09:00:00'),
    (3, 3, 'Registro Fotográfico', 'JPG', '2023-08-20 10:00:00');

-- Inserir dados na tabela DocumentosContrato
INSERT INTO DocumentosContrato (DocumentoID, ContratoID, Nome, Tipo, DataUpload)
VALUES 
    (1, 1, 'Contrato Original', 'PDF', '2023-01-01 08:00:00'),
    (2, 2, 'Aditivo de Prazo', 'PDF', '2023-02-01 09:00:00'),
    (3, 3, 'Termo Aditivo', 'PDF', '2023-03-01 10:00:00');