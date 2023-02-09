DROP PROCEDURE IF EXISTS spSummariseEpisodes
GO
CREATE PROCEDURE spSummariseEpisodes AS
BEGIN
SELECT CompanionName AS Top3_Companions
FROM tblCompanion
where CompanionId IN(
SELECT TOP 3 CompanionId 
FROM tblEpisodeCompanion
GROUP BY CompanionId
ORDER BY COUNT(EpisodeId) desc)

SELECT EnemyName AS Top3_Enemies
FROM tblEnemy
where EnemyId IN(
SELECT TOP 3 EnemyId 
FROM tblEpisodeEnemy
GROUP BY EnemyId
ORDER BY COUNT(EpisodeId) desc )
END;
GO
EXEC spSummariseEpisodes