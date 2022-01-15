-- Ќиже представленны две функции, реализущие выборку сотрудников, с указанием пол€ сортировки и ('asc' или 'desc') пор€дка
-- ћне показалосьи интересным написать процедуру, котора€ сразу возвращает данные в нужной нам последовательности

--хардкод, зато без динамического SQL
CREATE PROCEDURE get_list_of_employees(@order_by AS char(20) ,@sort_dir AS char(10))
AS
	SELECT first_name, second_name, last_name, date_employ, date_uneploy, s.name as status, d.name as dep, p.name as post FROM persons
	INNER JOIN
		status as s
		ON persons.id_status=s.id
	INNER JOIN
		deps as d
		ON persons.id_dep=d.id
	INNER JOIN
		posts as p
		ON persons.id_post=p.id
	ORDER BY
	-- :D
	CASE WHEN @order_by = 'first_name' and @sort_dir = 'asc' 
		THEN persons.first_name END ASC,
	CASE WHEN @order_by = 'first_name' and @sort_dir = 'desc' 
		THEN persons.first_name END DESC,

	CASE WHEN @order_by = 'second_name' and @sort_dir = 'asc' 
		THEN persons.second_name END ASC,
	CASE WHEN @order_by = 'second_name' and @sort_dir = 'desc' 
		THEN persons.second_name END DESC,

	CASE WHEN @order_by = 'last_name' and @sort_dir = 'asc' 
		THEN persons.first_name END ASC,
	CASE WHEN @order_by = 'last_name' and @sort_dir = 'desc' 
		THEN persons.first_name END DESC,

	CASE WHEN @order_by = 'date_employ' and @sort_dir = 'asc' 
		THEN persons.date_employ END ASC,
	CASE WHEN @order_by = 'date_employ' and @sort_dir = 'desc' 
		THEN persons.date_employ END DESC,

	CASE WHEN @order_by = 'date_uneploy' and @sort_dir = 'asc' 
		THEN persons.date_uneploy END ASC,
	CASE WHEN @order_by = 'date_uneploy' and @sort_dir = 'desc' 
		THEN persons.date_employ END DESC,

	CASE WHEN @order_by = 'status' and @sort_dir = 'asc' 
		THEN persons.id_status END ASC,
	CASE WHEN @order_by = 'status' and @sort_dir = 'desc' 
		THEN persons.id_status END DESC,

	CASE WHEN @order_by = 'dep' and @sort_dir = 'asc' 
		THEN persons.id_dep END ASC,
	CASE WHEN @order_by = 'dep' and @sort_dir = 'desc' 
		THEN persons.id_dep END DESC,

	CASE WHEN @order_by = 'post' and @sort_dir = 'asc' 
		THEN persons.id_post END ASC,
	CASE WHEN @order_by = 'post' and @sort_dir = 'desc' 
		THEN persons.id_post END DESC
GO


--верси€ с exec, если невалидный параметр сортировки - ничего не возвращаем
CREATE PROCEDURE get_list_of_employees_dynamic(@order_by AS char(20) ,@sort_dir AS char(10))
AS
	IF (@order_by='first_name' or @order_by='second_name' or  @order_by='last_name' 
		or  @order_by='date_employ' or  @order_by='date_unemploy' or 
		@order_by='id_status' or @order_by='id_dep' or @order_by='id_post')
		and
		(@sort_dir='desc' or @sort_dir='asc')
		BEGIN
			exec('
				SELECT first_name, second_name, last_name, date_employ, date_uneploy, s.name as status, d.name as dep, p.name as post FROM persons
				INNER JOIN
					status as s
					ON persons.id_status=s.id
				INNER JOIN
					deps as d
					ON persons.id_dep=d.id
				INNER JOIN
					posts as p
					ON persons.id_post=p.id
				ORDER BY
			'+ @order_by + ' ' + @sort_dir)
		END
GO


-- ѕолучение статистики прин€тых сотрудников: (ƒень приема, кол-во прин€тых)
CREATE PROCEDURE get_employ_statistic(@date_from AS datetime, @date_to AS datetime, @status_id AS int)
AS
	SET DATEFORMAT YMD
	SELECT CONVERT(DATE, date_employ) as day, COUNT(date_employ) as count_of_employers FROM persons
	GROUP BY date_employ, id_status
	HAVING id_status=@status_id and (date_employ between @date_from and @date_to)
GO


-- ѕолучение статистики уволенных сотрудников: (ƒень увольнени€, кол-во уволенных)
CREATE PROCEDURE get_unemploy_statistic(@date_from AS datetime, @date_to AS datetime, @status_id AS int)
AS
	SET DATEFORMAT YMD
	SELECT CONVERT(DATE, date_uneploy) as day, COUNT(date_uneploy) as count_of_unemployers FROM persons
	GROUP BY date_uneploy, id_status
	HAVING id_status=@status_id and (date_uneploy between @date_from and @date_to)
GO




CREATE PROCEDURE get_status_id_by_name(@Name as char(40))
AS
	SELECT Id FROM Status WHERE Name=@Name
GO

CREATE PROCEDURE get_status_names
AS
	SELECT Name FROM status
GO

CREATE PROCEDURE get_deps_names
AS
	SELECT Name FROM deps
GO

CREATE PROCEDURE get_post_names
AS
	SELECT Name FROM posts
GO
