-- @block States

CREATE TABLE States (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    abbreviation TEXT NOT NULL CHECK(length(abbreviation) = 2)
);

-- @block Crops

CREATE TABLE Crops (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    category TEXT NOT NULL
);

-- @block Currencies

CREATE TABLE Currencies (
    id INTEGER PRIMARY KEY,
    code TEXT NOT NULL UNIQUE,  -- ISO 4217 code
    name TEXT NOT NULL,
    symbol TEXT
);

-- @block CurrencyChanges

CREATE TABLE CurrencyChanges (
    id INTEGER PRIMARY KEY,
    currency_id INTEGER NOT NULL,
    date DATE NOT NULL,
    FOREIGN KEY (currency_id) REFERENCES Currencies(id)
);

-- @block Productions

CREATE TABLE Productions (
    id INTEGER PRIMARY KEY,
    state_id INTEGER NOT NULL,
    crop_id INTEGER NOT NULL,
    year INTEGER NOT NULL,
    area_planted REAL,
    total_production REAL,
    productivity REAL,
    production_value REAL,
    FOREIGN KEY (state_id) REFERENCES States(id),
    FOREIGN KEY (crop_id) REFERENCES Crops(id)
);
