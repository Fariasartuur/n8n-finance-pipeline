CREATE TABLE transacoes_cartao (
    id SERIAL PRIMARY KEY,
    banco VARCHAR(50) NULL,
    mes_referencia VARCHAR(20) NULL,
    ano_referencia VARCHAR(4) NULL,
    data_transacao DATE NULL,
    estabelecimento VARCHAR(255) NULL,
    valor NUMERIC(10,2) NULL,
    data_importacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP NULL,
    categoria VARCHAR(100) NULL,
    
    CONSTRAINT uq_banco_data_estabelecimento_valor UNIQUE (banco, data_transacao, estabelecimento, valor)
);

CREATE INDEX idx_data_transacao_desc ON transacoes_cartao (data_transacao DESC);
