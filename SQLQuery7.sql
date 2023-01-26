CREATE FUNCTION fnEnemies(
@episodeId INT
)
RETURNS TABLE AS
RETURN
SELECT CONCAT('Enemy ',ROW_NUMBER() OVER(ORDER BY E.EnemyId ASC),EnemyName)AS Enemies_Name
FROM tblEnemy as E INNER JOIN tblEpisodeEnemy as EE
ON E.EnemyId=EE.EnemyId
WHERE EE.EpisodeId= @episodeId
