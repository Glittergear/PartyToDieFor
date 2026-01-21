BEGIN d_mmiM

CHAIN IF ~True()~ THEN d_mmiM talk0
	@0 /* Ah, you must be <CHARNAME>, Hero of Nashkel! I hope you’ve been enjoying your time in Baldur’s Gate thus far. My benefactor, Zashir Anskuln, would like to invite you to the Dukes’ Retreat Isle. Please speak to Captain Adrik outside the Harbor Master’s Building near the docks when you are ready to embark to the Isle. */
	== %SKIE_JOINED% IF ~InParty("Skie")~ THEN @1 /* The Dukes’ Retreat? Ooh, <CHARNAME>, I've always wanted to go! Very exclusive. They say the new owner doesn't even live in Baldur's Gate! */
END
	++ @2 /* Who is Zashir Anskuln? */ GOTO who
	++ @3 /* What can you tell me about the Isle? */ GOTO what
	++ @4 /* Should I bring anything? */ GOTO whatbring
	+~Alignment(Player1,MASK_EVIL)~+ @5 /* Thank you; I’ll take the invitation now. */ GOTO byenowE
	+~!Alignment(Player1,MASK_EVIL)~+ @5 /* Thank you; I’ll take the invitation now. */ GOTO byenowG

APPEND d_mmiM

IF ~~ THEN BEGIN who
	SAY @6 /* Truthfully, I don’t know. I haven’t met her. She sent a letter to the Messengers’ Guild requesting that someone deliver the invitation to you and several others. I believe that your exploits along the Sword Coast earned you an invitation. */
	++ @3 /* What can you tell me about the Isle? */ GOTO what
	++ @4 /* Should I bring anything? */ GOTO whatbring
	+~Alignment(Player1,MASK_EVIL)~+ @5 /* Thank you; I’ll take the invitation now. */ GOTO byenowE
	+~!Alignment(Player1,MASK_EVIL)~+ @5 /* Thank you; I’ll take the invitation now. */ GOTO byenowG
END

IF ~~ THEN BEGIN what
	SAY @7 /* It used to be owned by a noble by the name of Tyndal Marlow, who sold it when he moved to Waterdeep. It is currently owned by Zashir Anskuln. I understand that Zashir is hoping to continue Tyndal’s tradition of hosting exclusive parties with well-to-do people. I assume that your exploits along the Sword Coast earned you an invitation. */
	++ @2 /* Who is Zashir Anskuln? */ GOTO who
	++ @4 /* Should I bring anything? */ GOTO whatbring
	+~Alignment(Player1,MASK_EVIL)~+ @5 /* Thank you; I’ll take the invitation now. */ GOTO byenowE
	+~!Alignment(Player1,MASK_EVIL)~+ @5 /* Thank you; I’ll take the invitation now. */ GOTO byenowG
END

IF ~~ THEN BEGIN whatbring
	SAY @8 /* I can’t say for certain, but I don’t believe that to be necessary. If Zashir’s parties are anything like Tyndal Marlow’s, everything will be both exceptional and accounted for. */
	++ @2 /* Who is Zashir Anskuln? */ GOTO who
	++ @3 /* What can you tell me about the Isle? */ GOTO what
	+~Alignment(Player1,MASK_EVIL)~+ @5 /* Thank you; I’ll take the invitation now. */ GOTO byenowE
	+~!Alignment(Player1,MASK_EVIL)~+ @5 /* Thank you; I’ll take the invitation now. */ GOTO byenowG
END

IF ~~ THEN BEGIN byenowE
	SAY @9 /* Most excellent. No need to worry about a courier fee; Zashir already accounted for that. Good <DAYNIGHT> to you, my <LADYLORD>. */
		IF ~~ THEN DO ~SetGlobal("g_mmMQ1","GLOBAL",1) GiveItemCreate("g_mmi7",Player1,1,1,0) EscapeArea()~ EXIT 
END

IF ~~ THEN BEGIN byenowG
	SAY @9 /* Most excellent. No need to worry about a courier fee; Zashir already accounted for that. Good <DAYNIGHT> to you, my <LADYLORD>. */
		IF ~~ THEN DO ~SetGlobal("g_mmMQ1","GLOBAL",1) GiveItemCreate("g_mmi8",Player1,1,1,0) EscapeArea()~ EXIT 
END

END
