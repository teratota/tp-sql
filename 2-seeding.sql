
INSERT INTO `enrolment` (`from`, `to`, `id_student`, `id_year`) VALUES
	('2015-01-01 00:00:00', '2015-12-31 00:00:00', 1, 1),
	('2016-01-01 00:00:00', '2016-12-31 00:00:00', 1, 2),
	('2017-01-01 00:00:00', '2017-12-31 00:00:00', 1, 3),
	('2015-01-01 00:00:00', '2015-12-31 00:00:00', 2, 1),
	('2017-01-01 00:00:00', '2017-12-31 00:00:00', 2, 3),
	('2017-01-01 00:00:00', '2017-12-31 00:00:00', 3, 2);

INSERT INTO `module` (`id`, `name`, `year`) VALUES
	(1, 'linux', 1),
	(2, 'docker', 1),
	(3, 'symphony', 2),
	(4, 'asp.net core', 2),
	(5, 'aspect oriented architecture', 3),
	(6, 'ddd and hexagonal architecture', 3);

INSERT INTO `student` (`id`, `firstname`, `lastname`) VALUES
	(1, 'Olivier', 'Martin'),
	(2, 'Pierre', 'Martin'),
	(3, 'Jacques', 'Martin'),
	(4, 'Martin', 'François'),
	(5, 'Jennifer', 'Garner');

INSERT INTO `year` (`id`, `label`) VALUES
	(1, 'First year (Bsc)'),
	(2, 'Second year (Bsc Hons)'),
	(3, 'Third year (Msc)');

