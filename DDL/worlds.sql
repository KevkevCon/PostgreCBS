DO $$
BEGIN

    -- Begin a transaction

    BEGIN
 

            -- Your SQL script logic here

            -- Example: Creating a table

          CREATE TABLE IF NOT EXISTS raw."Worlds"
          (
                World_Name character varying,
                World_number integer,
                World_status character varying,
                Factions character varying,
                Difficulty integer



            
          );


        -- Commit the transaction

 
 

    EXCEPTION

        -- Handle any errors that occur

        WHEN OTHERS THEN

            -- Rollback the transaction

            ROLLBACK;

            -- Rethrow the error

            RAISE;

    END;
commit;
END$$;
