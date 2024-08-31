--DO $$
--DECLARE
--    r RECORD;
--    i BIGINT;
--    availableQty INT;
--    categories TEXT[] := ARRAY['Electronics', 'Grocery', 'Clothing', 'Accessories', 'Babies'];
--BEGIN
--    -- Generate and insert new data
--    FOR i IN 1..1000000 LOOP
--        availableQty := FLOOR(RANDOM() * 1000);
--
--        INSERT INTO product (product_id, name, category, sku_id, price, available_quantity, is_available)
--        VALUES (
--			i,
--            'Product name ' || i,
--            categories[FLOOR(RANDOM() * 5) + 1],
--            LEFT(md5(random()::text), 6),
--            RANDOM() * 100000,
--            availableQty,
--            availableQty > 0
--        );
--
--        IF i % 50000 = 0 THEN
--            COMMIT;
--        END IF;
--
--    END LOOP;
--
--END $$;