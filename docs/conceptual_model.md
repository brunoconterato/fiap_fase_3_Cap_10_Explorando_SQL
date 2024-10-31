# Modelo Conceitual

## Entidades

1. **Estado**
   - **Atributos**:
     - **ID**: Um número único para cada estado.
     - **Nome**: O nome completo do estado.
     - **Sigla**: Um código abreviado para o estado (ex.: "CA" para Califórnia).

2. **Cultura**
   - **Atributos**:
     - **ID**: Um número único para cada tipo de cultura.
     - **Nome**: O nome da cultura.
     - **Categoria**: O grupo ao qual a cultura pertence (ex.: "Grão", "Vegetal").

3. **Moeda**
   - **Atributos**:
     - **ID**: Um número único para cada tipo de moeda.
     - **Código**: Um código de três letras para a moeda (ex.: USD).
     - **Nome**: O nome completo da moeda (ex.: Dólar Americano).
     - **Símbolo**: Um símbolo que representa a moeda (ex.: "$").

4. **Troca de Moeda**
   - **Atributos**:
     - **ID**: Um número único para cada alteração no valor da moeda.
     - **ID da Moeda**: Uma referência ao tipo da nova moeda.
     - **Data**: A data em que a troca foi realizada.

5. **Produção**
   - **Atributos**:
     - **ID**: Um número único para cada registro de produção (Chave Primária).
     - **ID do Estado**: Uma referência ao estado onde a cultura foi produzida.
     - **ID da Cultura**: Uma referência ao tipo de cultura que foi produzida.
     - **Ano**: O ano em que a cultura foi cultivada.
     - **Área Plantada**: O tamanho da área utilizada para o plantio (em hectares ou acres).
     - **Produção Total**: A quantidade total produzida (em toneladas métricas ou alqueires).
     - **Produtividade**: A quantidade produzida por área.
     - **Valor**: O valor da produção na moeda utilizada.

---

## Relacionamentos

1. **Estado e Produção**: Um-para-Muitos
   - Um **Estado** pode ter vários registros de produção.
   - Cada registro de **Produção** pertence a um **Estado** específico.

2. **Cultura e Produção**: Um-para-Muitos
   - Uma **Cultura** pode estar envolvida em vários registros de produção.
   - Cada registro de **Produção** está relacionado a uma **Cultura** específica.

3. **Moeda e Troca de Moeda**: Um-para-Muitos
   - Uma **Moeda** pode ser objeto de várias trocas ao longo do tempo.
   - Cada registro de **Troca de Moeda** está associado a uma Moeda específica.
