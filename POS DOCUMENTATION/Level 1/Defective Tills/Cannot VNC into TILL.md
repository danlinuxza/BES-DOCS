Cannot VNC into TILL

Connect to till with putty (Username and password =root Remember linux is case sensitive and should be in lowercase)
There are 3 ways to connect to till:
1.	X11vnc –display :0 and hit enter
Open vnc and connect to till by typing the ip address of the till
2.	X11vnc –auth /home/reg/.Xauthority –display :0
And connect with vnc, after the ip of the till put a :0 or :1
3.	X11vnc
Connect with vnc and try the above section of :0 and :1
If any of above mentioned commands don’t work a H/W call will have to be logged to reload till.
