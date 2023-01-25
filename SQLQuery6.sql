CREATE FUNCTION fnCompanions (
	@episodeId int
)
RETURNS TABLE AS
Return
	select CONCAT ('Companion ',ROW_NUMBER() OVER(ORDER BY C.CompanionId ASC),' ',C.CompanionName) AS Companions_Names
	from tblCompanion as C INNER JOIN tblEpisodeCompanion as EC
	ON C.CompanionId=EC.CompanionId
	where EC.EpisodeId=@episodeId;
   

