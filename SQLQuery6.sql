CREATE FUNCTION fnCompanions1(
@episodeId INT
)
RETURNS  varchar(255) AS
BEGIN
DECLARE @count INT
DECLARE @result varchar(255)
SET @count=1
SET @result =''

SELECT @result = @result+CONCAT('Companion ',@count)+' '+C.CompanionName+', ',@count=@count+1
from tblCompanion as C INNER JOIN tblEpisodeCompanion as EC
	ON C.CompanionId=EC.CompanionId
	where EC.EpisodeId=@episodeId
return @result
END;
Go
--SELECT dbo.fnCompanions1(303) as comp;
--Go
