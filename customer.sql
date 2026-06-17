create or replace table customer (customer_id number, customer_name varchar2(100));

INSERT INTO customer
(customer_id, customer_name)
VALUES
(1, 'Jaya Sharma');

CREATE OR REPLACE PROCEDURE SP_INSERT_CUSTOMER()
RETURNS STRING
LANGUAGE SQL
AS
$$
BEGIN

    INSERT INTO CUSTOMER
    VALUES (1, 'Jaya');

    RETURN 'Customer Inserted Successfully';

END;
$$;


