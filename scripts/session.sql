-- @block 1. Produção Total de uma Cultura por Estado em um Ano Específico
SELECT 
    s.name AS state,
    SUM(p.total_production) AS total_production
FROM 
    Production p
JOIN 
    State s ON p.state_id = s.id
JOIN 
    Crop c ON p.crop_id = c.id
WHERE 
    c.name = 'Milho' AND p.year = 2023
GROUP BY 
    s.name
ORDER BY 
    total_production DESC;

-- @block 2. Evolução da Área Plantada de uma Cultura ao Longo dos Anos
SELECT 
    p.year,
    SUM(p.area_planted) AS total_area
FROM 
    Production p
JOIN 
    Crop c ON p.crop_id = c.id
WHERE 
    c.name = 'Soja'
GROUP BY 
    p.year
ORDER BY 
    p.year ASC;

-- @block 3. TOP 10 Estados com Maior Produtividade para uma Cultura em um Ano
SELECT 
    s.name AS state,
    p.productivity
FROM 
    Production p
JOIN 
    State s ON p.state_id = s.id
JOIN 
    Crop c ON p.crop_id = c.id
WHERE 
    c.name = 'Trigo' AND p.year = 2023
ORDER BY 
    p.productivity DESC
LIMIT 10;

-- @block 4. Média de Produtividade de Cada Cultura por Ano
SELECT 
    p.year,
    c.name AS crop,
    AVG(p.productivity) AS average_productivity
FROM 
    Production p
JOIN 
    Crop c ON p.crop_id = c.id
GROUP BY 
    p.year, c.name
ORDER BY 
    p.year, average_productivity DESC;

-- @block 5. Valor Total da Produção por Cultura em um Ano Específico
SELECT 
    c.name AS crop,
    SUM(p.value) AS total_value
FROM 
    Production p
JOIN 
    Crop c ON p.crop_id = c.id
WHERE 
    p.year = 2023
GROUP BY 
    c.name
ORDER BY 
    total_value DESC;
