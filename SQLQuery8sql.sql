Drop VIEW if Exists viewReport
GO
 CREATE VIEW viewReport AS( 
 SELECT dbo.fnEnemies1(e.EpisodeId)AS EnemiesName,dbo.fnCompanions1(e.EpisodeId)AS CompanionsName,d.DoctorName,a.AuthorName
 FROM tblEpisode AS e INNER JOIN tblAuthor AS a on a.AuthorId=e.AuthorId
 INNER JOIN tblDoctor as d on d.DoctorId=e.DoctorId
 )
 GO
 SELECT * FROM viewReport
