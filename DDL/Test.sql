DO $$
BEGIN
 
    -- Begin a transaction
 
    BEGIN

 
            -- Your SQL script logic here
 
            -- Example: Creating a table
 
          CREATE TABLE IF NOT EXISTS raw."Test"
          (
                FirstName Character varying,
                Test Character varying,
                tester Character varying,
                tested boolean,
                Tester_name Character varying,
                "Start_date" Date,
                "End_date" Date,
                "Due_Date" Date

 
            
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
