-- Getting Current Date & Time

-- Current Date
select current_date();

-- Current Time
select current_time();

-- current timestamp
select current_timestamp();
-- or 
select now();

-- localtime & localtimestamp
select localtime;
select localtimestamp();

-- creating table logs
create database log;
use log;

CREATE TABLE logs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    event VARCHAR(100),
    created_at DATETIME
);

INSERT INTO logs (event, created_at) VALUES
('user_login', NOW()),
('user_logout', NOW()),
('payment_success', NOW()),
('payment_failed', NOW()),
('backup_completed', NOW()),
('data_export', NOW());

select * from logs;



