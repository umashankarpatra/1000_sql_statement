
//1729. Find Followers Count

CREATE TABLE Followers (
    user_id  int,
    follower_id int,
     PRIMARY KEY ( user_id,follower_id )
);

select * from Followers;

select user_id ,count(follower_id) as followers_count from Followers group by user_id order by user_id;