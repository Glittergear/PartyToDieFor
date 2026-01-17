BEGIN d_mmia

IF ~ Global("g_mmMQ1","GLOBAL",1) ~ THEN BEGIN 0
	SAY ~You must be <CHARNAME>! Aye, I was told to be expecting you. Would you like to go to Dukes’ Retreat Isle?~
		++ ~Yes.~ GOTO yes
		++ ~Not yet.~ GOTO no
END

IF ~~ yes
	SAY ~Very well. All aboard!~
IF ~~ THEN DO ~ ActionOverride(Player1,LeaveAreaLUA("g_mmi","",[1386.2669],4)) ActionOverride(Player2,LeaveAreaLUA("g_mmi","",[1390.2669],4)) ActionOverride(Player3,LeaveAreaLUA("g_mmi","",[1348.2661],4)) ActionOverride(Player4,LeaveAreaLUA("g_mmi","",[1470.2864],4)) ActionOverride(Player5,LeaveAreaLUA("g_mmi","",[1486.2713],4)) ActionOverride(Player6,LeaveAreaLUA("g_mmi","",[1409.2735],4)) DestroySelf()~ EXIT
END

IF ~~ no
	SAY ~Well, talk to me when you are.~  
IF ~~ THEN EXIT
END

IF ~ !Global("g_mmMQ1","GLOBAL",1) ~ THEN BEGIN 0
	SAY ~Sorry, but I'm not sure you're one of the people I'm waiting for.~  
IF ~~ THEN EXIT
END

