# Fontes de dados

## IBGE - Produção Agrícola Municipal

![IBGE - Produção Agrícola Municipal](../../assets/IBGE_PAM.jpg)

A fonte de dados da **[Pesquisa Agrícola Municipal](https://sidra.ibge.gov.br/pesquisa/pam/tabelas) (PAM) - 2023** é uma base estatística gerada pelo IBGE que visa fornecer informações detalhadas sobre a produção agrícola no Brasil, incluindo quantidade produzida, área plantada e colhida, rendimento médio e valor da produção.

Aqui estão os principais pontos:

- **Abrangência e periodicidade**: A pesquisa é anual e cobre o território nacional, com dados para diversas subdivisões geográficas, incluindo municípios.
- **Inclusão do açaí**: O açaí foi adicionado ao escopo da pesquisa a partir de 2016, com dados disponíveis desde 2015.
- **Série histórica**: A PAM disponibiliza uma série histórica de 1974 a 2023, com informações divididas em tabelas (1612, 1613 e 5457).

### Considerações importantes para interpretação:

1. **Disponibilidade de dados**: Somente municípios com dados para ao menos um produto são listados.
2. **Alteração de unidade de medida**: Em 2001, a medida de diversos produtos foi alterada para toneladas (antes era em frutos ou cachos), e o rendimento passou a ser expresso em kg/ha.
3. **Conversão de unidades**: A tabela de conversão de frutos para quilogramas está documentada.
4. **Café**: Mudança na classificação em 2002, de café em coco para café beneficiado/em grão.
5. **Novos produtos**: Girassol e triticale passaram a ser contabilizados em 2005.
6. **Produtos específicos**: Abacaxi e coco-da-baía são medidos em mil frutos, com rendimento em frutos/ha.
7. **Categoria “Total” indisponível**: Não há um total para "quantidade produzida" e "rendimento médio" devido a diferentes unidades de medida.
8. **Cultivos simultâneos e sucessivos**: Permite-se o plantio de múltiplas culturas na mesma área no mesmo ano.
9. **Culturas temporárias de longa duração**: Abacaxi, cana-de-açúcar, mamona e mandioca são temporárias de longa duração e sua área plantada é baseada na colheita anual.
10. **Área perdida**: Discrepâncias entre área plantada e colhida são registradas como área perdida.
11. **Área plantada e colhida**: Informada a partir de 1988.
12. **Moeda**: A moeda de valor da produção variou ao longo dos anos devido a mudanças econômicas, como cruzeiros, cruzados e reais.

Essa fonte é essencial para análises históricas e comparativas da agricultura no Brasil e adapta-se à modelagem de dados SQL para consultas específicas sobre produção, área e valor agrícola por cultura e região.

---

## O Sistema IBGE de Recuperação Automática (SIDRA)

[Acessar SIDRA](https://sidra.ibge.gov.br)

O Sistema IBGE de Recuperação Automática (SIDRA) é uma plataforma que permite o acesso aos dados agregados coletados pelo IBGE, organizados no Banco de Tabelas Estatísticas. Esses dados são resultado de pesquisas que cobrem diferentes temas, como agricultura, economia e estatísticas demográficas, e não identificam individualmente os respondentes. O SIDRA permite consultas específicas a partir de variáveis (ex.: área plantada, produção) e classificações (ex.: tipo de produto, área cultivada), segmentadas por períodos de tempo (mensal, anual) e por níveis territoriais (município, estado). Cada tabela é identificada de forma única e abrange informações organizadas segundo o plano de divulgação do IBGE, que apresenta fases de liberação dos dados.

## Fonte primária de dados: tabela 1612

[Fonte: IBGE SIDRA](https://sidra.ibge.gov.br/tabela/1612)

**Tabela 1612** - Área plantada, área colhida, quantidade produzida, rendimento médio e valor da produção das lavouras temporárias (Vide Notas)

---

### Como baixar dados da tabela no SIDRA

1. Acesse a [tabela](https://sidra.ibge.gov.br/tabela/1612) no SIDRA.

   ![SIDRA - Acesso à Tabela](../../assets/SIDRA.jpg)

2. Selecione as variáveis desejadas

   ![SIDRA - Seleção de Variáveis](../../assets/SIDRA_variaveis.jpg)

3. Selecione as culturas desejadas

   ![SIDRA - Seleção de Culturas](../../assets/SIDRA_culturas.jpg)

4. Selecione os anos desejados

   ![SIDRA - Seleção de Anos](../../assets/SIDRA_anos.jpg)

5. Selecione as áreas desejadas

   ![SIDRA - Seleção de Áreas](../../assets/SIDRA_areas.jpg)

6. Clique em "Download"

   ![SIDRA - Confirmação de Download](../../assets/SIDRA_confirma.jpg)

7. Escolha a formatação e clique em "Download"

   ![SIDRA - Opções de Download](../../assets/SIDRA_download.jpg)

---

## Nossas configurações selecionadas

Utilizando as seguintes configurações, podemos produzir o arquivo tabela1612.xlsx, constante da pasta data. São 23.200 registros cadastrados.

- **Variáveis** (selecionamos todas as variáveis disponíveis):

  - Área plantada (Hectares [1988 a 2023])
  - Área plantada - percentual do total geral (%): 2 de 5 casas decimais
  - Área colhida (Hectares)
  - Área colhida - percentual do total geral (%): 2 de 5 casas decimais
  - Quantidade produzida (Toneladas)
  - Rendimento médio da produção (Quilogramas por Hectare)
  - Valor da produção (Mil Cruzeiros [1974 a 1985, 1990 a 1992], Mil Cruzados [1986 a 1988], Mil Cruzados Novos [1989], Mil Cruzeiros Reais [1993], Mil Reais [1994 a 2023])
  - Valor da produção - percentual do total geral (%): 2 de 5 casas decimais

- **Culturas selecionadas**:

  - total
  - arroz,
  - cana-de-açúcar
  - cevada (em grãos)
  - feijão (em grãos)
  - milho (em grão)
  - soja (em grão)
  - tomate
  - trigo (em grão)

- **Anos selecionados** (selecionamos todos os anos disponíveis):

  - 1974 - 2023

- **Áreas selecionadas**:
  - Brasil
  - Todas as unidades da federação
gurações selecionadas
