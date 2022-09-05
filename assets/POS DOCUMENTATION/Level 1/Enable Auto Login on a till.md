In-order o fix this issue, we need to enable auto login.
Open Putty
Type in the IP address of the till

Username: root
Password: root
The reason for this is because the error says that “only root will have permission for the file”, meaning the following command (TerminalConfig) can only be executed if you’re logged in as “ROOT”.

Type TerminalConfig (its case sensitive)

Press 5 System Management
Press 2 System options
Press 1 Autologin Options
Press 1 Enable auto login
A pop-up box will appear, press reg and press enter. The reason for this is that the default login user name is reg.
The Username has been changed to reg
To save changes, press F8
A popup box will appear, press F8 again to exit
Press exit to close PUTTY
Open CMD
Reboot the till - reboot TILLIP
VNC into till to test
