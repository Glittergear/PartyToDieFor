BEGIN d_mmia2

CHAIN IF ~Global("g_mmig","GLOBAL",0)~ THEN d_mmia2 imOut
 @0 /* Here you are. I’ll be going back to the Gate, but I’ll return to get you in a few days. */
	== %AJANTIS_JOINED% IF ~InParty("Ajantis")~ THEN @1 /* By Helm! This island has an overwhelming sense of evil about it. We must stay vigilant! */
	== %JAHEIRA_JOINED% IF ~InParty("Jaheira")~ THEN @2 /* There is something not quite right about the nature here. I cannot place it exactly, but something is off. */
	== %FALDORN_JOINED% IF ~InParty("Faldorn")~ THEN @3 /* Do you sense that? Something lurks in the woods here. */
	== d_mmia2 @4 /* I believe everyone else is in that Dining Hall there. Enjoy your stay! */
END
		IF ~~ THEN DO ~SetGlobal("g_mmig","GLOBAL",1) EscapeArea()~ EXIT //mmig = g means gone
