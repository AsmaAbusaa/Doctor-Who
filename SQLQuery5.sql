DELETE 
from tblCompanion
where CompanionId not in
(select CompanionId 
from tblEpisodeCompanion
)
