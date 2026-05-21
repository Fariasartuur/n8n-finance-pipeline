# 📊 Automated Financial ETL Pipeline & BI Dashboard

Um pipeline automatizado de ponta a ponta para extração, higienização, categorização inteligente (utilizando IA local) e visualização de faturas de cartão de crédito (Nubank e PicPay). 

O objetivo deste projeto é eliminar o trabalho manual de preenchimento de planilhas financeiras, consolidando os dados em um banco relacional seguro e gerando insights acionáveis por meio de um painel de Business Intelligence.

---

## 🏗️ Arquitetura do Projeto

O fluxo de dados segue a arquitetura clássica de um pipeline de ETL (Extract, Transform, Load):

```text
[ Gmail (PDFs) ] ➡️ [ n8n Orquestrador ] ➡️ [ JavaScript (Limpeza) ]
                                                    ⬇️
[ Power BI ] ⬅️ [ PostgreSQL ] ⬅️ [ Upsert ] ⬅️ [ Ollama (Llama 3.2 Local) ]
