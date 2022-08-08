- <!--[if !supportLists]-->1.     
  <!--[endif]-->The file consists of lines of 1
  and 0 for each till as indicated from the picture above. Please see the below
  config settings at the end in brackets for each setting.
-
- 1 = ENABLED
  function
- 0 = DISABLED
  function
-
-
- <!--[if !supportLists]-->a.     
  <!--[endif]-->030:0100000000000000000000000101
  (till number)
-
- <!--[if !supportLists]-->2.     
  <!--[endif]-->Enabling VX820 VeriFone for the
  till. If 0 then it means SC5000 (None of the Boxer stores should have this
  setting on 0. See the below example.
- <!--[if !supportLists]-->a.     
  <!--[endif]-->030:010000000000000000000000010**1**
-
- <!--[if !supportLists]-->3.     
  <!--[endif]-->Enabling Ticketing. Ticketing
  can only work on XRT82 & XR6 Boxer till models. See the below example
- <!--[if !supportLists]-->a.     
  <!--[endif]-->035:00000000000000000000000000**1**1
-
- <!--[if !supportLists]-->4.     
  <!--[endif]-->Enabling P2PE (point-to-point
  encryption on all card transactions). The till would need a special VX820
  loaded from VeriFone.
- <!--[if !supportLists]-->a.  
  <!--[endif]-->030:0100000000000000000000000**1**01
-
-