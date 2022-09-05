- **[Where to Find POS logs and What they're for]{.ul}**
  title:: POS LOGS
  
  There are various types log files on the till. However, from a support
  level we basically just focus on two of them.
  
  Both these file are found in the gd90 fold on the till. To acquire them
  one has to net use to the till in question: net use X: . of
  till\>\\reg\\gd90 /user:reg reg
  
  ![](vertopal_e1946033cc9d416db5898e8f4b10809d/media/image1.png)
- [The Error Log]{.ul}:
  
  The error log (aptly named ErrorLog.\[whatever the till number is that
  you're on\]) contains various errors and feedback collected that has to
  do with the software state of the till. These can include start up
  errors, files that may be corrupt and preventing the till from starting
  up, and any other software errors that may occur.
  
  In the screenshot blow I am on till 5, therefore the Error Log in name
  ErrorLog.005
  
  ![](vertopal_e1946033cc9d416db5898e8f4b10809d/media/image2.png){width="6.268055555555556in"
  height="3.1006944444444446in"}
  
  By writing the log file to Wordpad we can then inspect and see what kept
  within this log, see:
  
  ![](vertopal_e1946033cc9d416db5898e8f4b10809d/media/image3.png)
- The eftlog.\<dot till number\> is the log that you look to for any EFT
  and Verifone errors.
  
  Basically Wordpad that file as well and it will look pretty much similar
  to the one above.
  
  OK right, now that you have armed yourself with this knowledge go and
  save the POS world!