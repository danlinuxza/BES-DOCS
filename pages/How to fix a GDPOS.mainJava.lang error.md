title:: How to fix a GDPOS.mainJava.lang error

- ![**GdPosSA.env**](gdpossa.env.jpg)
-
- Click on Start
- Click on Run
- Type in the IP address of a working till, with \reg\gd90
  •	Eg: \\266.139.25.1\reg\gd90
  •	Press ENTER
- The first gd90 folder should popup ¬
  •	Navigate to the LIB folder, right-click and press copy
- Click on Start
- Click on Run  
  ¬
- •	Type in the IP address of the till with the ERROR  
  With /reg/gd90
  •	Eg: \\266.139.25.6\reg\gd90
  •	Press ENTER
- The second gd90 folder of should popup
  •	Right-click on the second gd90 folder and press, paste
- Open CMD
  •	Press IP config
  •	Reboot the till that has the error
  •	E.g.: reboot 156.139.25.6
- Now press:
  •	Ping 156.139.25.6 –t
  •	Until the till comes online
-
- It will keep pinging until it can connect 
  •	When the connection to the till has been established.
  •	Press CTRL+C, to stop pinging.
- After the PING is successful VNC/Putty into till:
  •	Press Tilln and the IP address of the till with the error 
  •	E.g.: Tilln 156.139.25.6
  •	Press Enter
-
- Wait for the till to come up
- Till should come up now.
  
  You now know how to fix a GDPOS.main/Java.lang error 
  WELLDONE!! And thank you for taking your time 
  	Created by Jermaine Sepkitt