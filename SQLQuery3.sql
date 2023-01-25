insert into tblEnemy values(100,'Army','Armies are small armadillo enemies that appear in Donkey Kong Country and Donkey Kong Land.')
insert into tblEnemy values(101,'Beach Koopa','is a Koopa Troopa that has lost its shell and wears nothing more than an undershirt')
insert into tblEnemy values(102,'Buzzes','also named Green Zingers and Buzzers')
insert into tblEnemy values(103,'Croctopus','Croctopuses appear in blue and purple varieties, and their color scheme resembles the venomous blue-ringed octopus.')
insert into tblEnemy values(104,'Grunts','are heavy enemies found in Wario Land II')

insert into tblAuthor values(1000,'Ahmad')
insert into tblAuthor values(1001,'Mohammad')
insert into tblAuthor values(1002,'Amr')
insert into tblAuthor values(1003,'Subhi')
insert into tblAuthor values(1004,'Rana')
 
insert into tblDoctor values (200,1,'William Hartnell','1963-11-23','1963-11-23','1966-10-29')
insert into tblDoctor values (201,12,'Peter Capaldi','2014-8-23','2014-8-23','2017-12-25')
insert into tblDoctor values (202,3,'Jon Pertwee','1970-1-3','1970-1-3','1974-6-8')
insert into tblDoctor values (203,2,'Patrick Troughton','1966-11-5','1966-11-5','1969-6-21')
insert into tblDoctor values (204,7,'Sylvester McCoy','1987-9-7','1987-9-7','1989-12-6')

insert into tblCompanion values (1,'Susan Foreman','Carole Ann Ford')
insert into tblCompanion values (2,'Polly','Anneke Wills ')
insert into tblCompanion values (3,'Liz Shaw',' Caroline John')
insert into tblCompanion values (7,'Mel Bush','Bonnie Langford')
insert into tblCompanion values (12,'River Song','Alex Kingston')

Alter table tblEpisode add constraint df_Episode_Notes DEFAULT 'No Notes' for Notes
Alter table tblEpisode add constraint df_Episode_Type DEFAULT 'Type of Episode' for EpisodeType

insert into tblEpisode (EpisodeId,SeriesNumber,EpisodeNumer,Title,EpisodeDate,AuthorId,DoctorId) values (300,1,2,'The Forest of Fear','1963-12-14',1002,200)
insert into tblEpisode (EpisodeId,SeriesNumber,EpisodeNumer,Title,EpisodeDate,AuthorId,DoctorId) values (301,3,42,'An Unearthly Child','1963-11-23',1000,200)
insert into tblEpisode (EpisodeId,SeriesNumber,EpisodeNumer,Title,EpisodeDate,AuthorId,DoctorId) values (302,9,241,'The Time of the Doctor','2013-12-25',1001,202)
insert into tblEpisode (EpisodeId,SeriesNumber,EpisodeNumer,Title,EpisodeDate,AuthorId,DoctorId) values (303,8,242,'Deep Breath','2014-8-23',1003,204)
insert into tblEpisode (EpisodeId,SeriesNumber,EpisodeNumer,Title,EpisodeDate,AuthorId,DoctorId) values (304,10,275,'The Doctor Falls','2013-11-23',1004,201)

insert into tblEpisodeCompanion values(4000,301,2)
insert into tblEpisodeCompanion values(4001,302,12)
insert into tblEpisodeCompanion values(4002,301,1)
insert into tblEpisodeCompanion values(4003,304,7)
insert into tblEpisodeCompanion values(4004,303,3)

insert into tblEpisodeEnemy values(5000,300,101)
insert into tblEpisodeEnemy values(5001,301,101)
insert into tblEpisodeEnemy values(5002,304,103)
insert into tblEpisodeEnemy values(5003,302,102)
insert into tblEpisodeEnemy values(5004,303,100)