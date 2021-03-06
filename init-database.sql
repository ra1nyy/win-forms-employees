USE [sirius]
GO
SET IDENTITY_INSERT [dbo].[status] ON 

INSERT [dbo].[status] ([id], [name]) VALUES (1, N'Стажер')
INSERT [dbo].[status] ([id], [name]) VALUES (2, N'Младший сотрудник')
INSERT [dbo].[status] ([id], [name]) VALUES (3, N'Сотрудник')
INSERT [dbo].[status] ([id], [name]) VALUES (4, N'Старший сотрудник')
INSERT [dbo].[status] ([id], [name]) VALUES (5, N'Помошник руководителя')
INSERT [dbo].[status] ([id], [name]) VALUES (6, N'Руководитель')
SET IDENTITY_INSERT [dbo].[status] OFF
GO
SET IDENTITY_INSERT [dbo].[posts] ON 

INSERT [dbo].[posts] ([id], [name]) VALUES (2, N'Программист C#')
INSERT [dbo].[posts] ([id], [name]) VALUES (5, N'Администратор БД')
INSERT [dbo].[posts] ([id], [name]) VALUES (6, N'Специалист по качеству')
INSERT [dbo].[posts] ([id], [name]) VALUES (7, N'Менеджер')
INSERT [dbo].[posts] ([id], [name]) VALUES (8, N'HR')
INSERT [dbo].[posts] ([id], [name]) VALUES (9, N'Оператор колл-центра')
SET IDENTITY_INSERT [dbo].[posts] OFF
GO
SET IDENTITY_INSERT [dbo].[deps] ON 

INSERT [dbo].[deps] ([id], [name]) VALUES (1, N'Отдел разработки')
INSERT [dbo].[deps] ([id], [name]) VALUES (2, N'Отдел качества')
INSERT [dbo].[deps] ([id], [name]) VALUES (3, N'Отдел маркетинка')
INSERT [dbo].[deps] ([id], [name]) VALUES (4, N'Отдел поиска сотрудников')
INSERT [dbo].[deps] ([id], [name]) VALUES (5, N'Отдел звонков')
SET IDENTITY_INSERT [dbo].[deps] OFF
GO
SET IDENTITY_INSERT [dbo].[persons] ON 

INSERT [dbo].[persons] ([id], [first_name], [second_name], [last_name], [date_employ], [date_uneploy], [id_status], [id_dep], [id_post]) VALUES (12, N'Руслан', N'Золотарев', N'Азадович', CAST(N'2022-01-01T00:00:00.000' AS DateTime), CAST(N'2022-01-11T00:00:00.000' AS DateTime), 1, 3, 2)
INSERT [dbo].[persons] ([id], [first_name], [second_name], [last_name], [date_employ], [date_uneploy], [id_status], [id_dep], [id_post]) VALUES (17, N'Галина', N'Романовна', N'Михайловна', CAST(N'2022-01-05T00:00:00.000' AS DateTime), NULL, 2, 2, 6)
INSERT [dbo].[persons] ([id], [first_name], [second_name], [last_name], [date_employ], [date_uneploy], [id_status], [id_dep], [id_post]) VALUES (19, N'Григорий', N'Смородников', N'Валерьевич', CAST(N'2022-01-07T00:00:00.000' AS DateTime), NULL, 3, 2, 2)
INSERT [dbo].[persons] ([id], [first_name], [second_name], [last_name], [date_employ], [date_uneploy], [id_status], [id_dep], [id_post]) VALUES (20, N'Дмитрий', N'Казаков', N'Андреевич', CAST(N'2022-01-08T00:00:00.000' AS DateTime), NULL, 5, 5, 5)
INSERT [dbo].[persons] ([id], [first_name], [second_name], [last_name], [date_employ], [date_uneploy], [id_status], [id_dep], [id_post]) VALUES (21, N'Владимир', N'Мирощенко', N'Романович', CAST(N'2022-01-08T00:00:00.000' AS DateTime), NULL, 2, 2, 2)
INSERT [dbo].[persons] ([id], [first_name], [second_name], [last_name], [date_employ], [date_uneploy], [id_status], [id_dep], [id_post]) VALUES (22, N'Эждуард', N'Петросян', N'Михайлович', CAST(N'2022-01-08T00:00:00.000' AS DateTime), NULL, 3, 1, 6)
INSERT [dbo].[persons] ([id], [first_name], [second_name], [last_name], [date_employ], [date_uneploy], [id_status], [id_dep], [id_post]) VALUES (23, N'Владимир', N'Джава', N'Скриптович', CAST(N'2022-01-20T00:00:00.000' AS DateTime), CAST(N'2022-02-20T00:00:00.000' AS DateTime), 3, 2, 7)
INSERT [dbo].[persons] ([id], [first_name], [second_name], [last_name], [date_employ], [date_uneploy], [id_status], [id_dep], [id_post]) VALUES (24, N'Антон', N'Сишарп', N'Максимович', CAST(N'2022-01-11T00:00:00.000' AS DateTime), NULL, 3, 1, 2)
INSERT [dbo].[persons] ([id], [first_name], [second_name], [last_name], [date_employ], [date_uneploy], [id_status], [id_dep], [id_post]) VALUES (25, N'Мария', N'Романовна', N'Владимировна', CAST(N'2022-01-12T00:00:00.000' AS DateTime), NULL, 5, 2, 8)
INSERT [dbo].[persons] ([id], [first_name], [second_name], [last_name], [date_employ], [date_uneploy], [id_status], [id_dep], [id_post]) VALUES (26, N'Александр', N'Пупс', N'Малышкович', CAST(N'2022-01-16T00:00:00.000' AS DateTime), CAST(N'2022-02-20T00:00:00.000' AS DateTime), 4, 3, 2)
INSERT [dbo].[persons] ([id], [first_name], [second_name], [last_name], [date_employ], [date_uneploy], [id_status], [id_dep], [id_post]) VALUES (27, N'Александра', N'Питоно', N'Сиплюсплюсовна', CAST(N'2022-01-01T00:00:00.000' AS DateTime), NULL, 2, 2, 9)
INSERT [dbo].[persons] ([id], [first_name], [second_name], [last_name], [date_employ], [date_uneploy], [id_status], [id_dep], [id_post]) VALUES (28, N'Дарья', N'Гольнова', N'Андреевна', CAST(N'2022-01-20T00:00:00.000' AS DateTime), CAST(N'2022-02-20T00:00:00.000' AS DateTime), 4, 1, 2)
INSERT [dbo].[persons] ([id], [first_name], [second_name], [last_name], [date_employ], [date_uneploy], [id_status], [id_dep], [id_post]) VALUES (29, N'Иван', N'Страуструп', N'Михайловна', CAST(N'2022-01-29T00:00:00.000' AS DateTime), NULL, 2, 3, 2)
INSERT [dbo].[persons] ([id], [first_name], [second_name], [last_name], [date_employ], [date_uneploy], [id_status], [id_dep], [id_post]) VALUES (30, N'Кирилл', N'Люцифер', N'Андреевич', CAST(N'2022-01-01T00:00:00.000' AS DateTime), CAST(N'2022-04-04T00:00:00.000' AS DateTime), 3, 2, 9)
INSERT [dbo].[persons] ([id], [first_name], [second_name], [last_name], [date_employ], [date_uneploy], [id_status], [id_dep], [id_post]) VALUES (31, N'Роман', N'Семнченко', N'Михайловна', CAST(N'2022-01-01T00:00:00.000' AS DateTime), NULL, 1, 4, 2)
INSERT [dbo].[persons] ([id], [first_name], [second_name], [last_name], [date_employ], [date_uneploy], [id_status], [id_dep], [id_post]) VALUES (32, N'Андрей', N'Воробьев', N'Михайловна', CAST(N'2022-01-01T00:00:00.000' AS DateTime), NULL, 3, 3, 5)
INSERT [dbo].[persons] ([id], [first_name], [second_name], [last_name], [date_employ], [date_uneploy], [id_status], [id_dep], [id_post]) VALUES (33, N'Петр', N'Иванов', N'Михайловна', CAST(N'2022-01-01T00:00:00.000' AS DateTime), CAST(N'2022-01-03T00:00:00.000' AS DateTime), 4, 2, 7)
INSERT [dbo].[persons] ([id], [first_name], [second_name], [last_name], [date_employ], [date_uneploy], [id_status], [id_dep], [id_post]) VALUES (1011, N'Арсений', N'Марченко', N'Павлович', CAST(N'2022-01-21T00:00:00.000' AS DateTime), NULL, 1, 4, 6)
INSERT [dbo].[persons] ([id], [first_name], [second_name], [last_name], [date_employ], [date_uneploy], [id_status], [id_dep], [id_post]) VALUES (1014, N'Лидия', N'Лазарева', N'Антоновна', CAST(N'2020-05-12T00:00:00.000' AS DateTime), CAST(N'2021-01-13T00:00:00.000' AS DateTime), 5, 5, 6)
SET IDENTITY_INSERT [dbo].[persons] OFF
GO
