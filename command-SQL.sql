--
-- Create a lotery Table
--

CREATE TABLE IF NOT EXISTS `lotery` (
    `id`    INT NOT NULL AUTO_INCREMENT,
    `jackpot` INT NOT NULL DEFAULT 10000,
    `last_edit` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    PRIMARY KEY (`id`)

) ENGINE=InnoDB DEFAULT CHARSET = utf8mb4;


--
-- Insert the only line needed in the db
-- 

INSERT INTO lotery (id,jackpot)  VALUES (1,10000)
