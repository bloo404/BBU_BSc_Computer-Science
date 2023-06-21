-- Transaction 1
ALTER DATABASE theater
SET ALLOW_SNAPSHOT_ISOLATION ON
WAITFOR DELAY '00:00:05'
BEGIN TRAN
UPDATE actor SET actor_dob = '2003-03-26' WHERE AID = 11
WAITFOR DELAY '00:00:05'
COMMIT TRAN