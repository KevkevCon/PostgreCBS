CREATE TABLE raw.commit_logs (
    id SERIAL PRIMARY KEY,                   
    commit_id VARCHAR(40) NOT NULL,          
    author_name VARCHAR(100) NOT NULL,       
    author_email VARCHAR(100) NOT NULL,      
    branch_name VARCHAR(100) NOT NULL,       
    commit_message TEXT NOT NULL,            
    committed_at TIMESTAMP NOT NULL          
);