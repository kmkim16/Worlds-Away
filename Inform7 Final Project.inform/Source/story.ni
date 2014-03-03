"Worlds Away - Inform7 Final Project" by kmkim16

When play begins: say "You wake up on the floor in an unfamilar place… Well, you think it is unfamiliar. You can't seem remember your name or how you got here, but frankly just thinking about it gives you a huge headache. You don't think you are injured, but you feel groggy. …Where are you?"

Use no scoring.

[Rooms]
White Room is a room. "A white room with no doors and . A large fan gently A wind tunnel, perhaps? Soshite, Roboto wa offu desuu."

Apartment is a room. "The apartment is"

Art Gallery is a room. " "

Locked Safe is a room. " "

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

Before listing nondescript items when the player is in White Room: 
	if the fan is marked for listing:
		change the fan to not marked for listing.

Things can be on or off.

Things can be near or distant. Things are usually near.

A thing can be hidden or revealed.

Understand "portal gun" or "gun" as contraption.

A raised supporter is a kind of supporter.

An every turn rule:
if robot is in fan,
say "what"

Definition: a contraption is out of reach: 
	if the player is carrying robot, no; 
	if the contraption is on a fan, yes;
	
Before taking contraption for the first time: 
	if the contraption is out of reach: 
		say "The blade spins by nearly cutting your hand off. jesus. You can't reach the contraption. Maybe you can stop the fan with something" instead.

[end Rules]

[Things/Scenery]
Fan is a raised supporter in White Room. The description of the fan is "A large fan blows, circulating the air. It seem to be a bit dusty, but other than that it's brand new."

contraption is a thing on fan. The description of contraption is "portal gun yo"

Robot is a device in White Room. It is off. The description is "[If Robot is on](*ﾟｰﾟ)ゞ[end if][if robot is off]（。-＿-。）."

The iron door is scenery in White Room. It is a closed container. It is locked. The description of the iron door is "It looks welded shut. A low knock tells you the door is solid, probably."

Portal is a thing. 

[end Things/Scenery]

[Instead ofs]
Instead of switching on robot:
say "bEEP BOOP. BOOP BEE BOOP. I AM ON, WOOHOO!.";
change robot to on.

Instead of taking contraption for the second time:
	if player is not carrying robot:
		say "You're kind of bleeding now...";
		end the game in death;
	if player is carrying robot:
		say "you;re not bleeding yay! and you have a portal gun. nice."
		
Instead of opening door:
	say "no stahp."
