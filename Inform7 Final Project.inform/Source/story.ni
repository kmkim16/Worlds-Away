"Worlds Away - Inform7 Final Project" by kmkim16

When play begins: say "You wake up on the floor in an unfamiliar place… Well, you think it is unfamiliar. You can't seem remember how you got here, but frankly just thinking about it gives you a huge headache. You don't think you are injured, but you feel groggy. …Where are you?"

[Rules]
A thing can be seen or unseen.

Carry out examining a thing: 
	now the noun is seen.

Things can be on or off.

Use no scoring.

The description of the player is "It's been a long time since you've gotten to look at yourself. You can't seem to remember what your face looks like. Although, it's probably for the better; who knows how long its been since you've cleaned up?"

[White Room]
White Room is a room. "A blank, white room with a large fan as a floor. [if robot is on circuit board] The fan circulates at an incredible speed, so fast that the roof has been blown right off.[end if][if robot is not on circuit board]A wind tunnel, perhaps? The fan circulates air upwards. [end if][if contraption is in fan]Something glints beneath the whirling blades.[end if][if robot is not carried by player] Also, you can see your little robot buddy here. You made it yourself![end if]"

Before listing nondescript items when the player is in White Room: 
	if the contraption is marked for listing:
		change the contraption to not marked for listing.
		
Before listing nondescript items when the player is in White Room: 
	if the robot is marked for listing:
		change the robot to not marked for listing.

Before listing nondescript items when the player is in White Room: 
	if the fan is marked for listing:
		change the fan to not marked for listing.

Understand "portal gun" or "gun" or "thing under the fan" or "thing beneath the whirling blades" or "glinting thing under the fan" or "glinting thing under the whirling blades" or "glinting thing beneath the fan" or "glinting thing beneath the whirling blades" as contraption.

Definition: robot is inside fan:
	if robot is in fan, yes;
	if robot is not in fan, no;

Definition: a contraption is out of reach: 
	if robot is inside fan, no; 
	if robot is not inside fan, yes;

Before taking contraption for the first time: 
	if the contraption is out of reach: 
		say "The blade spins by nearly cutting your hand off. Sheesh. You can't reach the contraption. Maybe you can stop the fan with something instead?" instead;
	otherwise:
		say "You manage to safely retrieve your contraption. Upon closer inspection you note it looks rather similar to a gun. What did this do again?"

Wall is a backdrop. It is in White Room and Apartment and Saloon and Classroom and Bunker and Art Gallery. The description is "The walls of the room are blank"

Fan is a scenery container in White Room. It is fixed in place. The description of the fan is "A large fan blows, circulating the air. It seem to be a bit dusty, but other than that it's brand new."

contraption is a thing in fan. The description of contraption is "[if contraption is inside fan]You can just barely make it out between the rushing fan blades. It's kind of shiny, but other than that you aren't sure what it does, or what it is for that matter.[end if] [if contraption is carried by player]Now that you have it in your hands, you realize it's purpose was to open portals on walls.[end if]"

Robot is a device in White Room. It is off. The description is "[If Robot is switched on](*ﾟｰﾟ)ゞ ON! [end if][if robot is switched off]（。-＿-。） OFF."

Every turn when the player can see Robot: 
	if robot was not in fan:
		If the robot is switched on:
			if player is not carrying robot:
				if robot is not in fan:
					say "The robot[one of]beeps quietly to itself, and looks around the room[or]waddles over to a corner of the room to inspect something off in the distance before returning to you[or]flops on the ground as the display changes to a '...' screen, indicating its boredom. it quickly stands up when it sees you staring at it.[or]pokes at its own buttons for a little bit.[as decreasingly likely outcomes].";
				if robot is in fan:
					say "The robot beeps angrily at you.";
	if robot was in fan:
		If the robot is switched on:
			if the robot is not wearing the sweater:
				if robot is not in fan:
					if the player is carrying more than one thing:
						say "The robot pokes sadly at the dents in its metal frame from the fan incident. the display changes to '( ≧Д≦)' and it rushes over you, quickly shoving its arm into your pocket and taking a random item from you in a fit of frustration and grumpiness.";
						if player is carrying contraption:
							move contraption to the robot;
							say "The contraption was taken";
					if the player is carrying less than one things:
						say "The robot pokes sadly at the dents in its metal frame from the fan incident.  the display changes to '( ≧Д≦)' and it rushes over you, quickly shoving its arm into your pocket. He tries to steal your things, but you don't have anything for him to steal."
[Instead of taking robot:
	if robot is switched on: 
		say "You pick up the small metal robot.";
	if robot is switched off:
		say " "]

The robot has some indexed text called the nickname. The nickname of the robot is "nothing". Understand the nickname property as describing the robot.

Rule for printing the name of the robot when the nickname of the robot is not "nothing": 
	say "[nickname of the robot]"

Naming it with is an action applying to one thing and one topic. Understand "name [something] [text]" as naming it with. Check naming it with: say "You can't name that."

Instead of naming the robot with "nothing": 
	now the nickname of the robot is "nothing"; 
	now the robot is improper-named; 
	say "You decide to go back to calling the robot simply 'robot'. It seems a little sad, but that could just be the monitor glitching."

Instead of naming the robot with something: 
	let N be indexed text; let N be "[the topic understood]"; 
	replace the text "'" in N with ""; 
	now the nickname of the robot is "[N]"; 
	now the robot is proper-named; 
	say "The robot is now known as [nickname of the robot]."

Portal is an enterable container.

Instead of switching on robot:
	if robot is not inside fan:
		say "You hear a quiet hum as the robot powers on, followed by some quiet clicks, and the display on the screen changes to show a cute (*ﾟｰﾟ)ゞ .";
		change robot to switched on;
	otherwise:
		say "The metal creaks and bends under the pressure of the blades pressing against it. Turning it on right now doesn't seem like a good idea.".

Before taking contraption for the second time:
	if robot is not inside fan:
		say "You attempt to reach down and grab the contraption, as the blade spins by. Your hand gets caught in the blade, ouch.";
		end the game in death;
	if robot is inside fan:
		say "As the fan is stopped, you reach down and grab the contraption. You stand up, all body parts present, and with a contraption of sorts.";
		move robot to fan;

Instead of taking fan:
	say "That's a hefty thing to carry. It's attached to the floor anyways."
	
instead of entering portal:
	if robot is not on circuit board:
		if robot is not switched on:
			if robot is not carried by player:
				say "You can't bear to leave your cute robot friend behind. Maybe turn it on so it can follow you, or pick it up and take it with you?";
				stop the action;
	if robot is carried by player:
		say "You step through the portal into a new room.";
		move player to random room.
	
[Apartment]
Apartment is a room. "It's a tiny studio apartment. There are some clothes lying around on the ground, but a bright pink sweater stands out to you. Other than that, there's a dusty folding couch and a broken TV. The door to what you assume is the bathroom seems to be jammed shut by something on the other side, so it's probably unlikely that you'll be able to get in there."

Sweater is a wearable thing in Apartment. The description is "It's bright. And pink. And it's got a big white cat face on it. [if robot is in apartment]Your robot friend touches the fabric softly, appreciatively. The display changes very slightly so the mouth line is almost unnoticeably curved upwards on the sides.[end if]"

Bed is a supporter in Apartment. The description is "An average queen sized bed."

Blankets is a thing on bed. The description is "Thin white sheets. It looks pretty light, but very strong."

Before listing nondescript items when the player is in Apartment: 
	if the blankets is marked for listing:
		change the blankets to not marked for listing.

Before listing nondescript items when the player is in Apartment: 
	if the workbench is marked for listing:
		change the workbench to not marked for listing.

[Art Gallery]
Art Gallery is a room. "You stumble into a famous Art Gallery. You look at the various paintings are displayed in the room."

Oil painting is a thing in Art Gallery. The description is "A famous painting made with oil paint. The paper is flimsy and doesn't seem like it would be good to make parachutes."

understand "paintings" as oil painting.

[Work Shop]
Definition: robot is inside circuit board:
	if robot is in circuit board, yes;
	if robot is not in circuit board, no;

Before listing nondescript items when the player is in Work Shop: 
	if the workbench is marked for listing:
		change the workbench to not marked for listing.

Before listing nondescript items when the player is in Work Shop: 
	if the circuit board is marked for listing:
		change the circuit board to not marked for listing.
	
Work Shop is a room.  "Ah, yeah. Your workshop. The large table is covered in metal shavings and large chunks of materials. On the left wall is a large metal panel labeled 'CIRCUIT BOARD' in big red letters, and 'danger' in small green ones below that. You may or may not have messed up on labeling it."

Workbench is a supporter in Work Shop. The description is "A large metal table. It's overcrowded with old abandoned projects and leftover materials. You never were really good about keeping the workplace clean. Also on your workbench is a mess of wires, although some of them aren't too tangled."

Understand "table" and "large table" and "bench" and "workplace" as Workbench.

Circuit Board is a supporter in Work Shop. It is fixed in place. The description is "[if circuit board is open]A bunch of switches and plugs are lined up before you. They're all labeled, and is in control of all of the rooms' electricity. The plugs and switches are labeled 'White Room Fan', 'Art Gallery', 'Bunker', 'Apartment', 'Work Shop', 'Saloon', and 'Classroom'. You also notice that there's an indentation in the circuit board. It seems to be the perfect size for your little robot companion.[end if][if circuit board is closed]There's a panel covering the circuit board. You'd have to open the panel to interact with the switches[end if]."

After putting robot on circuit board:
	if robot is wearing sweater:
		say "it agrees to be plugged into the circuit board. You hook the robot up to the panel and set it down in the indentation. The robot points to 'White Room Fan' and you plug the wires in. A loud woosh sound. The robot's display goes dark as the power is sucked from its batteries into the fan's power source. A loud crash sound. You think the top blew off. I guess it's time to go.";
		move robot to circuit board;
	otherwise:
		say "The robot is still quite mad at you. He refuses to step near the circuit board.";
		stop the action.
		
Understand "panel" and "fuse box" and "indentation" as Circuit Board.

[Bunker]
Bunker is a room. "It's a rather small bunker, but you suppose it does the job. You see some cabinets with the doors rusted off, revealed cans and jars of food rations."

Rifle is a thing. Rifle is in Backpack. The description of rifle is "It's a rusty old gun. It seems like it can shoot pretty well, but who knows. It's already got a few bullets inside."

Rations is a thing in Bunker. The description is "Nasty food rations. I mean, they're edible, but...eugh." Understand "cans" and "jars" and "cans of rations" and "jars of rations" and "cans and jars" and "food rations" as Rations.

Backpack is a wearable container in the Bunker. Backpack is closed and openable. "It's a slightly moldy backpack. It's rather durable however, so it's not in poor condition whatsoever."

Before listing nondescript items when the player is in Bunker: 
	if the backpack is marked for listing:
		change the backpack to not marked for listing.

Before listing nondescript items when the player is in Bunker: 
	if the rations is marked for listing:
		change the rations to not marked for listing.

Before listing nondescript items when the player is in Bunker: 
	if the Rifle is marked for listing:
		change the Rifle to not marked for listing.


[Saloon]
Saloon is a room. "It is an old Western Saloon. A bottle is waiting on the counter, old and dusty."

Stool is a thing in Saloon. The description is "A plain ole stool"

Counter is scenery in Saloon. The description is "A counter used for bartending."

Bottle is a thing in Saloon. The description is "A bottle of unknown liquid. What will you do?"

Before listing nondescript items when the player is in Saloon: 
	if the stool is marked for listing:
		change the stool to not marked for listing.

Before listing nondescript items when the player is in Saloon: 
	if the counter is marked for listing:
		change the counter to not marked for listing.
		
Before listing nondescript items when the player is in Saloon: 
	if the bottle is marked for listing:
		change the bottle to not marked for listing.

drinking from is an action applying to one thing.
understand "drink from [something]" as drinking from.

Instead of drinking from bottle:
	say "You take a swig from the bottle of unknown liquid. It tastes like.. water? How boring."

breaking is an action applying to one thing.
understand the command "break" as something new. 
understand "break [something]" as breaking. 

Instead of breaking bottle:
	say "You crush the bottle against the counter. The bottle is crushed to pieces. Luckily none of the glass shards hit you.";
	remove bottle from play.

[Classroom]
Classroom is a room. "It's a traditional classroom, with chalkboards and rusty desks and everything. On the board is a faded diagram of the wind tunnel."

Desks is a container in Classroom. Desks is open. The description is "you notice that inside one of the desks is a pile of papers."

Papers is a thing in Desks. The description is "A packet of papers clipped together. As you flip through them, you find all kinds of diagrams of parachutes and hot air balloons. Most of them have faded red X's across the picture, but one picture of a parachute backpack isn't crossed out. You would keep reading, but there are better things to be done."

Chalkboard is a scenery. Chalkboard is in Classroom. The description is "There are elaborate drawings of wind tunnel prototypes. The room you were initially trapped in looks a lot like the diagrams here. Upon closer inspection you notice that according to the diagrams, the top is meant to come off some how. Must be inaccurate, because you've been stuck in that room for a while, and the only way out that you've managed to find is via the portal gun."

Understand "diagram" and "faded diagram" and "diagrams" and "wind tunnel diagram" and "board" as Chalkboard.

Before listing nondescript items when the player is in Classroom: 
	if the papers is marked for listing:
		change the papers to not marked for listing.

Before listing nondescript items when the player is in Classroom: 
	if the chalkboard is marked for listing:
		change the chalkboard to not marked for listing.

Before listing nondescript items when the player is in Classroom: 
	if the desks is marked for listing:
		change the desks to not marked for listing.


[shooty stuffsssss]

Understand "shoot [something visible] with [something carried]" as shooting it with (with nouns reversed). Shooting it with is an action applying to one carried thing and one visible thing.

Check shooting it with:
	If noun is contraption:
		If second noun is wall:
			say "With a crackle and pop, a portal splits into the wall, creating a doorway to a new room. You wonder where it leads...";
			move portal to location of player;
		otherwise:
			say "you shoot things. but not the wall. Nothing really happens. I mean, the gun clicks a little, but yeah." instead;
	otherwise:
		say "You can't even begin to fathom how you would 'shoot' with an object like that!" instead;
	if noun is rifle:
		say "Your own thoughts echoed...There is a time and place for everything! but not now... Also that would probably be a waste of bullets, and you better save them in case you need them later on.";
	if noun is robot:
		say "it doesn't appear to have any shooting apparatus on it.";
		
Understand "shoot [something]" as a mistake ("You stick up your thumb and point your index finger at your target. 'Pew!' you say under your breath as you flick your wrist, pretending to shoot. Unfortunately you aren't shooting WITH something, so your hand and imagination will do.")

[combobers]

Parachute pack is a wearable thing. The description is "It's just a bunch of white sheets tied to the backpack to function as a makeshift parachute."

Combining it with is an action applying to two things.
Understand "combine [something] with [something]" as combining it with.

Instead of combining blankets with backpack:
say "You tie the blankets together to make one large sheet, then tie that to the backpack. It makes a rough looking parachute, but it'll work.";
remove backpack from play;
remove blankets from play;
move the parachute pack to player.

Instead of combining backpack with blankets:
say "You tie the blankets together to make one large sheet, then tie that to the backpack. It makes a rough looking parachute, but it'll work.";
remove backpack from play;
remove blankets from play;
move the parachute pack to player.

An Every turn rule:
if player is in White Room and Robot is on circuit board and player is not wearing parachute pack,
	end the game saying "Swoosh. The fan is so powerful, you step in the room and you immedieately die.."
	
An Every turn rule:
if player is in White Room and Robot is on circuit board and player is wearing parachute pack,
	end the game saying "Swoosh. The fan is so powerful it blows you straight out of the chamber"
