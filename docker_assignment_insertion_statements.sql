INSERT INTO student
	VALUES (1, 'Rudra', 'Dave', 'rd49956n@pace.edu', 'Computer Science'),
	(2, 'Stephen', 'Cahill', 'sc67296n@pace.edu', 'Computer Science'),
	(3, 'Kirtan', 'Gajjar', 'kg72400n@pace.edu', 'Computer Science');

INSERT INTO course
	VALUES (71469, 'CS', 691, 'Computer Science Project I', 3),
	(71258, 'CS', 610, 'Intro to Parallel & Dis Comp', 3),
	(72235, 'CS', 660, 'Mathematical Fdntn of Analytic', 3),
	(70457, 'CS', 627, 'Artificial Intelligence', 3),
	(73453, 'CS', 675, 'Introduction to Data Science', 3),
	(72179, 'CS', 692, 'Computer Science Project II', 3);


INSERT INTO enrollment
	VALUES (101, 1, 71469),
	(102, 1, 71258),
	(103, 1, 72235),
	(104, 2, 70457),
	(105, 2, 73453),
	(106, 2, 72179),
	(107, 3, 70457),
	(108, 3, 73453),
	(109, 3, 72179);

