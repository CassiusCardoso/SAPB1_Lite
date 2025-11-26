```markdown
# SAPB1_Lite (mini) — Scripts SQL

Este repositório contém scripts SQL mínimos para criar um banco de dados simplificado inspirado no SAP Business One, para uso de teste/desenvolvimento local.

Arquivos incluídos:
- sql/01_create_db.sql — cria o banco SAPB1_Lite
- sql/02_tables.sql — cria as tabelas principais (itens, parceiros, pedidos, estoque)
- sql/03_sample_data.sql — dados de exemplo mínimos para testes

Ordem de execução:
1. sql/01_create_db.sql
2. sql/02_tables.sql
3. sql/03_sample_data.sql

Requisitos:
- Microsoft SQL Server (2016+ recomendado)
- Execute os scripts no SQL Server Management Studio (SSMS) ou em ferramenta equivalente.

Observações:
- Estes scripts são intencionalmente simples e para uso local / desenvolvimento. Não considerar completo para produção.
- Posso expandir (adicionar financeiro, NF-e, views e procedures) se quiser.
```
