DO $$
BEGIN
 
    -- Begin a transaction
 
    BEGIN

 
            -- Your SQL script logic here
 
            -- Example: Creating a table
 
          CREATE TABLE IF NOT EXISTS raw."Masters"
          (
                FirstName Character varying,
                LastName Character varying,
                "D.O.B 2" Date,
                Gender Character varying,
                "Group" Integer,
		        Mastery character varying,	
                "Level" integer,
                test boolean,
			 	Grand_Master boolean

 
            
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
