CREATE FUNCTION fnEnemies1(
@episodeId INT
)
RETURNS  varchar(255) AS
BEGIN
DECLARE @count INT
DECLARE @result varchar(255)
SET @count=1
SET @result =''

SELECT @result = @result+CONCAT('Enemy ',@count)+' '+ E.EnemyName+', ',@count=@count+1
FROM tblEnemy as E INNER JOIN tblEpisodeEnemy as EE
ON E.EnemyId=EE.EnemyId
WHERE EE.EpisodeId= @episodeId
return @result
END;
