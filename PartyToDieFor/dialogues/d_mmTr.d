BEGIN d_mmTr //Tremona

////////////////////////////////////
//BEFORE DEATHS
////////////////////////////////////

IF ~IsGabber("Safana") Global("g_mmMQ1","GLOBAL",1)~ THEN BEGIN Safana1
 SAY ~I was talking with Drunlo earlier, and some things aren’t adding up. His invitation said that this was an alchemical studies retreat, while I was supposedly hired for my, er, expertise. And I doubt the nobles are here for either reason.~
 IF ~~ THEN EXIT
END


IF ~Global("g_mmMQ1","GLOBAL",1)~ THEN BEGIN char1
	SAY ~<CHARNAME>! Nice to meet you; I’ve heard of your accomplishments! I’m Tremona, best known for my ability to acquire things. Adventuring certainly isn’t a dull profession!~
 IF ~~ THEN EXIT
END

////////////////////////////////////
//DEATHS 1 & 2
////////////////////////////////////


IF ~IsGabber("Safana") Global("g_mmMQ1","GLOBAL",3)~ THEN BEGIN Safana3
 SAY ~Zashir… the name sounds vaguely familiar, but it’s not a particularly unusual name to begin with. I don’t know any Zashir well enough to be singled out like this though.~
 = ~You don’t think one of the nobles is the killer, do you? And nobles are always putting on a facade, and are always more monstrous than they appear.~
IF ~~ THEN EXIT
END

IF ~Global("g_mmMQ1","GLOBAL",3) PartyHasItem("g_mmPoi")~ THEN BEGIN charname3Poi
SAY ~It’s awful how far we are from shore. There’s no way any signal we make will be seen in the Gate.~

= ~You don't think the killer is on the island, do you? We'll be in trouble if they are.~
	++ ~I found this vial of poison in your belongings. Explain.~ GOTO explainPoi
END

IF ~~ THEN BEGIN explainPoi
	SAY ~I… what?~
	= ~I didn’t bring any poison–it’s not mine, I swear! I’m not even an alchemist. Drunlo is.~
	= ~Not that I think he did it, I know him better than that! Besides, if I *used* the poison, why would I still have a vial of it?~
	++ ~Why don't you think Drunlo did it?~ GOTO drunInnocent
	++ ~Maybe you brought TWO vials.~ GOTO twovials
END

IF ~~ THEN BEGIN drunInnocent
	SAY ~He used to be a lot of things, but he’s really trying to turn his life around. Barely speaks to me – er, his old friends anymore. But still, he’s an alchemist and knows how to make poisons.~
IF ~~ THEN DO ~  SetGlobal ("g_mmDr","GLOBAL",1) ~ EXIT
END

IF ~~ THEN BEGIN twovials
	SAY ~I… guess that’s a possibility, but then why would I keep it with my own things, rather than put it with someone else’s things, like the murderer did with me?~
IF ~~ THEN DO ~  SetGlobal ("g_mmDr","GLOBAL",1) ~ EXIT
END


IF ~Global("g_mmMQ1","GLOBAL",3)~ THEN BEGIN charname3
SAY ~It’s awful how far we are from shore. There’s no way any signal we make will be seen in the Gate.~

= ~You know, you’d think that someone would check up on the nobles, but there’s been nothing. You don’t think one of them is the killer, do you? And nobles are always putting on a facade, and are always more monstrous than they appear.~
IF ~~ THEN EXIT
END

////////////////////////////////////
//DEATH 3
////////////////////////////////////

IF ~Global("g_mmMQ1","GLOBAL",4)~ THEN BEGIN goodmorn
	SAY ~Well, we’re all accounted for, except for Enger. You don’t think he’s planning something, do you?~
IF ~~ THEN EXIT
END

IF ~IsGabber("Safana") Global("g_mmMQ1","GLOBAL",5)~ THEN BEGIN Safana5
 SAY ~I know plenty about hiding, you know this. And I’m telling you this–there isn’t anywhere to hide around here. It’s either magic or the killer is hiding in plain sight, I swear it. But I’m not sure if the killer could actually be one of the guests. You’re pretty smart, Safana. Maybe you can figure this out.~
IF ~~ THEN EXIT
END

IF ~Global("g_mmMQ1","GLOBAL",5)~ THEN BEGIN charname5
SAY ~What’s strange to me is that this is all there is to the island. There’s nowhere for anyone to hide. Well, mages can turn themselves invisible, but that only lasts so long. You, er, you don’t think that one of *us* here is the killer, do you?~
	++ ~Why would I think that?~ GOTO whythink
	++ ~No, that’s impossible.~ GOTO isntposs
	++ ~I don't think we can ignore that possiblity.~ GOTO maybe
	+~PartyHasItem("g_mmPoi")~+ ~I found this vial of poison in your belongings. Explain.~ GOTO explainPoi
END

IF ~~ THEN BEGIN whythink
SAY ~Well, the island is small, and invisibility only lasts for so long. Drunlo and I have searched the island, both together and separately, and I don’t see anywhere someone could hide. You can search for yourself if you want.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN isntposs
SAY ~Yeah, you might be right. I can’t imagine that the nobles have the stomach for this sort of thing, unless there’s something I don’t know about, and I know Drunlo well enough that I don’t think he’d do this. Drunlo and I have searched the island, both together and separately, and I don’t see anywhere someone could hide. You can search for yourself if you want.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN maybe
SAY ~I can’t imagine that the nobles have the stomach for this sort of thing, unless there’s something I don’t know about, and I know Drunlo well enough that I don’t think he’d do this. And if it were me, I wouldn’t be talking to you about the possibility at all. Drunlo and I have searched the island, both together and separately, and I don’t see anywhere someone could hide. You can search for yourself if you want.~
IF ~~ THEN EXIT
END

///////////////////////////////////
// DEATH 4 CARASTA
///////////////////////////////////

IF ~Global("g_mmMQ1","GLOBAL",6)~ THEN BEGIN charname6
	SAY ~Well, there's only the four of us now. Either one of us is the murderer, this mysterious Zashir is the murderer, or one of us is pretending to be Zashir *and* is also the murderer. I don't see any other options.~
IF ~~ THEN EXIT
END





