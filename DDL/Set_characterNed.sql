DO $$
BEGIN

    -- Begin a transaction

    BEGIN
 

            -- Your SQL script logic here

            -- Example: Creating a table

          CREATE TABLE IF NOT EXISTS raw."Set_characterNed"
          (
                Naam Character varying,
                Fam_naam Character varying,
                Mid_naam character varying,
                Geboortedag Date,
                Gender Character varying,
                Shool Character varying,
                Groep Integer,
                Meester Character varying,
                afgeronde_Missies integer


            
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
