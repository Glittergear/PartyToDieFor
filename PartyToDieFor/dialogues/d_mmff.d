BEGIN d_mmff

IF ~ dead("g_mmmu") NumTimesTalkedTo(0)~ THEN BEGIN 0
	SAY @0 /* By the gods! What happened here? */
		++ @1 /* (Explain what happened). */ GOTO explain
END

IF ~~ THEN BEGIN explain
	SAY @2 /* Looks like your story matches with the confession note on Zashir’s body. What a psychopath! */
		++ @3 /* Can we just get going? I want to leave immediately. */ GOTO leave
		++ @4 /* How did you know I was here, anyway? */ GOTO how
END

IF ~~ THEN BEGIN how
	SAY @5 /* We got a report of you boarding a ship with Adrik. He’s a notorious criminal, wanted for kidnapping people and running a slave smuggling ring for the Zhentarim. It took some time, but eventually were able to piece together that he took you here, and so we followed. Gods, if only we were sooner! Are you ready to go back to the Gate? */
		++ @6 /* Yes. */ GOTO leave
		++ @7 /* Not yet. */ GOTO notyet
END


IF ~~ THEN BEGIN leave
	SAY @8 /* Let's get out of here. */
		IF ~~ THEN DO ~ActionOverride(Player1,LeaveAreaLUA("AR1200","",[2507.1809],4))
						ActionOverride(Player2,LeaveAreaLUA("AR1200","",[2510.1840],4))
						ActionOverride(Player3,LeaveAreaLUA("AR1200","",[2544.1850],4))
						ActionOverride(Player4,LeaveAreaLUA("AR1200","",[2492.1837],4))
						ActionOverride(Player5,LeaveAreaLUA("AR1200","",[2461.1813],4))
						ActionOverride(Player6,LeaveAreaLUA("AR1200","",[2471.1797],4))
						DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN notyet
	SAY @9 /* Well, talk to me when you are. */  
		IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN hurry
	SAY @10 /* You ready to go? */
		++ @6 /* Yes. */ GOTO leave
		++ @7 /* Not yet. */ GOTO notyet
END
