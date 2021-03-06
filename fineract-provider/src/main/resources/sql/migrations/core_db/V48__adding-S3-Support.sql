--
-- Licensed to the Apache Software Foundation (ASF) under one
-- or more contributor license agreements. See the NOTICE file
-- distributed with this work for additional information
-- regarding copyright ownership. The ASF licenses this file
-- to you under the Apache License, Version 2.0 (the
-- "License"); you may not use this file except in compliance
-- with the License. You may obtain a copy of the License at
--
-- http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing,
-- software distributed under the License is distributed on an
-- "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
-- KIND, either express or implied. See the License for the
-- specific language governing permissions and limitations
-- under the License.
--

INSERT INTO c_configuration (name,enabled) VALUES ('amazon-S3',0);

/*New table for storing details of external services used*/
CREATE TABLE `c_external_service` (
    `name` VARCHAR(150) NOT NULL,
    `value` VARCHAR(250) NULL DEFAULT NULL,
    UNIQUE INDEX `name` (`name`)
)
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB;

INSERT INTO c_external_service (name) VALUES ('s3_bucket_name');
INSERT INTO c_external_service (name) VALUES ('s3_access_key');
INSERT INTO c_external_service (name) VALUES ('s3_secret_key');



/*Image tables stores details of all images*/
CREATE TABLE IF NOT EXISTS `m_image`(
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `location` varchar(500),
    `storage_type_enum` SMALLINT,
    PRIMARY KEY (`id`)
)
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB;

/*Client points to image table*/
ALTER TABLE `m_client`
    ADD COLUMN `image_id` BIGINT NULL DEFAULT NULL AFTER `display_name`,
    ADD CONSTRAINT `FK_m_client_m_image` FOREIGN KEY (`image_id`) REFERENCES `m_image` (`id`);

/*Move existing image locations to new table*/
/*drop procedure if exists migrate_customer_image_data;

delimiter #
create procedure migrate_customer_image_data()
begin
DECLARE v_counter INT DEFAULT 0;
DECLARE num_of_clients INT DEFAULT 0;
DECLARE curr_image INT DEFAULT 0;
DECLARE prev_image INT DEFAULT 0;
SELECT COUNT(*) FROM m_client INTO num_of_clients;
SET @curr_client := 0;
while v_counter < num_of_clients do
    SET @s = CONCAT('INSERT INTO m_image(`location`,`storage_type_enum`) select image_key, 1 FROM m_client where image_key is not null LIMIT  ', v_counter , ', ', 1);
    PREPARE stmt1 FROM @s;
    EXECUTE stmt1;
    DEALLOCATE PREPARE stmt1;

    select ifnull(max(`id`),0) from m_image INTO curr_image;
    SET @z = CONCAT('select id FROM m_client where image_key is not null limit INTO @curr_client ', v_counter , ', ', 1);
    PREPARE stmt2 FROM @z;
    EXECUTE stmt2;

    IF (prev_image != curr_image) THEN UPDATE m_client set image_id = curr_image where id=@curr_client;
    END IF;

    set prev_image=curr_image;
    set v_counter=v_counter+1;
end while;
delete from m_image where `location` is null;
end#

delimiter ;
call migrate_customer_image_data();
*/

/*Now drop the procedure*/
/*drop procedure if exists migrate_customer_image_data; */

/*Delete image key from client*/
ALTER TABLE `m_client` DROP COLUMN `image_key`;


/*Add storage type for m_document table and update existing documents to file storage*/
ALTER TABLE m_document ADD COLUMN storage_type_enum SMALLINT;
UPDATE m_document set storage_type_enum=1;
