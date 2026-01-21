BEGIN d_mmTT //Tenadar Thornber

////////////////////////////////////
//BEFORE DEATHS
////////////////////////////////////

IF ~IsGabber("Skie") Global("g_mmMQ1","GLOBAL",1)~ THEN BEGIN Skie1
	SAY @0 /* You know, Skie, I wasn’t expecting you to be here! Why, your father hardly ever let you outside the manor grounds! Unfair, really, but understandable, I suppose. Lots of unsavory types in the world, and some of them are even in Baldur’s Gate. It’s a shame, how dangerous the world has become. */
	= @1 /* Of course, you’re a competent adventuress now! I never meant to insinuate otherwise. I never once doubted your potential, you know.  */ 
	IF ~~ THEN EXIT
END

// 
CHAIN IF ~ Global("g_mmMQ1","GLOBAL",1) Global("g_mmTalk","GLOBAL",0)~ THEN d_mmTT firstTalk
	@2 /* Ah! Finally! It’s about time you showed up! I apologize for the behavior of the others; I told them to wait until you arrived to eat, but, well, you know how the lower classes can be. */ DO ~IncrementGlobal("g_mmMQ1","GLOBAL",1)~
	== %SKIE_JOINED% IF ~InParty("Skie")~ THEN @3 /* Oh! Tenadar, you’re here too? And Enger and Carasta! How exciting! */
END
	++ @4 /* And you are...? */ GOTO manners

APPEND d_mmTT

IF ~~ THEN BEGIN manners
	SAY @5 /* Ah, my manners... Lord Tenadar Thornber at your service. The Silvershields are old friends, of course. Delighted to be here... certain present company aside. */
	= @6 /* On which note - unfortunately our gracious host Zashir is delayed. She hopes to arrive before we depart, so let us pray that Shaundakal speeds his travels. */
	= @7 /*  <CHARNAME>, Have some food, allow the others to introduce themselves, and let me know when you’d like to break out the drinks.  */
		++ @8 /* Thank you, I’ll let you know when. */ GOTO enjoy1
		++ @9 /* I'm ready now. */ GOTO death1
END

IF ~~ THEN BEGIN enjoy1
	SAY @10 /* Enjoy. */
	IF ~~ THEN DO ~SetGlobal("g_mmTalk","GLOBAL",1)~ EXIT
END

//END

IF ~Global("g_mmTalk","GLOBAL",1)~ THEN BEGIN enjoy2 //Global("g_mmMQ1","GLOBAL",1) 
	SAY @11 /* Are you ready to break out the drinks? */
		++ @12 /* Not yet. I’ll let you know when. */ GOTO enjoy3
		++ @9 /* I'm ready now. */ GOTO death1
END



IF ~~ THEN BEGIN enjoy3
	SAY @13 /* Just let me know when. */
	IF ~~ THEN EXIT
END

////////////////////////////////////
//DEATHS 1 & 2
////////////////////////////////////

IF ~Global("g_mmMQ1","GLOBAL",1)~ THEN BEGIN death1
	SAY @14 /* Now, where are the drinks? Oh dear. I had told everyone to hold off on the drinks at least until you had settled in! Pelial! Put that down or so help me–wait, is that… Shipmaster Adrik? */
	IF ~~ THEN DO ~SetGlobal("g_mmMQ1","GLOBAL",2)
					SetGlobal("g_mmTalk","GLOBAL",2)
					ClearAllActions()
					StartCutSceneMode()
					StartCutScene("g_death1")~ EXIT
END

IF ~IsGabber("Skie") Global("g_mmMQ1","GLOBAL",3)~ THEN BEGIN Skie3
	SAY @15 /* This is certainly an… unexpected turn of events! What a twisted game this is! Skie, be careful, and I am certain that we will get out of this alive. You just must be careful, understand? It would be tragic for either one of us to die. Why, what would happen to the City then? */
	IF ~~ THEN EXIT
END

IF ~Global("g_mmMQ1","GLOBAL",3) PartyHasItem("g_mmDag")~ THEN BEGIN charname3
	SAY @16 /* If no one knows Zashir, I wonder why she’d invite us here. That’s not important right now though. The killer must be found. I think it’s one of those thief-types. Violent sorts, they are, and always lurking about. */
		++ @17 /* I found this dagger in your belongings. Care to explain? */ GOTO charname3explain
END

IF ~~ THEN BEGIN charname3explain
	SAY @18 /* What? Let me see that. */
	= @19 /* Hmph. I’ve never seen that before in my life. I’ll take that though; with a murderer on the loose, it’d be good to be armed! And only fair to be, considering that you, Drunlo, and Tremona are armed. */
		++ @20 /* Alright, you can have it. */ GOTO charname3yes
		++ @21 /* No, I'm not giving it to you. */ GOTO charname3no
END

IF ~~ THEN BEGIN charname3yes
	SAY @22 /* Excellent. Hopefully I won’t need to use this. But it is only fair that I have something–after all, you, Drunlo, and Tremona are armed. */
	= @23 /* Though why Drunlo is armed is beyond me. He said he was invited to an alchemical retreat. Why would you bring weapons to something like that? */
	IF ~~ THEN DO ~TakePartyItem("g_mmDag")~ EXIT
END

IF ~~ THEN BEGIN charname3no
	SAY @24 /* What?! Why not? You’re armed, as is Drunlo and Tremona. You’d leave me defenseless? */
	IF ~~ THEN EXIT
END

IF ~Global("g_mmMQ1","GLOBAL",3)~ THEN BEGIN charname3.1
	SAY @25 /* If no one knows Zashir, I wonder why she’d invite us here. That’s not important right now though. The killer must be found. I think it’s one of those thief-types. Violent sorts, they are, and always lurking about.  */
	IF ~~ THEN EXIT
END


END
///////////////////////////////////
// DEATH 3 ENGER
///////////////////////////////////

CHAIN IF ~Global("g_mmMQ1","GLOBAL",4) PartyHasItem("g_mmr3")~ THEN d_mmTT badmorn
	@26 /* Stabbed to death? Enger was stabbed to death? That bloodied note… you’re serious, aren’t you? */
	== d_mmTT @27 /* I confess… I was a bit late myself, and was the third-to-last person to arrive. Everyone else was already here. You and Tremona arrived later than I did. */
	== d_mmTr @28 /* And you did check up on him. What’s to say that you’re not the murderer? */
END
	+~!InParty("Xzar")~+ @29 /* I can't be the murderer. Why would I do something like this? */ GOTO whywouldi
	+~InParty("Xzar")~+ @29 /* I can't be the murderer. Why would I do something like this? */ GOTO whywouldiXzar

APPEND d_mmTT
END // ???

CHAIN IF ~Global("g_mmMQ1","GLOBAL",4) PartyHasItem("g_mmr3") InParty("Xzar")~ THEN d_mmTT whywouldiXzar
	@30 /* That is a good question, isn't it? */
	== %EDWIN_JOINED% IF ~InParty("Edwin")~ THEN @31 /* Bah! I can think of a few reasons, but we are competent enough to not be caught doing so (or at least, I am). */
	== %AJANTIS_JOINED% IF ~InParty("Ajantis")~ THEN @32 /* As a squire paladin of The Order of the Radiant Heart, I can vouch for <CHARNAME>! <PRO_HESHE> is a good and righteous person, and would never do such a crime! */
	== %XZAR_JOINED% IF ~InParty("Xzar")~ THEN @33 /* So I could have the bodies, of course! Don’t you love me? People always give considerate gifts to their loved ones. */
END
	++ @34 /* I don't love you, Xzar. */ GOTO xzarNoLove
	++ @35 /* Of course I love you, but I have other ideas. */ GOTO xzarYesLove

APPEND d_mmTT
END // ???


CHAIN IF ~Global("g_mmMQ1","GLOBAL",4) PartyHasItem("g_mmr3") InParty("Xzar")~ THEN d_mmTT xzarNoLove
	@36 /* Er... */
	== %XZAR_JOINED% IF ~InParty("Xzar")~ THEN @37 /* Of course you do! Why else would you choose to be my companion, and why else would I choose to be yours? You aren’t Monty, you wouldn’t travel with someone you don’t love in one way or another, would you? */
END
	++ @38 /* Let's just... move on. */ GOTO moveOn
	++ @39 /* There's plenty of reasons, but let's move on. */ GOTO moveOn

APPEND d_mmTT
END // ???

CHAIN IF ~Global("g_mmMQ1","GLOBAL",4) PartyHasItem("g_mmr3") InParty("Xzar")~ THEN d_mmTT xzarYesLove
	@36 /* Er... */
	== %XZAR_JOINED% IF ~InParty("Xzar")~ THEN @40 /* Other ideas? I hope they are just as good as corpses. Perhaps something to do with rabbits? Rabbits always make me hungry. I hope you’ll also bring snacks. */
END
	++ @38 /* Let's just... move on. */ GOTO moveOn
	++ @41 /* Of course I'll bring snacks. But let's focus. */ GOTO moveOn

APPEND d_mmTT
END // ???

CHAIN IF ~Global("g_mmMQ1","GLOBAL",4) PartyHasItem("g_mmr3") !InParty("Xzar")~ THEN d_mmTT whywouldi
	@30 /* That is a good question, isn't it? */
	== %EDWIN_JOINED% IF ~InParty("Edwin")~ THEN @31 /* Bah! I can think of a few reasons, but we are competent enough to not be caught doing so (or at least, I am). */
	== %AJANTIS_JOINED% IF ~InParty("Ajantis")~ THEN @32 /* As a squire paladin of The Order of the Radiant Heart, I can vouch for <CHARNAME>! <PRO_HESHE> is a good and righteous person, and would never do such a crime! */
	== d_mmCA @42 /* <CHARNAME> is the Hero of Nashkel, after all. I doubt <PRO_HESHE> would go tarnish <PRO_HISHER> reputation with murder, even if the victims aren’t the most savory types. */
END
	++ @43 /* What do you mean by 'not the most savory types'? */ GOTO nottasty

APPEND d_mmTT

IF ~~ THEN BEGIN moveOn
	SAY @42 /* <CHARNAME> is the Hero of Nashkel, after all. I doubt <PRO_HESHE> would go tarnish <PRO_HISHER> reputation with murder, even if the victims aren’t the most savory types. */
	++ @43 /* What do you mean by 'not the most savory types'? */ GOTO nottasty
END

IF ~Global("g_mmMQ1","GLOBAL",4) Global("g_mmEng","GLOBAL",0)~ THEN BEGIN goodmorn
	SAY @44 /* Well, SOMEONE certainly likes to take their time! Hmph! Still at least you aren’t the last this time… Enger still hasn’t arrived yet, and it’s improper to eat before everyone arrives. Go to his hut and drag him out here–and tell him that no one cares if his outfit is matching! There are much more important things than that! */
	= @45 /* We were in the Third Hut. Go drag him over here! */
	IF ~~ THEN DO ~SetGlobal("g_mmEng","GLOBAL",1)~ EXIT 
END

IF ~Global("g_mmEng","GLOBAL",1) Global("g_mmMQ1","GLOBAL",4) !PartyHasItem("g_mmr3")~ THEN BEGIN Skie5
	SAY @46 /* Go drag Enger over here! We were in the Third Hut. */
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN nottasty
	SAY @47 /* Well, Pelial was a Pelial. And Enger…. He wasn’t an honest sort. Ran charities, but the charities always had less money than you’d expect with all the fundraising they did. If you catch my drift. */
	= @48 /* Not that I’m accusing the dead of anything! That would be uncouth. Speak to everyone. I'm sure there's got to be some sort of clue as to who the killer is! */
	IF ~~ THEN DO ~SetGlobal("g_mmMQ1","GLOBAL",5)~ EXIT
END

IF ~IsGabber("Skie") Global("g_mmMQ1","GLOBAL",5)~ THEN BEGIN Skie5
	SAY @49 /* Oh, I’m so sorry that Enger is gone. He was always so thoughtful and knew exactly what to get everyone, and when. He will be deeply missed. Don’t worry, Skie, I’ll make sure we get out of this alive. Baldur’s Gate needs us, after all! There no reason for us to die here. */
	IF ~~ THEN EXIT
END


IF ~Global("g_mmMQ1","GLOBAL",5) PartyHasItem("g_mmDag")~ THEN BEGIN char5
	SAY @50 /* Goodness! I leave him alone for just a few minutes, and someone murders him! I wasn’t gone for very long, and no one heard or saw anything! Strange, isn’t it? Well, at least everyone knows that I can’t be the murderer now.  I have an ironclad alibi. */
		++ @17 /* I found this dagger in your belongings. Care to explain? */ GOTO charname3explain
		IF ~~ THEN EXIT
END

IF ~Global("g_mmMQ1","GLOBAL",5)~ THEN BEGIN char5
	SAY @50 /* Goodness! I leave him alone for just a few minutes, and someone murders him! I wasn’t gone for very long, and no one heard or saw anything! Strange, isn’t it? Well, at least everyone knows that I can’t be the murderer now.  I have an ironclad alibi. */
	IF ~~ THEN EXIT
END


END
///////////////////////////////////
// DEATH 4 CARASTA
///////////////////////////////////


CHAIN IF ~Global("g_mmMQ1","GLOBAL",6)~ THEN d_mmTT badmorn2
	@51 /* <CHARNAME>! <CHARNAME>, there you are! Thank the gods! It’s Carasta Orsmander! She’s dead! */
	== d_mmTr @52 /* Looks like she’s been strangled to death. Look at all the bruising on her neck.  */
	== d_mmDr @53 /* Weird that there’s no signs of struggle. You’d think the place would be a mess. Wonder why she’d stay so still. Maybe she knew the attacker. */
	== d_mmTT @54 /* I hope you’re not accusing *me* of anything! */
	== d_mmDr @55 /* Wouldn’t dream of it. Here, you two can leave. <CHARNAME> and I will take care of the body. <CHARNAME>, we should, uh, discuss what best to do. */
END
	++ @56 /* Alright. */ GOTO leavingNow

APPEND d_mmTT

IF ~~ THEN BEGIN leavingNow
	SAY @57 /* Very well. Tremona and I will step outside for a bit. But to be too long! */
	IF ~~ THEN DO ~SetGlobal("g_mmMQ1","GLOBAL",7)
					ActionOverride("g_mmTr",EscapeArea())
					ActionOverride("g_mmTr",EscapeArea())~ EXIT 
END

END //overall dialogue file end