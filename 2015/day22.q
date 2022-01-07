i:"J"$last@'": " vs/:read0`:22.txt

spells:
/ (---------;-----;-------;-------;-------;------------)
  (`name    ;`cost;`damage;`cycles;`effect;`v          )!/:(
/ (---------;-----;-------;-------;-------;------------)
  (`missile ;   53;      4;      1;      `;           0);
  (`drain   ;   73;      2;      1;    `me;           2);
  (`shield  ;  113;      0;      6; `armor;7 0 0 0 0 -7);
  (`poison  ;  173;      3;      6;      `;           0);
  (`recharge;  229;      0;      5;  `mana;         101))
/ (---------;-----;-------;-------;-------;------------)

update v:cycles#'v from `spells;

state:``me`mana`armor`spent`boss!0 50 500 0 0,i 0
demage: i 1  //boss demage

game:{[turn;magic;state]
	if[turn=`me;
		state[`me]-:hard;
		if[0>=state`me;:0W];							/died 
	];
	//apply magic
	state[`mana`spent]+:-1 1 * sum magic`cost;			/cost
	magic[`cost]*:0;
	if[best<state`spent;:0W];							/we can't beat it
	state:state {@[x;y`effect;+;first y`v]}/ magic;		/effect
	state[`boss]-:sum magic`damage;
	magic:update cycles-1, 1_'v from magic;				/decay
	magic:delete from magic where cycles=0;
	if[0>=state`boss;best&::state`spent;:state`spent];	/we won
	if[turn=`me;
		if[53>state`mana;:0W];							/we lost
		active:magic`name;
		:min game[`boss;;state] each 
			magic upsert/: select from spells 
				where not name in active, cost<=state`mana;
	];
	if[turn=`boss;
		state[`me]-:1|demage-state`armor;
		if[0>=state`me;:0W];							/died
		:game[`me;magic;state]
	]
 }

//part 1
hard:0;
best:0W
game[`me;0#spells;state]
//part 2
hard:1;
best:0W
game[`me;0#spells;state]


