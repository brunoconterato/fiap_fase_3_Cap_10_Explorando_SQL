# Estrutura do Modelo Lógico

## Database type

- **Database system:** Generic

## Table structure

### States

| Name             | Type | Settings        | References | Note |
| ---------------- | ---- | --------------- | ---------- | ---- |
| **id**           | INT  | 🔑 PK, not null |            |      |
| **name**         | TEXT | not null        |            |      |
| **abbreviation** | TEXT | not null        |            |      |

### Crops

| Name         | Type | Settings        | References | Note |
| ------------ | ---- | --------------- | ---------- | ---- |
| **id**       | INT  | 🔑 PK, not null |            |      |
| **name**     | TEXT | not null        |            |      |
| **category** | TEXT | not null        |            |      |

### Currencies

| Name       | Type | Settings          | References | Note |
| ---------- | ---- | ----------------- | ---------- | ---- |
| **id**     | INT  | 🔑 PK, not null   |            |      |
| **code**   | TEXT | not null , unique |            |      |
| **name**   | TEXT | not null          |            |      |
| **symbol** | TEXT | not null          |            |      |

### CurrencyChanges

| Name            | Type | Settings        | References                     | Note |
| --------------- | ---- | --------------- | ------------------------------ | ---- |
| **id**          | INT  | 🔑 PK, not null |                                |      |
| **currency_id** | INT  | not null        | CurrencyChanges_currency_id_fk |      |
| **date**        | DATE | not null        |                                |      |

### Productions

| Name                 | Type | Settings        | References              | Note |
| -------------------- | ---- | --------------- | ----------------------- | ---- |
| **id**               | INT  | 🔑 PK, not null |                         |      |
| **state_id**         | INT  | not null        | Productions_state_id_fk |      |
| **crop_id**          | INT  | not null        | Productions_crop_id_fk  |      |
| **year**             | INT  | not null        |                         |      |
| **area_planted**     | REAL | not null        |                         |      |
| **total_production** | REAL | not null        |                         |      |
| **productivity**     | REAL | not null        |                         |      |
| **production_value** | REAL | not null        |                         |      |

## Relationships

- **CurrencyChanges to Currencies**: many_to_one
- **Productions to States**: many_to_one
- **Productions to Crops**: many_to_one

---

Voltar ao [README](/README.md)
