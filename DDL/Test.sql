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
                testing_id integer

 
            
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
