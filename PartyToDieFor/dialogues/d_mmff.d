BEGIN d_mmff

IF ~ dead("g_mmmu") NumTimesTalkedTo(0)~ THEN BEGIN 0
	SAY ~By the gods! What happened here?~
		++ ~(Explain what happened).~ GOTO explain
END

IF ~~ THEN BEGIN explain
	SAY ~Looks like your story matches with the confession note on Zashir’s body. What a psychopath!~
	++ ~Can we just get going? I want to leave immediately.~ GOTO leave
	++ ~How did you know I was here, anyway?~ GOTO how
END

IF ~~ THEN BEGIN how
	SAY ~We got a report of you boarding a ship with Adrik. He’s a notorious criminal, wanted for kidnapping people and running a slave smuggling ring for the Zhentarim. It took some time, but eventually were able to piece together that he took you here, and so we followed. Gods, if only we were sooner! Are you ready to go back to the Gate?~
	++ ~Yes.~ GOTO leave
	++ ~Not yet.~ GOTO notyet
END


IF ~~ THEN BEGIN leave
	SAY ~Let's get out of here.~
IF ~~ THEN DO ~ ActionOverride(Player1,LeaveAreaLUA("AR1200","",[2507.1809],4)) ActionOverride(Player2,LeaveAreaLUA("AR1200","",[2510.1840],4)) ActionOverride(Player3,LeaveAreaLUA("AR1200","",[2544.1850],4)) ActionOverride(Player4,LeaveAreaLUA("AR1200","",[2492.1837],4)) ActionOverride(Player5,LeaveAreaLUA("AR1200","",[2461.1813],4)) ActionOverride(Player6,LeaveAreaLUA("AR1200","",[2471.1797],4)) DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN notyet
	SAY ~Well, talk to me when you are.~  
IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN hurry
	SAY ~You ready to go?~
	++ ~Yes.~ GOTO leave
	++ ~Not yet.~ GOTO notyet
END
