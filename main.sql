CREATE TABLE table1_without_index (
    id SERIAL PRIMARY KEY,
    data_column VARCHAR(255)
);

CREATE TABLE table1_with_index (
    id SERIAL PRIMARY KEY,
    data_column VARCHAR(255)
);

CREATE INDEX idx_table1_data_column ON table1_with_index (data_column);

INSERT INTO table1_without_index (data_column) VALUES ('data1'), ('data2'), ...;

INSERT INTO table1_with_index (data_column) VALUES ('data1'), ('data2'), ...;

EXPLAIN ANALYZE INSERT INTO table1_without_index (data_column) VALUES ('data1'), ('data2'), ...;

EXPLAIN ANALYZE INSERT INTO table1_with_index (data_column) VALUES ('data1'), ('data2'), ...;