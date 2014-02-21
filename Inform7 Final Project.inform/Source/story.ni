"Worlds Away - Inform7 Final Project" by kmkim16

When play begins: say "Your name is Dirk Strider. You just woke up from a nice nap. You find yourself inside of your single room abode. It's nice. But small. Things, contraptions, inventions of yours are cluttered around the place."

[previous play begins: You wake up on the floor in an unfamilar place… Well, you think it is unfamiliar. You can't seem remember your name or how you got here, but frankly just thinking about it gives you a huge headache. You don't think you are injured, but you feel groggy and a bit hungry. Where are you?"]

Use no scoring.

[Rooms]
White Room is a room. "You wake up in an empty, white room with no doors. A large fan A wind tunnel, perhaps? Soshite, Roboto wa offu desuu."

Apartment is a room. "The apartment is"

Art Gallery is a room. " "

Bunker is a room. " "

Saloon is a room. " "

Classroom is a room. " "



[end Rooms]

[Rules]
A thing can be seen or unseen.

Carry out examining a thing: 
    now the noun is seen.

Before listing nondescript items when the player is in White Room: 
	if the contraption is marked for listing:
		change the contraption to not marked for listing.
		
Before listing nondescript items when the player is in White Room: 
	if the robot is marked for listing:
		change the robot to not marked for listing.

Things can be on or off.
[end Rules]

[Things/Scenery]
Fan is a scenery in White Room. "A large fan blows, circulating the air. It seem to be a bit dusty, but other than that it's brand new."

A contraption is in White Room. ""

Robot is a device in White Room. It is off. The description is "[If Robot is on](*ﾟｰﾟ)ゞ[end if][if robot is off]（。-＿-。）."

Instead of switching on robot:
say "bEEP BOOP. BOOP BEE BOOP. I AM ON, WOOHOO!.";
change robot to on.


Portal is a thing. 
[end Things/Scenery]

[Instead ofs]
Instead of examining contraption:
say "Some sort of gun?";

