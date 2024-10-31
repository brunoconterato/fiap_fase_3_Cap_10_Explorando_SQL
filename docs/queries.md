# Consultas SQL

## 1. Produção Total de uma Cultura por Estado em um Ano Específico

Esta consulta retorna a produção total de uma cultura específica em cada estado durante um ano definido. É útil para identificar os estados com maiores volumes de produção para uma determinada cultura.

```sql
SELECT
    s.name AS state,
    SUM(p.total_production) AS total_production
FROM
    Productions p
JOIN
    States s ON p.state_id = s.id
JOIN
    Crops c ON p.crop_id = c.id
WHERE
    c.name = 'Milho' AND p.year = 2023
GROUP BY
    s.name
ORDER BY
    total_production DESC;
```

---

## 2. Evolução da Área Plantada de uma Cultura ao Longo dos Anos

Esta consulta exibe a evolução da área plantada de uma cultura específica ao longo dos anos. É ideal para entender tendências de expansão ou retração da área destinada à cultura.

```sql
SELECT
    p.year,
    SUM(p.area_planted) AS total_area
FROM
    Productions p
JOIN
    Crops c ON p.crop_id = c.id
WHERE
    c.name = 'Soja'
GROUP BY
    p.year
ORDER BY
    p.year ASC;
```

---

## 3. Ranking dos Estados com Maior Produtividade para uma Cultura em um Ano

Esta consulta gera um ranking dos estados com maior produtividade para uma cultura específica em um determinado ano. Esse ranking pode ser utilizado para identificar os estados mais eficientes em termos de produção.

```sql
SELECT
    s.name AS state,
    p.productivity
FROM
    Productions p
JOIN
    States s ON p.state_id = s.id
JOIN
    Crops c ON p.crop_id = c.id
WHERE
    c.name = 'Trigo' AND p.year = 2023
ORDER BY
    p.productivity DESC
LIMIT 10;
```

---

## 4. Média de Produtividade de Cada Cultura por Ano

Esta consulta calcula a média de produtividade para cada cultura em cada ano. É útil para análise de desempenho anual de diferentes culturas agrícolas e para comparações de produtividade.

```sql
SELECT
    p.year,
    c.name AS crop,
    AVG(p.productivity) AS average_productivity
FROM
    Productions p
JOIN
    Crops c ON p.crop_id = c.id
GROUP BY
    p.year, c.name
ORDER BY
    p.year, average_productivity DESC;
```

---

## 5. Valor Total da Produção por Cultura em um Ano Específico

Esta consulta apresenta o valor total da produção de cada cultura em um ano específico, permitindo uma análise econômica para identificar quais culturas geraram maior valor econômico.

```sql
SELECT
    c.name AS crop,
    SUM(p.production_value) AS total_value
FROM
    Productions p
JOIN
    Crops c ON p.crop_id = c.id
WHERE
    p.year = 2023
GROUP BY
    c.name
ORDER BY
    total_value DESC;
```

---

Voltar ao [README](/README.md)
