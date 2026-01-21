BEGIN d_mmMu //murderer

IF ~ Global("g_mmMQ1","GLOBAL",10) ~ THEN BEGIN 0 //REPLACE GLOBAL WITH ACCURATE NUMBER LATER
	SAY ~Well, <CHARNAME>, have you figured it out yet?~ [g_mmz01]
	= ~These criminals have long evaded justice, and I am running out of time to mete out Tyr’s judgment.~ [g_mmz02]
		+~Alignment(Player1,MASK_EVIL)~+ ~What did I do to deserve this?.~ GOTO deserveEvil
		+~!Alignment(Player1,MASK_EVIL)~+ ~What did I do to deserve this?.~ GOTO deserveGood
		++ ~What did the others do to deserve this?~ GOTO deserveOthers
		++ ~But how did you stay hidden on the island?~ GOTO how
		++ ~This isn’t justice!~ GOTO justice
		++ ~Your invitation said you had information on the Iron Throne.~ GOTO liar
		++ ~There's no use talking to you, is there?~ GOTO noTalk

END


IF ~~ THEN BEGIN deserveEvil
	SAY ~Is that a serious question? Look within yourself. The evil is there, and I am certain that you will be more than happy to commit whatever atrocities come to mind when the opportunity presents itself.~ [g_mmz05]
		++ ~What did the others do to deserve this?~ GOTO deserveOthers
		++ ~But how did you stay hidden on the island?~ GOTO how
		++ ~This isn’t justice!~ GOTO justice
		++ ~Your invitation said you had information on the Iron Throne.~ GOTO liar
		++ ~There's no use talking to you, is there?~ GOTO noTalk
END


IF ~~ THEN BEGIN deserveGood
	SAY ~You are stumbling around in the dark, aren’t you? I am… perhaps more surprised than I should be. But I am never one to begrudge an advantage.~ [g_mmz04]
		++ ~What did the others do to deserve this?~ GOTO deserveOthers
		++ ~But how did you stay hidden on the island?~ GOTO how
		++ ~This isn’t justice!~ GOTO justice
		++ ~Your invitation said you had information on the Iron Throne.~ GOTO liar
		++ ~There's no use talking to you, is there?~ GOTO noTalk
END


IF ~~ THEN BEGIN deserveOthers
	SAY ~Imagine, one day, a druid is kidnapped and put on Adrik’s ship, destined for a Bhaalite Temple. Then, the ship is attacked by Pelial. He takes all the valuables on the ship, but doesn’t bother to give anyone freedom. ~ [g_mmz06]
	= ~Then imagine that you are all slated for ritualistic murder, but are miraculously saved from the Temple by a Harper raid. You gather up as many people as you can, and you lead them to safety.~ [g_mmz07]
	= ~You find a charity, run by none other than Enger Blazanar, but there is not enough money to help, and so, someone dies. You and the survivors go to Baldur’s Gate to look for work. A few of you are hired by Tenadar Thornber. At first you thought this was a blessing, but when people start showing up with bruises and lacerations, then vanishing one by one… You investigate and find a shrine to Loviatar.~  [g_mmz08]
	= ~But Carasta Orsmander finds Tenadar and Enger to be too useful politically, and so she shields them from the law. Nothing happens.~ [g_mmz09]
	= ~You have one person left. She loved Tremona, who introduced her to Drunlo, and she died of a Black Lotus overdose just a year later.~ [g_mmz10]
	= ~*That* is what they did to deserve this.~ [g_mmz11]
		+~Alignment(Player1,MASK_EVIL)~+ ~What did I do to deserve this?.~ GOTO deserveEvil
		+~!Alignment(Player1,MASK_EVIL)~+ ~What did I do to deserve this?.~ GOTO deserveGood
		++ ~But how did you stay hidden on the island?~ GOTO how
		++ ~This isn’t justice!~ GOTO justice
		++ ~Your invitation said you had information on the Iron Throne.~ GOTO liar
		++ ~There's no use talking to you, is there?~ GOTO noTalk
END


IF ~~ THEN BEGIN justice
	SAY ~Is it justice that they were alive and free, while so many others are dead and rotting? <CHARNAME>, they didn’t even feel any regret for what they did.~ [g_mmz13]
		+~Alignment(Player1,MASK_EVIL)~+ ~What did I do to deserve this?.~ GOTO deserveEvil
		+~!Alignment(Player1,MASK_EVIL)~+ ~What did I do to deserve this?.~ GOTO deserveGood
		++ ~What did the others do to deserve this?~ GOTO deserveOthers
		++ ~But how did you stay hidden on the island?~ GOTO how
		++ ~Your invitation said you had information on the Iron Throne.~ GOTO liar
		++ ~There's no use talking to you, is there?~ GOTO noTalk
END


IF ~~ THEN BEGIN how
	SAY ~As a druid, I have plenty of ways of remaining unnoticed, especially from city-dwellers who simply don’t know any better. Carasta saw me, but believed me to be an ordinary giant spider. Foolish.~ [g_mmz12]
		+~Alignment(Player1,MASK_EVIL)~+ ~What did I do to deserve this?.~ GOTO deserveEvil
		+~!Alignment(Player1,MASK_EVIL)~+ ~What did I do to deserve this?.~ GOTO deserveGood
		++ ~What did the others do to deserve this?~ GOTO deserveOthers
		++ ~But how did you stay hidden on the island?~ GOTO how
		++ ~This isn’t justice!~ GOTO justice
		++ ~Your invitation said you had information on the Iron Throne.~ GOTO liar
		++ ~There's no use talking to you, is there?~ GOTO noTalk
END


IF ~~ THEN BEGIN liar
	SAY ~Yes, and I also told dear Drunlo that this was an alchemical summit, and I told poor Pelial that a Pirate Lord of Brynnlaw buried treasure here. I lied to all of you.~ [g_mmz14]
		+~Alignment(Player1,MASK_EVIL)~+ ~What did I do to deserve this?.~ GOTO deserveEvil
		+~!Alignment(Player1,MASK_EVIL)~+ ~What did I do to deserve this?.~ GOTO deserveGood
		++ ~What did the others do to deserve this?~ GOTO deserveOthers
		++ ~But how did you stay hidden on the island?~ GOTO how
		++ ~This isn’t justice!~ GOTO justice
		++ ~There's no use talking to you, is there?~ GOTO noTalk
END

IF ~~ THEN BEGIN noTalk
	SAY ~No. Die, and be done with it.~ [g_mmz15]
		IF ~~ THEN DO ~Enemy()~ EXIT
END
