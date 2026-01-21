BEGIN d_mmDr //Drunlo

////////////////////////////////////
//BEFORE DEATHS
////////////////////////////////////

IF ~IsGabber("Safana") Global("g_mmMQ1","GLOBAL",1)~ THEN BEGIN Skie1
	SAY ~Safana! Always a pleasure. I hope you're not looking to buy? The garden is interesting enough, but nothing to work with - I confess, after what the invitation said, I'm disappointed.~
	= ~Strange… I was told this would be an alchemical studies retreat, so I’m a bit surprised to see the nobles here.~
		IF ~~ THEN EXIT
END

IF ~Global("g_mmMQ1","GLOBAL",1)~ THEN BEGIN char1
	SAY ~Interesting garden here. I’m a bit of an alchemist, and some of the plants have some alchemical properties that I’ve read about. Maybe I should’ve brought some of my books…~
		IF ~~ THEN EXIT
END


///////////////////////////////////
// DEATHS 1 & 2
///////////////////////////////////

IF ~IsGabber("Safana") Global("g_mmMQ1","GLOBAL",3)~ THEN BEGIN Skie3
	SAY ~There’s nothing in the garden that could cause a poison like what got Pelial. It had to come from off the island. This has definitely been planned out.~
	= ~I’m not sure if the murderer is on the island, either. Could be in the Gate for all we know, and just dropped off poisoned alcohol before heading back.~
		IF ~~ THEN EXIT
END

IF ~Global("g_mmMQ1","GLOBAL",3)~ THEN BEGIN charname3
	SAY ~I’m not sure if the murderer is on the island. Could be in the Gate for all we know, and just dropped off poisoned alcohol before heading back. Regardless, you ready to call it a night?~
		++ ~Yes, let's.~ GOTO naptime1
		++ ~No, not yet.~ GOTO nonap1
		+ ~Global("g_mmDr","GLOBAL",1)~ + ~Tremona said that you knew how to make poisons.~ GOTO poisonaccu
END

IF ~~ naptime1
	SAY ~Alright, let's get going.~
		IF ~~ THEN DO ~FadeToColor([20.0],0)
						Wait(1)
						FadeFromColor([20.0],0)
						ActionOverride(Player1,LeaveAreaLUA("g_mmih4","",[272.364],4))
						ActionOverride(Player2,LeaveAreaLUA("g_mmih4","",[334.323],4))
						ActionOverride(Player3,LeaveAreaLUA("g_mmih4","",[402.285],4))
						ActionOverride(Player4,LeaveAreaLUA("g_mmih4","",[470.250],4))
						ActionOverride(Player5,LeaveAreaLUA("g_mmih4","",[525.267],4))
						ActionOverride(Player6,LeaveAreaLUA("g_mmih4","",[292.413],4))
						SetGlobal("g_mmMQ1","GLOBAL",4)
						AdvanceTime(TEN_HOURS)
						RestParty()~ EXIT 
END

IF ~~ THEN BEGIN nonap1
	SAY ~Alright, but try to hurry up. I'm getting tired. Not that I think I'll sleep well after all that.~
		IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN poisonaccu
	SAY ~Did she?~
	= ~Well… yes. She’s not wrong. I hope you aren’t accusing me of anything.~
		+~PartyHasItem("g_mmPoi")~+ ~I found this vial of poison. I want an explanation.~ GOTO poisonExplain
		++ ~No, I just wanted to verify some information.~ GOTO poisonDone
END


CHAIN IF ~~ THEN d_mmDr poisonExplain
 ~I… what? I don’t know. I don’t make poisons these days; it’s not one of mine. Besides, judging from the color and viscosity, it looks like a spider’s poison. That’s obviously not something I can make myself.~
	== MONTAJ IF ~InParty("Montaron")~ THEN ~I could make a poison with similar looks. Not that hard, if ye know what ye be doin’.~
	== JAHEIJ IF ~InParty("Jaheira")~ THEN ~There are some plants that can mimic the appearance and effects of certain spider poisons if mixed skillfully.~
	== FALDOJ IF ~InParty("Faldorn")~ THEN ~Some plants can make a poison akin to a spiders’, but I doubt a city-dweller would be able to do so.~
END
	IF ~~ THEN DO ~~ EXIT

APPEND d_mmDr

IF ~~ THEN BEGIN poisonDone
	SAY ~Well, yes. I am an alchemist, after all.~
		IF ~~ THEN EXIT
END

///////////////////////////////////
// DEATH 3
///////////////////////////////////

IF ~Global("g_mmMQ1","GLOBAL",4)~ THEN BEGIN goodmorn
	SAY ~Hey, <CHARNAME>. Hope you don't mind that I came here before you woke up. You were still sleeping, and I was getting pretty bored waiting around. You might want to try talking to Tenadar. He's pretty agitated at the moment.~
		IF ~~ THEN EXIT
END

IF ~IsGabber("Safana") Global("g_mmMQ1","GLOBAL",5)~ THEN BEGIN Safana5
	SAY ~What a fool I am. Invited to an exclusive alchemical retreat? Ha. To think I actually believed that. I didn’t even bring my own equipment, since I was told that this place would be well-stocked. I’m completely useless here like this. All I can do is wait and see who dies next.~
		IF ~~ THEN EXIT
END


IF ~Global("g_mmMQ1","GLOBAL",5)~ THEN BEGIN badmorn
	SAY ~What a fool I am. Invited to an exclusive alchemical retreat? Ha. To think I actually believed that.~
	= ~Well, me know when you’re ready to go back to our hut. Nothing else much to do on the island except for trying not to get killed while waiting for a boat to come find us.~
		++ ~Let's go.~ GOTO hutReturn
		++ ~Not yet.~ GOTO notyet
END

IF ~~ THEN BEGIN hutReturn
	SAY ~Alright. Hey, I think I have a pack of cards in my bag. You down for a game?~
		IF ~~ THEN DO ~FadeToColor([20.0],0)
						Wait(1)
						FadeFromColor([20.0],0)
						ActionOverride(Player1,LeaveAreaLUA("g_mmih4","",[272.364],4))
						ActionOverride(Player2,LeaveAreaLUA("g_mmih4","",[334.323],4))
						ActionOverride(Player3,LeaveAreaLUA("g_mmih4","",[402.285],4))
						ActionOverride(Player4,LeaveAreaLUA("g_mmih4","",[470.250],4))
						ActionOverride(Player5,LeaveAreaLUA("g_mmih4","",[525.267],4))
						ActionOverride(Player6,LeaveAreaLUA("g_mmih4","",[292.413],4))
						SetGlobal("g_mmMQ1","GLOBAL",6)
						AdvanceTime(TEN_HOURS)
						RestParty()~ EXIT
END

IF ~~ THEN BEGIN notyet
	SAY ~Alright, just let me know when.~
		IF ~~ THEN EXIT
END

//END


///////////////////////////////////
// DEATH 4 CARASTA & DECISION
///////////////////////////////////

IF ~IsGabber("Safana") Global("g_mmMQ1","GLOBAL",6)~ THEN BEGIN Safana6
	SAY ~I've been thinking... do you think Zashir actually exists? Or is that name just a ploy? No one has met her, no one has even heard of her. Between you and me, Tenadar is rich enough to have purchased this island, and he's still alive. Suspicious, isn't it?~ 
		IF ~~ THEN EXIT
END

IF ~Global("g_mmMQ1","GLOBAL",6)~ THEN BEGIN charname6
	SAY ~I've been thinking... do you think Zashir actually exists? Or is that name just a ploy? No one has met her, no one has even heard of her. Between you and me, Tenadar is rich enough to have purchased this island, and he's still alive. Suspicious, isn't it?~ 
		IF ~~ THEN EXIT
END


///////////////////////////////////
// DECISION
///////////////////////////////////

IF ~Global("g_mmMQ1","GLOBAL",7)~ THEN BEGIN deStart
	SAY ~Hey, listen. Let me tell you some things. I’m no saint; I’ve dealt Black Lotus to both Tenadar Thornber and Tremona. I know more than I care to know about both of them. One of them has to be the killer, but I’m not sure who.~
		++ ~Tell me about Tenadar Thornber.~ GOTO deTen
		++ ~Tell me about Tremora.~ GOTO deTre
		++ ~Why are you telling me this?~ GOTO deWhy
		++ ~How do I know that you’re not the killer?~ GOTO deNotMe
		++ ~How do you think Zashir fits into all of this?~ GOTO zashir
		++ ~I think it's Tenadar.~ GOTO accuseTen
		++ ~I think it's Tremora.~ GOTO accuseTre
END

IF ~Global("g_mmMQ1","GLOBAL",7)~ THEN BEGIN deTen
	SAY ~He’s a follower of Loviatar; kidnaps urchins and whatnot to torture them, sometimes to death. He’s a noble, and so he’s practically untouchable and his surviving victims are too scared to come forward against him. I wouldn’t be surprised if this whole thing is his idea, some sick and twisted game to him.~
		++ ~Tell me about Tremora.~ GOTO deTre
		++ ~Why are you telling me this?~ GOTO deWhy
		++ ~How do I know that you’re not the killer?~ GOTO deNotMe
		++ ~How do you think Zashir fits into all of this?~ GOTO zashir
		++ ~I think it's Tenadar.~ GOTO accuseTen
		++ ~I think it's Tremora.~ GOTO accuseTre
END

END

CHAIN IF ~Global("g_mmMQ1","GLOBAL",7)~ THEN d_mmDr deTre
	~Well, you heard what she said about Pelial; Pelial had wronged her before. Before she turned to crime, she relied on a charity that Enger Blazanar stole from. Once Enger Blazanar took over the charity, the money obviously dried up, and Tremona was outta luck. She finally thought he caught a break when her awful uncle died and she could get inheritance, but Carasta Orsmander swooped in and manipulated the courts to give her the money instead. Revenge is a powerful motivator.~
	== SAFANJ IF ~InParty("Safana")~ THEN ~Please, darling. Tremona might have the motivation, but she lacks a certain.... ability to pull something like this off.~
END
	++ ~Tell me about Tenadar Thornber.~ GOTO deTen
	++ ~Why are you telling me this?~ GOTO deWhy
	++ ~How do I know that you’re not the killer?~ GOTO deNotMe
	++ ~How do you think Zashir fits into all of this?~ GOTO zashir
	++ ~I think it's Tenadar.~ GOTO accuseTen
	++ ~I think it's Tremora.~ GOTO accuseTre

APPEND d_mmDr
END // ???

CHAIN IF ~Global("g_mmMQ1","GLOBAL",7)~ THEN d_mmDr deNotMe
	~Look, I know I got you alone here, and I know that's suspicious and what the killer would do. But I’m a retired drug dealer, not a murderer! I’m trying to turn my life around, and that doesn’t involve trapping people on an island and killing them off one by one, like some kind of insane animal.~
	== AJANTJ IF ~InParty("Ajantis")~ THEN ~I'm not sensing any evil from him, <CHARNAME>. Only an evil person could orchestrate something like this, and so I don't think Drunlo is the killer.~
	== QUAYLJ IF ~InParty("Quayle")~ THEN ~It doesn't take a genius to figure out it's not Drunlo. He's had ample opportunity to kill us in our sleep, and only an idiot of a murderer wouldn't have taken that opportunity.~
	== d_mmDr IF ~InParty("Quayle")~ THEN ~Thanks. I think.~
END
	++ ~Tell me about Tenadar Thornber.~ GOTO deTen
	++ ~Tell me about Tremora.~ GOTO deTre
	++ ~Why are you telling me this?~ GOTO deWhy
	++ ~How do you think Zashir fits into all of this?~ GOTO zashir
	++ ~I think it's Tenadar.~ GOTO accuseTen
	++ ~I think it's Tremora.~ GOTO accuseTre

APPEND d_mmDr

IF ~Global("g_mmMQ1","GLOBAL",7)~ THEN BEGIN deWhy
	SAY ~Because you’re the Hero of Nashkel. You solve mysteries. I can’t figure this one out. It’s gotta be one of them, but I don’t know who.~
		++ ~Tell me about Tenadar Thornber.~ GOTO deTen
		++ ~Tell me about Tremora.~ GOTO deTre
		++ ~How do I know that you’re not the killer?~ GOTO deNotMe
		++ ~How do you think Zashir fits into all of this?~ GOTO zashir
		++ ~I think it's Tenadar.~ GOTO accuseTen
		++ ~I think it's Tremora.~ GOTO accuseTre
END

END

CHAIN IF ~Global("g_mmMQ1","GLOBAL",7)~ THEN d_mmDr zashir
	~I don't think Zashir actually exists. Think about it. Remember when the zombie showed up? Everyone admitted that no one has met Zashir. The invitations were all a lie--mine said that this was going to be an alchemical conference! Whoever "Zashir" is knows about us, about what would tempt us to come here. We don't know "Zashir", but "Zashir" knows us. It's got to be a fake name, I'm sure of it. ~
	== GARRIJ IF ~InParty("garrick")~ THEN ~If Zashir is an alias, it'd make this whole situation like a few stories that I've heard.~
	== GARRIJ IF ~InParty("garrick")~ THEN ~You know, I liked those stories better when I wasn't in them.~
END
	++ ~Tell me about Tenadar Thornber.~ GOTO deTen
	++ ~Tell me about Tremora.~ GOTO deTre
	++ ~Why are you telling me this?~ GOTO deWhy
	++ ~How do I know that you’re not the killer?~ GOTO deNotMe
	++ ~I think it's Tenadar.~ GOTO accuseTen
	++ ~I think it's Tremora.~ GOTO accuseTre

APPEND d_mmDr

IF ~Global("g_mmMQ1","GLOBAL",7)~ THEN BEGIN accuseTen
	SAY ~I was leaning that way, myself. I’m uh, not too great in a fight, so I’ll let you, ah, take care of him.~
		++ ~I’m not killing anyone.~ GOTO deTenSpare
		++ ~You’re right; it’s our only option.~ GOTO deTenKill
END

IF ~~ THEN BEGIN deTenSpare
	SAY ~Fine. If you’re too soft, I will do it. This whole thing has me curious though… The rest of us aren’t saints, but what’s got *you* here?~
	= ~Here, you finish taking care of the body; I don’t really have the stomach for corpses. I’ll… I’ll get started on the next task. Join me when you can, by the huts we stay at.~
		IF ~~ THEN DO ~ SetGlobal("g_mmCh","GLOBAL",2) SetGlobal("g_mmMQ1","GLOBAL",10) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN deTenKill
	SAY ~Glad we’re eye-to-eye on this one. This whole thing has me curious though… The rest of us aren’t saints, but what’s got *you* here?~
	= ~Here, you finish taking care of the body; I don’t really have the stomach for corpses. I’ll… I’ll get started on the next task. Join me when you can, by the huts we stay at.~
		IF ~~ THEN DO ~ SetGlobal("g_mmCh","GLOBAL",2) SetGlobal("g_mmMQ1","GLOBAL",10) EscapeArea()~ EXIT
END


IF ~Global("g_mmMQ1","GLOBAL",7)~ THEN BEGIN accuseTre
	SAY ~Shame it came to this. I’m uh, not too great in a fight, so I’ll let you, ah, take care of him.~
		++ ~I’m not killing anyone.~ GOTO deTreSpare
		++ ~You’re right; it’s our only option.~ GOTO deTreKill
END

IF ~~ THEN BEGIN deTreSpare
	SAY ~Fine. If you’re too soft, I will do it. This whole thing has me curious though… The rest of us aren’t saints, but what’s got *you* here?~
	= ~Here, you finish taking care of the body; I don’t really have the stomach for corpses. I’ll… I’ll get started on the next task. Join me when you can, by the huts we stay at.~	
		IF ~~ THEN DO ~ SetGlobal("g_mmCh","GLOBAL",1) SetGlobal("g_mmMQ1","GLOBAL",10) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN deTreKill
	SAY ~Glad we’re eye-to-eye on this one. This whole thing has me curious though… The rest of us aren’t saints, but what’s got *you* here?~
	= ~Here, you finish taking care of the body; I don’t really have the stomach for corpses. I’ll… I’ll get started on the next task. Join me when you can, by the huts we stay at.~	
		IF ~~ THEN DO ~ SetGlobal("g_mmCh","GLOBAL",1) SetGlobal("g_mmMQ1","GLOBAL",10) EscapeArea()~ EXIT
END

END
