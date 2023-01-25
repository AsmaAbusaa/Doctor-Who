update tblEpisode
set Title=concat (Title ,'_canseld')
where EpisodeId in
(select EpisodeId
from tblEpisode
where DoctorId is null)
