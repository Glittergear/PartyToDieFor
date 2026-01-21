BEGIN d_mmTTk

IF ~True() ~ THEN BEGIN 0
	SAY @0 /* Oh, gods, <CHARNAME>! You have to help me! I… I wasn’t in control of myself. I swear upon all the gods that I didn’t kill the others, but <CHARNAME>… I don’t know what happened! It was as if my body belonged to someone else! */
		+~InParty("Skie")~+ @1 /* You're lying. */ GOTO liar1
		+~!InParty("Skie")~+ @1 /* You're lying. */ GOTO liar2
		+~InParty("Skie")~+ @2 /* ...what? */ GOTO liar1
		+~!InParty("Skie")~+ @2 /* ...what? */ GOTO liar2
		+~InParty("Skie")~+ @3 /* A domination spell? */ GOTO liar1
		+~!InParty("Skie")~+ @3 /* A domination spell? */ GOTO liar2
END

IF ~~ THEN BEGIN liar1
SAY @4 /* I’m not lying! Skie… <CHARNAME>… I’m sorry, but I can’t–I can’t fight it! */
	IF ~~ THEN DO ~Enemy() ~ EXIT
END



IF ~~ THEN BEGIN liar2
SAY @5 /* I’m not lying! <CHARNAME>… I’m sorry, but I can’t–I can’t fight it! */
	IF ~~ THEN DO ~Enemy() ~ EXIT
END
