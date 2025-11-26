-- =============================================
-- SAPB1_Lite - 03_sample_data.sql
-- Dados de exemplo mínimos para teste
-- =============================================
USE SAPB1_Lite;
GO

-- Empresa
INSERT INTO OADM (CompnyName) VALUES ('Minha Empresa LTDA');
GO

-- Usuário admin
INSERT INTO OUSR (UserCode, UserName, Password) VALUES ('admin', 'Administrador', 'changeme');
GO

-- Moedas
INSERT INTO OCRN (CurrCode, CurrName, Rate) VALUES ('BRL', 'Real', 1);
INSERT INTO OCRN (CurrCode, CurrName, Rate) VALUES ('USD', 'Dollar', 5.00);
GO

-- Unidades
INSERT INTO OUOM (UomCode, UomName) VALUES ('UN', 'Unidade');
INSERT INTO OUOM (UomCode, UomName) VALUES ('CX', 'Caixa');
GO

-- Grupos de Itens
INSERT INTO OITB (ItmsGrpName) VALUES ('Informatica');
INSERT INTO OITB (ItmsGrpName) VALUES ('Moveis');
GO

-- Depósitos
INSERT INTO OWHS (WhsCode, WhsName) VALUES ('01', 'Deposito Principal');
INSERT INTO OWHS (WhsCode, WhsName) VALUES ('02', 'Loja Centro');
GO

-- Tipos de movimentacao
INSERT INTO OMVT (MoveType, MoveDesc, MoveSign) VALUES (1, 'Entrada por Compra', 1);
INSERT INTO OMVT (MoveType, MoveDesc, MoveSign) VALUES (2, 'Saida por Venda', -1);
GO

-- Itens
INSERT INTO OITM (ItemCode, ItemName, ItmsGrpCode, SalUnitMsr, PriceBuy, PriceSell, OnHand)
VALUES 
('PROD001', 'Notebook Exemplo', 1, 1, 2500.00, 3500.00, 50.0000),
('PROD002', 'Mouse USB', 1, 1, 10.00, 25.00, 200.0000);
GO

-- Estoque por deposito
INSERT INTO OITW (ItemCode, WhsCode, OnHand) VALUES ('PROD001', '01', 30.0000);
INSERT INTO OITW (ItemCode, WhsCode, OnHand) VALUES ('PROD001', '02', 20.0000);
INSERT INTO OITW (ItemCode, WhsCode, OnHand) VALUES ('PROD002', '01', 200.0000);
GO

-- Grupos de parceiros
INSERT INTO OCRG (GroupName, GroupType) VALUES ('Clientes Varejo', 'C');
INSERT INTO OCRG (GroupName, GroupType) VALUES ('Fornecedores', 'F');
GO

-- Parceiros (clientes e fornecedores)
INSERT INTO OCRD (CardCode, CardName, CardType, GroupCode, Phone1, Email)
VALUES 
('C0001', 'Cliente Exemplo LTDA', 'C', 1, '(11) 4000-0000', 'vendas@cliente.com'),
('F0001', 'Fornecedor Exemplo SA', 'F', 2, '(11) 5000-0000', 'compras@fornecedor.com');
GO

-- Vendedores
INSERT INTO OSLP (SlpName) VALUES ('Joao Vendas');
GO

-- Pedido de venda exemplo
INSERT INTO ORDR (DocNum, DocDate, CardCode, CardName, SlpCode, DocTotal, DocStatus)
VALUES (1, '2025-11-26', 'C0001', 'Cliente Exemplo LTDA', 1, 3775.00, 'O');
GO

-- Linhas do pedido
INSERT INTO RDR1 (DocEntry, LineNum, ItemCode, ItemDesc, Quantity, Price, LineTotal, WhsCode)
VALUES 
(1, 1, 'PROD001', 'Notebook Exemplo', 1.0000, 3500.00, 3500.00, '01'),
(1, 2, 'PROD002', 'Mouse USB', 1.0000, 25.00, 25.00, '01');
GO

-- Registro de movimentacao (saída)
INSERT INTO OINM (TransDate, ItemCode, WhsCode, MoveType, InQty, OutQty, Price, TransValue, Balance, Comments)
VALUES ('2025-11-26', 'PROD001', '01', 2, 0.0000, 1.0000, 3500.00, 3500.00, 29.0000, 'Saida pedido 1');
GO
