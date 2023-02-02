insert into tblEnemy values (100,'Army','Armies are small armadillo enemies that appear in Donkey Kong Country and Donkey Kong Land.'),
                            (101,'Beach Koopa','is a Koopa Troopa that has lost its shell and wears nothing more than an undershirt'),
                            (102,'Buzzes','also named Green Zingers and Buzzers'),
                            (103,'Croctopus','Croctopuses appear in blue and purple varieties, and their color scheme resembles the venomous blue-ringed octopus.'),
                            (104,'Grunts','are heavy enemies found in Wario Land II')


insert into tblAuthor values (1000,'Ahmad'),
                             (1001,'Mohammad'),
                             (1002,'Amr'),
                             (1003,'Subhi'),
							 (1004,'Rana')
 
insert into tblDoctor values (200,1,'William Hartnell','1963-11-23','1963-11-23','1966-10-29'),
                             (201,12,'Peter Capaldi','2014-8-23','2014-8-23','2017-12-25'),
                             (202,3,'Jon Pertwee','1970-1-3','1970-1-3','1974-6-8'),
                             (203,2,'Patrick Troughton','1966-11-5','1966-11-5','1969-6-21'),
                             (204,7,'Sylvester McCoy','1987-9-7','1987-9-7','1989-12-6')

insert into tblCompanion values (1,'Susan Foreman','Carole Ann Ford'),
                                (2,'Polly','Anneke Wills '),
                                (3,'Liz Shaw',' Caroline John'),
                                (7,'Mel Bush','Bonnie Langford'),
                                (12,'River Song','Alex Kingston')

Alter table tblEpisode add constraint df_Episode_Notes DEFAULT 'No Notes' for Notes
Alter table tblEpisode add constraint df_Episode_Type DEFAULT 'Type of Episode' for EpisodeType


insert into tblEpisode (EpisodeId,SeriesNumber,EpisodeNumer,Title,EpisodeDate,AuthorId,DoctorId)
 values (300,1,2,'The Forest of Fear','1963-12-14',1002,200),
		(301,3,42,'An Unearthly Child','1963-11-23',1000,200),
		(302,9,241,'The Time of the Doctor','2013-12-25',1001,202),
		(303,8,242,'Deep Breath','2014-8-23',1003,204),
		(304,10,275,'The Doctor Falls','2013-11-23',1004,201)


insert into tblEpisodeCompanion values  (4000,301,2),
										(4001,302,12),
										(4002,301,1),
										(4003,304,7),
										(4004,303,3)

insert into tblEpisodeEnemy values  (5000,300,101),
									(5001,301,101),
									(5002,304,103),
									(5003,302,102),
									(5004,303,100)