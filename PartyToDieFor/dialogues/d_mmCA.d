BEGIN d_mmCA //Carasta

////////////////////////////////////
//BEFORE DEATHS
////////////////////////////////////

IF ~IsGabber("Skie") Global("g_mmMQ1","GLOBAL",1)~ THEN BEGIN Skie1
 SAY ~Hmph! I wasn’t expecting so many mosquitos on the island! And I saw a huge, simply massive spider! Thankfully, it seemed to be leaving, I suppose our presence scared it off.~
	= ~At least the company is pleasant enough. Who would’ve guessed that Enger, Tenadar, and I would all be invited together? Why, thick as thieves we are!~
	= ~You know, Skie, your father is a good man. I am sure that we four would make a lovely team, if we could all see eye-to-eye. Perhaps you can put in a good word about us?~
 IF ~~ THEN EXIT
END

IF ~Global("g_mmMQ1","GLOBAL",1)~ THEN BEGIN char1
	SAY ~It is a shame that Zashir Anskuln isn’t able to meet us until later. I don’t suppose you are already acquainted with her?~
	++ ~Yes.~ GOTO yes1
	++ ~No.~ GOTO no1
END

IF ~~ THEN BEGIN yes1
 SAY ~Do you? Wonderful! You’ll have to tell me all about her–I haven’t actually met her. ~
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN no1
	SAY ~Strange, isn’t it? I haven’t actually met her either. But perhaps that is why she invited us specifically! If you wish to meet some people, it is easiest if they are all in the same place, after all.~
 IF ~~ THEN EXIT
END

///////////////////////////////////
// DEATHS 1 & 2
///////////////////////////////////

IF ~IsGabber("Skie") Global("g_mmMQ1","GLOBAL",3)~ THEN BEGIN Skie3
 SAY ~I wish Zashir wasn’t delayed! I hear that she is an accomplished adventurer. Er, not that *you* aren’t, but more is better, right? Still, you’re all we have. Please, solve this insanity before we’re all killed! I’d rather not join my late husbands just yet.~
IF ~~ THEN EXIT
END

IF ~Global("g_mmMQ1","GLOBAL",3)~ THEN BEGIN charname3
SAY ~Oh, this is just so upsetting! I don’t have any words. If we ever get off this island, everyone will here about this, I promise you that!~
= ~I demand that you solve this insanity before we’re all killed! I’d rather not join my late husbands just yet.~
IF ~~ THEN EXIT
END

///////////////////////////////////
// DEATH 3
///////////////////////////////////

IF ~Global("g_mmMQ1","GLOBAL",4)~ THEN BEGIN goodmorn
	SAY ~I don’t know how or why, but I’m not optimistic about poor Enger! The thieves might be here, and they might think that’s a good alibi, but sneaks like them can use traps. They could’ve placed a trap and left to try to throw us off their trail.~
IF ~~ THEN EXIT
END

IF ~IsGabber("Skie") Global("g_mmMQ1","GLOBAL",5)~ THEN BEGIN Skie5
 SAY ~I can’t believe Enger is gone. We worked together for decades. Decades! I’m certain you understand the worth of a valuable ally in our circles, and how long it takes to build one up! Enger was one of the best, truly, and to see him die like that… His generosity will be missed, I am certain.~
	= ~*Some* of us might be guilty of heinous crimes–Pelial, for example, and Tremona looks shifty, too–but I didn’t do anything so serious enough to deserve this!~
	= ~Oh, Skie, to think that you’ve been caught up in all this!~
 IF ~~ THEN EXIT
END

IF ~Global("g_mmMQ1","GLOBAL",5)~ THEN BEGIN char5
	SAY ~I can’t believe that Enger is gone. Why, we’ve known each other for decades! He was always so quick to help those in need–and I was always quick to return the favor, of course. And now he’s gone. I just hope we all survive long enough to make it back home. ~
	= ~*Some* of us might be guilty of heinous crimes–Pelial, for example, and Tremona looks shifty, too–but I didn’t do anything to deserve this!~
 IF ~~ THEN EXIT
END

