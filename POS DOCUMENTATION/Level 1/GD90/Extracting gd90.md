Extracting gd90.tar

PlEASE MAKE SURE TO BACK UP ALL TILL DATA AND CHECK IF THE DATA WAS ALREADY PROCESSED AND TILL NOT USED!

1.	Below is a screenshot of how to extract the gd90.tar when till is stuck at GdPOS.main(GdPos.java:1246), this should be used when the till is unable to start up, please note that this is the last resort before reloading the till, all other troubleshooting must be done before attempting this.
2.	Cd /home/reg/
3.	Sftp to another till with the same hardware setup EG. Sftp 155.155.25.6
4.	Navigate to the gd90 Dir (cd /home/reg)
5.	Get the tar file from this DIR (type get gd90.tar)
6.	Type bye to exit the sftp connection.
7.	Then type the below once you have excited the SFTP connectionTar –xf ../gd90.tar (for this command to work you have to be in the gd90 directory)
8.	Enter
9.	Change the till number in the 7052_env.bat to the correct till.
10.	Bring till up (1812345)

See screenshot of error below

*GdPOS.main-error*
![**GdPOS.main-error**](GdPOS.main-error.JPG)

How to tar GD90 folder

*Tar GD90 Folder*
![**Tar GD90 Folder**](targd90.JPG)
