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

/*
Reason for all the tmp tables and renames is had mysql problems with foreign keys doing alter table commands
*/

CREATE TABLE `stretchy_report_tmp` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `report_name` varchar(100) NOT NULL,
  `report_type` varchar(20) NOT NULL,
  `report_subtype` varchar(20) DEFAULT NULL,
  `report_category` varchar(45) DEFAULT NULL,
  `report_sql` text,
  `description` text,
  `core_report` tinyint DEFAULT '0',
  `use_report` tinyint DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `report_name_UNIQUE` (`report_name`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE='utf8mb4_unicode_ci';

insert into stretchy_report_tmp
(id, report_name, report_type, report_subtype, report_category,
report_sql, description, core_report, use_report)
select report_id, report_name, report_type, report_subtype, report_category,
report_sql, description, core_report, use_report
from stretchy_report;

CREATE TABLE `stretchy_parameter_tmp` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `parameter_name` varchar(45) NOT NULL,
  `parameter_variable` varchar(45) DEFAULT NULL,
  `parameter_label` varchar(45) NOT NULL,
  `parameter_displayType` varchar(45) NOT NULL,
  `parameter_FormatType` varchar(10) NOT NULL,
  `parameter_default` varchar(45) NOT NULL,
  `special` varchar(1) DEFAULT NULL,
  `selectOne` varchar(1) DEFAULT NULL,
  `selectAll` varchar(1) DEFAULT NULL,
  `parameter_sql` text,
  `parent_id` INT DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`parameter_name`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE='utf8mb4_unicode_ci';

insert into stretchy_parameter_tmp
(id, parameter_name, parameter_variable, parameter_label, parameter_displayType, parameter_FormatType,
parameter_default, special, selectOne, selectAll, parameter_sql, parent_id)
select parameter_id, parameter_name, parameter_variable, parameter_label, parameter_displayType, parameter_FormatType,
parameter_default, special, selectOne, selectAll, parameter_sql, parent_parameter_id
from stretchy_parameter;

CREATE TABLE `stretchy_report_parameter_tmp` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `report_id` INT NOT NULL,
  `parameter_id` INT NOT NULL,
  `report_parameter_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `report_id_name_UNIQUE` (`report_id`,`report_parameter_name`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE='utf8mb4_unicode_ci';

insert into stretchy_report_parameter_tmp(report_id, parameter_id, report_parameter_name)
select report_id, parameter_id, report_parameter_name
from stretchy_report_parameter;


ALTER TABLE `stretchy_parameter_tmp`
  ADD CONSTRAINT `fk_stretchy_parameter_001`
  FOREIGN KEY (`parent_id` )
  REFERENCES `stretchy_parameter_tmp` (`id` )
  ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD INDEX `fk_stretchy_parameter_001_idx` (`parent_id` ASC);

SET foreign_key_checks = 0;
ALTER TABLE `stretchy_report_parameter_tmp`
  ADD CONSTRAINT `fk_report_parameter_001` FOREIGN KEY (`report_id` )
  REFERENCES `stretchy_report_tmp` (`id` ) ON DELETE CASCADE ON UPDATE RESTRICT,

  ADD CONSTRAINT `fk_report_parameter_002` FOREIGN KEY (`parameter_id` )
  REFERENCES `stretchy_parameter_tmp` (`id` ) ON DELETE RESTRICT ON UPDATE RESTRICT,

  ADD INDEX `fk_report_parameter_001_idx` (`report_id` ASC),
  ADD INDEX `fk_report_parameter_002_idx` (`parameter_id` ASC) ;
SET foreign_key_checks = 1;

drop table stretchy_report_parameter;
drop table stretchy_report;
drop table stretchy_parameter;

rename table
stretchy_report_tmp to stretchy_report,
stretchy_parameter_tmp to stretchy_parameter,
stretchy_report_parameter_tmp to stretchy_report_parameter;
