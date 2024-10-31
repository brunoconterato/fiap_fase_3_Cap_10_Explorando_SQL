## Dicionário de Dados (Oracle)

### Tabela: States

- Descrição: Armazena informações sobre os estados brasileiros, incluindo nome completo e abreviação.
- Volume Esperado: Baixo (26 estados + DF)
- Tempo de retenção: Indefinido 
- Rotina de limpeza: Nenhuma
- Colunas:
  | Nome da Tabela | Nome do Campo | Descrição | Tipo de Dado (Oracle) | Tamanho | Constraints |
  |---|---|---|---|---|---|
  | States | id | Identificador único para cada estado. | NUMBER | | PK, NN |
  | States | name | Nome completo do estado. | VARCHAR2 | 255 | NN |
  | States | abbreviation | Sigla do estado, com duas letras. | CHAR | 2 | NN |

### Tabela: Crops

- Descrição: Armazena informações sobre os tipos de culturas agrícolas, incluindo nome e categoria.
- Volume Esperado: Baixo (poucas dezenas de culturas)
- Tempo de retenção: Indefinido
- Rotina de limpeza: Nenhuma
- Colunas:
    | Nome da Tabela | Nome do Campo | Descrição                                            | Tipo de Dado (Oracle) | Tamanho | Constraints |
    | -------------- | ------------- | ---------------------------------------------------- | --------------------- | ------- | ----------- |
    | Crops          | id            | Identificador único para cada tipo de cultura.       | NUMBER                |         | PK, NN      |
    | Crops          | name          | Nome da cultura.                                     | VARCHAR2              | 255     | NN          |
    | Crops          | category      | Grupo a qual a cultura pertence (ex: Grão, Vegetal). | VARCHAR2              | 100     | NN          |

### Tabela: Currencies

- Descrição: Armazena informações sobre as moedas utilizadas no registro da produção agrícola, incluindo código ISO, nome e símbolo.
- Volume Esperado: Baixo (poucas moedas desde 1974)
- Tempo de retenção: Indefinido
- Rotina de limpeza: Nenhuma
- Colunas:
    | Nome da Tabela | Nome do Campo | Descrição                                    | Tipo de Dado (Oracle) | Tamanho | Constraints |
    | -------------- | ------------- | -------------------------------------------- | --------------------- | ------- | ----------- |
    | Currencies     | id            | Identificador único para cada tipo de moeda. | NUMBER                |         | PK, NN      |
    | Currencies     | code          | Código ISO 4217 de três letras para a moeda. | CHAR                  | 3       | NN, UNIQUE  |
    | Currencies     | name          | Nome completo da moeda.                      | VARCHAR2              | 100     | NN          |
    | Currencies     | symbol        | Símbolo que representa a moeda.              | VARCHAR2              | 5       |             |

### Tabela: CurrencyChanges

- Descrição: Registra as mudanças de moeda oficial do Brasil utilizadas no registro de produção agrícola, incluindo a data da mudança e a moeda associada.
- Volume Esperado: Baixo (pouquíssimas alterações na moeda corrente oficial)
- Tempo de retenção: Indefinido
- Rotina de limpeza: Nenhuma
- Colunas:
    | Nome da Tabela  | Nome do Campo | Descrição                                                     | Tipo de Dado (Oracle) | Tamanho | Constraints |
    | --------------- | ------------- | ------------------------------------------------------------- | --------------------- | ------- | ----------- |
    | CurrencyChanges | id            | Identificador único para cada alteração no valor da moeda.    | NUMBER                |         | PK, NN      |
    | CurrencyChanges | currency_id   | Referência ao tipo da nova moeda, ligado à tabela Currencies. | NUMBER                |         | NN, FK      |
    | CurrencyChanges | date          | Data em que a troca foi realizada.                            | DATE                  |         | NN          |

### Tabela: Productions

- Descrição: Armazena dados detalhados sobre a produção agrícola, incluindo informações sobre o estado, cultura, ano, área plantada, produção total, produtividade e valor da produção.
- Volume Esperado: Alto (milhares a milhões de registros)
- Tempo de retenção: Indefinido
- Rotina de limpeza: Nenhuma
- Colunas:
    | Nome da Tabela | Nome do Campo    | Descrição                                                                  | Tipo de Dado (Oracle) | Tamanho | Constraints |
    | -------------- | ---------------- | -------------------------------------------------------------------------- | --------------------- | ------- | ----------- |
    | Productions    | id               | Identificador único para cada registro de produção.                        | NUMBER                |         | PK, NN      |
    | Productions    | state_id         | Referência ao estado onde a cultura foi produzida, ligado à tabela States. | NUMBER                |         | NN, FK      |
    | Productions    | crop_id          | Referência ao tipo de cultura que foi produzida, ligado à tabela Crops.    | NUMBER                |         | NN, FK      |
    | Productions    | year             | Ano em que a cultura foi cultivada.                                        | NUMBER                |         | NN          |
    | Productions    | area_planted     | Tamanho da área utilizada para o plantio (em hectares).                    | NUMBER                |         |             |
    | Productions    | total_production | Quantidade total produzida (em toneladas métricas).                        | NUMBER                |         |             |
    | Productions    | productivity     | Produtividade, quantidade produzida por área.                              | NUMBER                |         |             |
    | Productions    | production_value | Valor da produção.                                                         | NUMBER                |         |             |

**Observações:**

* **Volume Esperado:** Indica a quantidade de dados esperada em cada tabela.
* **Tempo de Retenção:** Define por quanto tempo os dados devem ser mantidos no banco de dados. 
* **Rotina de Limpeza:** Detalhe como os dados devem ser limpos ou atualizados periodicamente.  


