Checking network on till

1.	Connect to effected till via putty
2.	Change directory to  cd /usr/local/TermConfig/
3.	Vi TerminalConfig.conf
4.	Make sure the below highlighted are corresponding with server IP and Till IP

*TerminalConfig.conf*
![**TerminalConfig.conf**](TerminalConfig.conf.JPG)

5.	When you confirmed all is okay or changes has been made reboot till till in order for the settings to take effect.


If you can’t connect via Putty from outside network

1.	Putty into the till and go to cd /home/reg/
2.	Vi .Bashrc as per below

*Bashrc*
![**Vi of Bashrc**](bashrc.JPG)

3.	Scroll down below and make sure the IP is 196.10.128.1
4.	Reboot till for changes to take effect

*Bashrc default Route*
![**Bashrc default Route**](bashrc-defaultroute.JPG)
