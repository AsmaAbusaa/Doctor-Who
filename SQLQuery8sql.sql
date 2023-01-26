Drop Table if Exists #tempID
Drop Table if Exists #tempCompanionName
Drop Table if Exists #tempEnemeisName
Drop Table if Exists tblReport
Drop VIEW if Exists viewReport

CREATE TABLE #tempID (EpisodeId INT)
CREATE TABLE #tempCompanionName (EpisodeId INT,CompanionName varchar(255))
CREATE TABLE #tempEnemeisName (EpisodeId INT,EnemiesName varchar(255))

INSERT INTO #tempID
SELECT EpisodeId from tblEpisode
DECLARE @top INT;
DECLARE @counter Int;
SET @counter =(SElect Count(*) from #tempID)
while(@counter>0)
Begin
SET @top=(SELECT TOP 1 EpisodeId from #tempID)
insert into #tempCompanionName
select @top,* from fnCompanions(@top)
insert into #tempEnemeisName
select @top,* from fnEnemies(@top)
DElETE from #tempID where episodeId=@top
SET @counter=@counter-1
End;

CREATE TABLE tblReport (Episode_Id int,Companion_Name varchar(255),Enemy_Name varchar(255),Doctor_Name varchar(255),Author_Name varchar(255))

;with cteDoctor_AuthorNames as(SELECT e.EpisodeId,d.DoctorName,a.AuthorName from tblAuthor as a inner join tblEpisode as e on a.AuthorId=e.AuthorId
 inner join tblDoctor as d on d.DoctorId=e.DoctorId)

INSERT INTO tblReport SELECT TC.episodeId,companionName, enemiesName,cte.DoctorName,cte.AuthorName
FROM #tempCompanionName AS TC inner join #tempEnemeisName AS TE ON TC.episodeId=TE.episodeId inner join cteDoctor_AuthorNames AS cte ON TE.episodeId=cte.EpisodeId
GO

CREATE VIEW viewReport AS (SELECT * FROM tblReport)
GO
SELECT * FROM viewReport
