-- @block States

CREATE TABLE States (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(255) NOT NULL,
    abbreviation CHAR(2) NOT NULL
);

-- @block Crops

CREATE TABLE Crops (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(255) NOT NULL,
    category VARCHAR2(100) NOT NULL
);

-- @block Currencies

CREATE TABLE Currencies (
    id NUMBER PRIMARY KEY,
    code CHAR(3) NOT NULL UNIQUE,  -- ISO 4217 code
    name VARCHAR2(100) NOT NULL,
    symbol VARCHAR2(5)
);

-- @block CurrencyChanges

CREATE TABLE CurrencyChanges (
    id NUMBER PRIMARY KEY,
    currency_id NUMBER NOT NULL,
    date DATE NOT NULL,
    FOREIGN KEY (currency_id) REFERENCES Currencies(id)
);

-- @block Productions

CREATE TABLE Productions (
    id NUMBER PRIMARY KEY,
    state_id NUMBER NOT NULL,
    crop_id NUMBER NOT NULL,
    year NUMBER NOT NULL,
    area_planted NUMBER,
    total_production NUMBER,
    productivity NUMBER,
    production_value NUMBER,
    FOREIGN KEY (state_id) REFERENCES States(id),
    FOREIGN KEY (crop_id) REFERENCES Crops(id)
);
