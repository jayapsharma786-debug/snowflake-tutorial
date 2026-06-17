create or replace table customer (customer_id number, customer_name varchar2(100));

INSERT INTO customer
(customer_id, customer_name)
VALUES
(1, 'Jaya Sharma');

CREATE OR REPLACE PROCEDURE SP_ADD_CUSTOMER
(
    P_ID NUMBER,
    P_NAME STRING
)
RETURNS STRING
LANGUAGE SQL
AS
$$
BEGIN

    INSERT INTO CUSTOMER
    VALUES (:P_ID, :P_NAME);

    RETURN 'Customer Added';

END;
$$;

