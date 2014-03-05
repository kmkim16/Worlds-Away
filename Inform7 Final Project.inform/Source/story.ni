"Worlds Away - Inform7 Final Project" by kmkim16

When play begins: say "You wake up on the floor in an unfamilar place… Well, you think it is unfamiliar. You can't seem remember your name or how you got here, but frankly just thinking about it gives you a huge headache. You don't think you are injured, but you feel groggy. …Where are you?"

Use no scoring.

[Rooms]
White Room is a room. "A blank, white room with a large fan as a floor. A wind tunnel, perhaps? The fan circulates air upwards. Soshite, Roboto wa offu desuu."

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

Understand "portal gun" or "gun" as contraption.

Definition: robot is inside fan:
	if robot is in fan, yes;
	if robot is not in fan, no;

Definition: a contraption is out of reach: 
	if robot is inside fan, no; 
	if the contraption is in fan, yes;
	
Before taking contraption for the first time: 
	if the contraption is out of reach: 
		say "The blade spins by nearly cutting your hand off. jesus. You can't reach the contraption. Maybe you can stop the fan with something instead?" instead.

[end Rules]

[Things/Scenery]

Wall is a backdrop. It is in White Room and Apartment and Saloon and Classroom and Bunker and Art Gallery. 

Fan is a not scenery container in White Room. The description of the fan is "A large fan blows, circulating the air. It seem to be a bit dusty, but other than that it's brand new."

contraption is a thing in fan. The description of contraption is "portal gun yo"

Robot is a device in White Room. It is off. The description is "[If Robot is on](*ﾟｰﾟ)ゞ[end if][if robot is off]（。-＿-。）."

The iron door is scenery in White Room. It is a closed container. It is locked. The description of the iron door is "It looks welded shut. A low knock tells you the door is solid, probably."

Portal is an enterable container. 

[end Things/Scenery]

[Instead ofs]
Instead of switching on robot:
say "bEEP BOOP. BOOP BEE BOOP. I AM ON, WOOHOO!.";
change robot to on.

Instead of taking contraption for the second time:
	if robot is not inside fan:
		say "You're kind of bleeding now...";
		end the game in death;
	if robot is inside fan:
		say "you;re not bleeding yay! and you have a portal gun. nice.";
		move robot to fan;

Instead of opening door:
	say "no stahp."

Instead of taking fan:
	say "you can't take the floor silly"
	
Instead of entering portal:
	say "wooshoshoshoshoshooooo";
	move player to a random room.
	

[shooty stuffsssss]

Shooting is an action applying to one visible thing. Understand "shoot [something]" as shooting.

Check shooting:
	If player is carrying contraption:
		If noun is wall:
			say "wow u did a thing";
			move portal to location of player;
		otherwise:
			say "u suck" instead;
	otherwise:
		say "the frick u doin bub" instead.
