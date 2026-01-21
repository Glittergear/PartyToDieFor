BEGIN d_mmza //Zombie Adrik g_mmMQ1

CHAIN IF ~True()~ THEN d_mmza threat
	//~Oh dear.~
	@0 /* Each of you has eluded Tyr’s judgement, but no longer. You are all monsters-in-flesh. The day of judgment is at hand. You are mere flies in my web, and have been invited to this island to die. First, Adrik. And soon, you. */
	== %EDWIN_JOINED% IF ~InParty("Edwin")~ THEN  @1 /* Bah! As if that is enough to intimidate a Red Wizard! Edwin Odesseiron is not so easily cowed (nor so easily killed). */
	== d_mmEB @2 /* Calling us monsters? What a sick prank this is! */
	== d_mmCA @3 /* Bah! Tyr’s judgement? As if Tyr would approve of using a zombie like that! */
	== %XZAR_JOINED% IF ~InParty("xzar")~ THEN @4 /* Well, since no one is using that body anymore… Could I have it? Please? It looks very fresh, dead for not even a few hours. Drowning has such interesting effects on a cadaver, and I so rarely get to study a drowned corpse! */
	== %MONTARON_JOINED% IF ~InParty("xzar") InParty("montaron")~ THEN @5 /* That’s enough out of ye! Can’t ye see we got bigger problems than yer research interests?! */
	== d_mmTT @6 /*  So, this is… embarrassing to admit, but I don’t actually know any Zashir Anskuln. I swear to the gods that I have never met anyone of that name in my life. Does anyone actually know our host? */
	== d_mmTT @7 /* Anyone? */
	== d_mmTT @8 /* No one at all? */
	== d_mmTr @9 /* It’s weird. This whole situation is strange. Honestly, I could use a drink about now. */
	== d_mmEB @10 /* Splendid idea. Let’s just–oh, Pelial, how much have you had already?! That is a simply obscene amount! */
	== d_mmPe @11 /* (Pelial sets down another empty bottle, but something is wrong. He is pallid, with a panicked expression. His lips move, but only a choking sound comes out. Moments later, he falls from his chair and hits the ground with a sickening thud. He is dead.) */ DO ~Kill("g_mmPe") ~
	== d_mmEB @12 /* Oh dear. Oh dear, oh dear. No one drink anything! This is… this is horrible! */
	== %XAN_JOINED% IF ~InParty("xan")~ THEN @13 /* “Horrible” is an understatement. We are on a remote island, with naught much to do but wait until death finds us all, one by one. */
	== %BRANWEN_JOINED% IF ~InParty("branwen")~ THEN @14 /* ‘Twas poison! A cowardly weapon. */
	== %GARRICK_JOINED% IF ~InParty("garrick")~ THEN @15 /* Lucky he broke into the drinks well before we did. Er, lucky for us I mean. */
	== d_mmTr @16 /* Horrible? Better just him than all of us. Besides, good riddance! Do you have any idea who that person really was? That was Pirate Captain Pelial. */
	== %SAFANA_JOINED% IF ~InParty("Safana")~ THEN  @17 /* I thought he looked familiar. */
	== d_mmCA @18 /* That scoundrel! His men robbed my husband's ship. Unless he was here to return our priceless family heirlooms, good riddance, I say! */
	== d_mmEB @19 /* How did HE get invited here? */
	== d_mmTr @20 /* Maybe he didn’t. Wouldn’t surprise me if he stole an invitation. */
	== d_mmCA @21 /* Wait, how did you know who he was? */
	== d_mmTr @22 /* I was on one of the ships he robbed. You never forget a guy who does that to you. */
	== d_mmTT @23 /* Well, that’s all very well and good. And good riddance to him! But Shipmaster Adrik was our way off the island, and now he’s dead in front of us.  */
	== d_mmTT @24 /* And apparently, whoever killed Adrik and Pelial wants *all* of us dead. Maybe we should focus more on living and figuring out who the killer is. */
	== d_mmCA @25 /* What about those rowboats at the docks here? */
	== d_mmTr @26 /* Rowboats can't get us all the way back to the Gate. */
	== d_mmDr @27 /* Hey, <CHARNAME>, you’re the Hero of Nashkel, aren’t you? Can’t you do something here? The murderer might be on the island. */
	== d_mmCA @28 /* But gods, what if one of us is the murderer?! */
	== d_mmEB @29 /* Now, there’s no reason to get into hysterics.There’s plenty of food in the storage huts here. All we have to do is wait a few days until Zashir arrives. */
	== d_mmDr @30 /* In the meantime, Tremona and I can look around the island and see if there’s anywhere for anyone to hide. Maybe there’s some clues somewhere. <CHARNAME>, you’re welcome to do the same. */
	== d_mmTr @31 /* We should all buddy up, too. We probably shouldn’t be alone, just in case. */
	 == d_mmTT @32 /* Splendid idea. I’ll buddy up with Enger. Carasta, you can go with Tremona. <CHARNAME>, you stay with Drunlo. I suppose you can talk to him when you’re ready to go back to your hut to sleep.  */ 
	== d_mmza @33 /* Groan... */
END
	++ @34 /* (Continue) */ GOTO deathZom
	
APPEND d_mmza

IF ~~ THEN BEGIN deathZom
	SAY @35 /* .... */
	IF ~~ THEN DO ~Kill("g_mmza")~ EXIT
END

END //overall dialogue file end