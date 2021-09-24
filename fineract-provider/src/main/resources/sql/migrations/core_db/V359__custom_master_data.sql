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

-- DELETE FROM `m_field_configuration`  WHERE field = 'street';
-- Others value

-- Add Address Type --
INSERT INTO `m_code_value`( `code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES ( 29, 'Địa chỉ thường trú', 'Permanent Address', 1, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES ( 29, 'Địa chỉ tạm trú', 'Temporary Address', 2, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES ( 29, 'Địa chỉ công ty', 'Company_Address', 3, NULL, 1, 0);

-- Add Customer Star Type --
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES ( 17, '1 star', '1 star', 1, NULL, 1, 0);
INSERT INTO `m_code_value`( `code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES ( 17, '2 star', '2 star', 2, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES ( 17, '3 star', '3 star', 3, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES ( 17, '4 star', '4 star', 4, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES ( 17, '5 star', '5 star', 5, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES ( 17, 'Bad', 'bad', 99, NULL, 1, 0);

-- Add Customer Gender Type --
INSERT INTO `m_code_value`( `code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES (4, 'Nam', 'Male', 1, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES (4, 'Nữ', 'Female', 2, NULL, 1, 0);

-- Add Customer Marital Type --
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES ( 30, 'Độc Thân', 'Single', 1, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES (30, 'Kết Hôn', 'Married', 2, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES (30, 'Ly Hôn', 'Divorce', 2, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES ( 30, 'Khác', 'Others', 2, NULL, 1, 0);

-- Add Country Type --
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES (28, 'Việt Nam', 'VN', 1, NULL, 1, 0);

-- Add State Type --
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES (27, 'Thành phố Hà Nội', '27073', 1, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES (27, 'Tỉnh Hà Giang', '27074', 2, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES (27, 'Tỉnh Cao Bằng', '27075', 3, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES (27, 'Tỉnh Bắc Kạn', '27076', 4, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES (27, 'Tỉnh Tuyên Quang', '27077', 5, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES (27, 'Tỉnh Lào Cai', '27078', 6, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES (27, 'Tỉnh Điện Biên', '27079', 7, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES (27, 'Tỉnh Lai Châu', '27080', 8, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES (27, 'Tỉnh Sơn La', '27081', 9, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES (27, 'Tỉnh Yên Bái', '27082', 10, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES (27, 'Tỉnh Hoà Bình', '27083', 11, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES (27, 'Tỉnh Thái Nguyên', '27084', 12, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES (27, 'Tỉnh Lạng Sơn', '27085', 13, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES (27, 'Tỉnh Quảng Ninh', '27086', 14, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES (27, 'Tỉnh Bắc Giang', '27087', 15, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES (27, 'Tỉnh Phú Thọ', '27088', 16, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES (27, 'Tỉnh Vĩnh Phúc', '27089', 17, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES (27, 'Tỉnh Bắc Ninh', '27090', 18, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES (27, 'Tỉnh Hải Dương', '27091', 19, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES (27, 'Thành phố Hải Phòng', '27092', 20, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES (27, 'Tỉnh Hưng Yên', '27093', 21, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES (27, 'Tỉnh Thái Bình', '27094', 22, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES (27, 'Tỉnh Hà Nam', '27095', 23, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES (27, 'Tỉnh Nam Định', '27096', 24, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`)
    VALUES (27, 'Tỉnh Ninh Bình', '27097', 25, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`)
    VALUES (27, 'Tỉnh Thanh Hóa', '27098', 26, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`)
    VALUES (27, 'Tỉnh Nghệ An', '27099', 27, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`)
    VALUES (27, 'Tỉnh Hà Tĩnh', '27100', 28, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`)
    VALUES (27, 'Tỉnh Quảng Bình', '27101', 29, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`)
    VALUES (27, 'Tỉnh Quảng Trị', '27102', 30, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`)
    VALUES (27, 'Tỉnh Thừa Thiên Huế', '27103', 31, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`)
    VALUES (27, 'Thành phố Đà Nẵng', '27104', 32, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`)
    VALUES (27, 'Tỉnh Quảng Nam', '27105', 33, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`)
    VALUES (27, 'Tỉnh Quảng Ngãi', '27106', 34, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`)
    VALUES (27, 'Tỉnh Bình Định', '27107', 35, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`)
    VALUES (27, 'Tỉnh Phú Yên', '27108', 36, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`)
    VALUES (27, 'Tỉnh Khánh Hòa', '27109', 37, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`)
    VALUES (27, 'Tỉnh Ninh Thuận', '27110', 38, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`)
    VALUES (27, 'Tỉnh Bình Thuận', '27111', 39, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`)
    VALUES (27, 'Tỉnh Kon Tum', '27112', 40, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`)
    VALUES (27, 'Tỉnh Gia Lai', '27113', 41, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`)
    VALUES (27, 'Tỉnh Đắk Lắk', '27114', 42, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`)
    VALUES (27, 'Tỉnh Đắk Nông', '27115', 43, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`)
    VALUES (27, 'Tỉnh Lâm Đồng', '27116', 44, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`)
    VALUES (27, 'Tỉnh Bình Phước', '27117', 45, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`)
    VALUES (27, 'Tỉnh Tây Ninh', '27118', 46, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`)
    VALUES (27, 'Tỉnh Bình Dương', '27119', 47, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`)
    VALUES (27, 'Tỉnh Đồng Nai', '27120', 48, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`)
    VALUES (27, 'Tỉnh Bà Rịa - Vũng Tàu', '27121', 49, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`)
    VALUES (27, 'Thành phố Hồ Chí Minh', '27122', 50, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`)
    VALUES (27, 'Tỉnh Long An', '27123', 51, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`)
    VALUES (27, 'Tỉnh Tiền Giang', '27124', 52, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`)
    VALUES (27, 'Tỉnh Bến Tre', '27125', 53, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`)
    VALUES (27, 'Tỉnh Trà Vinh', '27126', 54, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`)
    VALUES (27, 'Tỉnh Vĩnh Long', '27127', 55, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`)
    VALUES (27, 'Tỉnh Đồng Tháp', '27128', 56, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`)
    VALUES (27, 'Tỉnh An Giang', '27129', 57, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`)
    VALUES (27, 'Tỉnh Kiên Giang', '27130', 58, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`)
    VALUES (27, 'Thành phố Cần Thơ', '27131', 59, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`)
    VALUES (27, 'Tỉnh Hậu Giang', '27132', 60, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`)
    VALUES (27, 'Tỉnh Sóc Trăng', '27133', 61, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`)
    VALUES (27, 'Tỉnh Bạc Liêu', '27134', 62, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`)
    VALUES (27, 'Tỉnh Cà Mau', '27135', 63, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`)
    VALUES (27, 'Bộ Công An', '27136', 64, NULL, 1, 0);


-- Add ... Type --
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES (22, 'OK', 'ok', 1, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES (14, 'closed', 'close', 1, NULL, 1, 0);

-- Add Activity Program Type --
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES (31, 'MGM', 'MGM Program', 1, NULL, 1, 0);

-- Add Customer Type --
INSERT INTO `m_code_value`( `code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES (16, 'V', 'Nội bộ - Quỹ', 5, NULL, 1, 0);
INSERT INTO `m_code_value`( `code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES (16, 'C', 'Khách hàng', 1, NULL, 1, 0);
INSERT INTO `m_code_value`( `code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES (16, 'I', 'Nội bộ - Nhân viên', 2, NULL, 1, 0);
INSERT INTO `m_code_value`( `code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES (16, 'S', 'Đối tác máy - Cá nhân', 3, NULL, 1, 0);
INSERT INTO `m_code_value`( `code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES (16, 'F', 'Đối tác vốn', 4, NULL, 1, 0);
INSERT INTO `m_code_value`( `code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES (24, 'I', 'Nội bộ - Tổ chức', 1, NULL, 1, 0);
INSERT INTO `m_code_value`( `code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES (24, 'S', 'Đối tác máy - Tổ chức', 2, NULL, 1, 0);

-- Add Yes/ No --
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES (5, 'Đồng ý', 'Yes', 1, NULL, 1, 0);
INSERT INTO `m_code_value`(`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES (5, 'Không', 'No', 2, NULL, 1, 0);

-- Add Payment Type --
INSERT INTO `m_code_value`( `code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES ( 33, 'Phai thu doi tac', 'Phải thu đối tác', 2, NULL, 1, 0);
INSERT INTO `m_code_value`( `code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES ( 33, 'Chuyen von lien chi nhanh', 'Chuyển vốn liên chi nhánh', 3, NULL, 1, 0);
INSERT INTO `m_code_value`( `code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES ( 33, 'Thanh toan (COGS) cho HO', 'Thanh toán chi phí giá vốn hàng bán (COGS) cho HO', 4, NULL, 1, 0);
INSERT INTO `m_code_value`( `code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES ( 33, 'Chi tien mat cho khach hang', 'Chi tiền mặt cho khách hàng', 5, NULL, 1, 0);
INSERT INTO `m_code_value`( `code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES ( 33, 'Khach hang nop tien thanh toan phi dich vu', 'Khách hàng nộp tiền thanh toán phí dịch vụ', 6, NULL, 1, 0);

-- Loan disbursement purpose
INSERT INTO `m_code_value`( `code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES (150, 3, 'Bổ sung vốn lưu động', '', 1, NULL, 1, 0);

-- Customer closing reason --
INSERT INTO `m_code_value`( `code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES ( 14, 'long_time_dormant', 'Không active thời gian dài', 2, NULL, 1, 0);
INSERT INTO `m_code_value`( `code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES ( 14, 'fraud', 'Gian lận', 3, NULL, 1, 0);
INSERT INTO `m_code_value`( `code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES ( 14, 'duplicate', 'Trùng thông tin khách hàng', 4, NULL, 1, 0);
INSERT INTO `m_code_value`( `code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES ( 14, 'others_reason', 'Lý do khác', 99, NULL, 1, 0);

-- Customer inactive reason --
INSERT INTO `m_code_value`( `code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES ( 15, 'long_time_dormant', 'Không  giao dịch trong một thời gian dài', 1, NULL, 1, 0);
INSERT INTO `m_code_value`( `code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES ( 15, 'tranfered_to_other_branch', 'Chuyển qua đơn vị khác', 2, NULL, 1, 0);
INSERT INTO `m_code_value`( `code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES ( 15, 'fraud', 'Gian lận', 3, NULL, 1, 0);
INSERT INTO `m_code_value`( `code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) 
    VALUES ( 15, 'others_reason', 'Lý do khác', 99, NULL, 1, 0);