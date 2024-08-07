DO $$
BEGIN

    -- Begin a transaction

    BEGIN
 

            -- Your SQL script logic here

            -- Example: Creating a table

          CREATE TABLE IF NOT EXISTS raw."Set_characterNed"
          (
                EersteNaam Character varying,
                TweedeNaam Character varying,
                Geboortedag Date,
                Gender Character varying,
                Shool Character varying,
                Groep Integer,
                Meester Character varying,
                afgeronde_Missies integer,
                "Rang" integer,
                "Atribute_1" Character varying

            
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
