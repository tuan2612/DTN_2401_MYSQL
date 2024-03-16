USE testingsystem;
-- Câu 1: Thêm mới 10 câu hỏi, tương ứng các câu trả lời nằm trong danh mục câu hỏi (Question_Category)và danh mục level  (Question_Level) 
INSERT INTO question(title,Question_Category_ID,`type`,`status`, `version`,level_ID,author_ID,create_time,image_ID)
VALUES
	( "sự khác nhau giữa abtract và interface là gì",1,"Essay",1,1,1,2,'2012-12-12',1),
	( "4 tính chất oop ",1,"Essay",1,1,2,2,'2012-12-12',NULL),
	( "Các đặc điểm của một class trong OOP là gì?",1,"Essay",1,1,3,2,'2012-12-12',1),
	( "Trong OOP, đa hình (polymorphism) là gì và cách thức hoạt động",1,"Essay",1,1,1,2,'2012-12-12',1),
	( "Tại sao đóng gói (encapsulation) là một phần quan trọng của OOP",1,"Essay",1,1,2,2,'2012-12-12',NULL),
	( "Trong OOP, phân biệt giữa method và property",1,"Essay",1,1,3,2,'2012-12-12',1),
	( "Làm thế nào để xử lý các ngoại lệ (exceptions) trong OOP?",1,"Essay",1,1,1,2,'2012-12-12',1),
	( "Trong OOP, làm thế nào để sử dụng 'composition'	 (tổ hợp) so với kế thừa",1,"Essay",1,1,3,2,'2012-12-12',NULL),
	( "Phân biệt giữa lập trình hướng đối tượng và lập trình cấu trúc.",1,"Essay",1,1,3,2,'2012-12-12',1),
	( "OOP là gì và tại sao nó quan trọng trong phát triển phần mềm",1,"Essay",1,1,3,2,'2012-12-12',1),
	( "Trong OOP, 'abstraction' 'tính trừu tượng' là gì và tại sao nó cần thiết?",1,"Essay",1,1,2,2,'2012-12-12',NULL);
-- Câu 2: Lấy ra số lượng câu hỏi của từng type level mức độ khó 
SELECT question.level_ID, question_level.`level`, COUNT(question.id) AS So_Luong
FROM question
JOIN question_level ON question.level_ID = question_level.id
GROUP BY question.level_ID;
-- Câu 3: Lấy ra toàn bộ danh sách các câu hỏi đúng
SELECT	question_ID ,title,`key`, is_correct
FROM question
JOIN answer ON question.id=answer.question_ID
WHERE is_correct=1;
-- Cậu 4:  lấy ra toàn bộ danh sách user là NAM có ngày sinh từ: 1981-01-15 đến 1997-10-20
SELECT *
FROM `user`
WHERE date_Of_Birth BETWEEN'1981-01-15' AND '1997-10-20' 
AND gender="M";

