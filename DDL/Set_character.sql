DO $$
BEGIN

    -- Begin a transaction

    BEGIN
 

            -- Your SQL script logic here

            -- Example: Creating a table

          CREATE TABLE IF NOT EXISTS raw."Character"
          (
                FirstName Character varying,
                LastName Character varying,
                "D.O.B" Date,
                Gender Character varying,
                Shool Character varying,
                "Group" Integer,
                Sensei Character varying,
                Missions_completed integer,
                "Level" integer,
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
