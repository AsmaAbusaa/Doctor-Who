create table tblEnemy(EnemyId Int PRIMARY KEY,EnemyName varchar(255),Description varchar(255))
create table tblEpisodeEnemy(EpisodeEnemyId Int PRIMARY KEY,EpisodeId Int,EnemyId Int, FOREIGN KEY(EnemyId)REFERENCES tblEnemy(EnemyId))
create table tblAuthor(AuthorId Int PRIMARY KEY,AuthorName varchar(255))
create table tblEpisode(EpisodeId Int PRIMARY KEY,SeriesNumber Int,EpisodeNumer Int,
EpisodeType varchar(255),Title varchar(255),EpisodeDate date,AuthorId Int,DoctorId Int,Notes varchar(255),FOREIGN KEY(AuthorId)REFERENCES tblAuthor(AuthorId))
create table tblEpisodeCompanion(EpisodeCompanionId Int PRIMARY KEY,EpisodeId Int,CompanionId Int, FOREIGN KEY(EpisodeId)REFERENCES tblEpisode(EpisodeId))
create table tblDoctor(DoctorId Int PRIMARY KEY,DotorNumber Int,DoctorName varchar(255),BirthDate date,FirstEpisodeDate date,LastEpisodeDate date)
create table tblCompanion(CompanionId Int PRIMARY KEY,CompanionName varchar(255),WhoPlayed varchar(255))
Alter table tblEpisodeEnemy add constraint episode_FK foreign key (EpisodeId) references tblEpisode (EpisodeId)
Alter table tblEpisode add constraint doctor_FK foreign key (DoctorId) references tblDoctor (DoctorId)
Alter table tblEpisodeCompanion add constraint companion_FK foreign key (CompanionId) references tblCompanion (CompanionId)
Alter table tblEpisodeCompanion add constraint episodeID_FK foreign key (EpisodeId) references tblEpisode (EpisodeId)

