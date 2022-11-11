
//1729. Find Followers Count

CREATE TABLE Followers (
    user_id  int,
    follower_id int,
     PRIMARY KEY ( user_id,follower_id )
);

select * from Followers;