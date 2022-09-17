- 1. Copy *.* server\data to bkp folder
   2. Check for HOIDC
	- cd: /server.safe
- 3. Stop POS Server
  4. cd: \Sever\Data
  5. md \nds\srvbkp_date
  6. copy *.* to nds folder created
  7. cd..
  8. c:\Server
  9. notepad M_LANXXX.ORG
  10. **Highlight from C:800 to EOF** and copy to
	- _c:\Server\data\M_LAN999.DAT_
	- _YES save changed_
- 11. c:\Server\notepad S_CTLXXX.ORG(Cashier File)
	- **Copy from C:0800 to EOF**
	- Copy to c:\Server\Data notepad M_CTL999.DAT
	- Same from 0800
	- Save
- 12. C:\Server\Data move S_IDC8* c:\nds
	- Always be one file
- 13. cd:\web
	- jre stop
	- cd:\web\mtxwm\logs
	- move logs to backup nds folder created
- 14. cd:\web jrestart
- 15. Start POS Server