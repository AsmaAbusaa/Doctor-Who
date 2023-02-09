update tblEpisode
set Title=concat (Title ,'_canseld')
where DoctorId is null
