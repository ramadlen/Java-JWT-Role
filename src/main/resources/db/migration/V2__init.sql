

CREATE TABLE `user`
(
    `userid`          bigint(20) NOT NULL AUTO_INCREMENT,
    `first_name` varchar(255),
    `last_name`  varchar(255),
    `username`   varchar(255),
    `password` varchar(255),
     PRIMARY KEY (`userid`)
) ENGINE=InnoDB;


CREATE TABLE `token`
(
    `id`          bigint(20) NOT NULL AUTO_INCREMENT,
    `access_token` varchar(255),
    `refresh_token`  varchar(255),
    `is_logged_out`    varchar(255),
   `user_id` BIGINT(20),  -- Matching the data type of `userid` in `user`
    PRIMARY KEY (`id`),
    FOREIGN KEY (`user_id`) REFERENCES `user`(`userid`)
) ENGINE=InnoDB;

