BEGIN d_mmPe //Pelial

////////////////////////////////////
//BEFORE DEATHS
////////////////////////////////////

IF ~IsGabber("Safana") Global("g_mmMQ1","GLOBAL",1)~ THEN BEGIN Safana1
	SAY @0 /* Well, aren’t you a pretty thing? Maybe you’d like to share a drink with me, and we can swap stories. I’m a ship captain, you know, and plenty of interesting things can happen at sea. */
		IF ~~ THEN EXIT
END


IF ~Global("g_mmMQ1","GLOBAL",1)~ THEN BEGIN char1
	SAY @1 /* Bah! I don’t care what that stuffy idiot says, I’m breaking into the drinks. */
		IF ~~ THEN EXIT
END
