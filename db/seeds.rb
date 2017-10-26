# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# encoding: utf-8

Pokemon.destroy_all
pidgey = Pokemon.new(nombre: "Pidgey", descripcion: %Q{
National №	016\n
Type	NORMAL FLYING\n
Species	Tiny Bird Pokémon\n
Height	1′0″ (0.30m)\n
Weight	4 lbs (1.8 kg)\n
Abilities	Keen Eye\n
Tangled Feet\n
Big Pecks (hidden ability)\n
Local №	016 (Red/Blue)\n
010 (Gold/Silver)\n
016 (FireRed/LeafGreen)\n
010 (HeartGold/SoulSilver)\n
017 (X/Y)\n
Japanese	Poppo\n
Training\n

EV yield	1 Speed\n
Catch rate	255 (33.3% with PokéBall, full HP)\n
Base Happiness	70 (normal)\n
Base EXP	55\n
Growth Rate	Medium Slow\n
Breeding\n
\n
Egg Groups	Flying\n
Gender	50% male, 50% female\n
Egg cycles	15 (base 3,840 steps)\n
})

pikachu = Pokemon.new(nombre: "Pikachu", descripcion: %Q{
National №	025
Type	ELECTRIC
Species	Mouse Pokémon
Height	1′4″ (0.41m)
Weight	13.2 lbs (6.0 kg)
Abilities	Static
Lightning Rod (hidden ability)
Local №	025 (Red/Blue)
022 (Gold/Silver)
156 (Ruby/Sapphire)
025 (FireRed/LeafGreen)
104 (Diamond/Pearl)
104 (Platinum)
022 (HeartGold/SoulSilver)
036 (X/Y)
163 (Omega Ruby/Alpha Sapphire)
025 (Sun/Moon)
Training

EV yield	2 Speed
Catch rate	190 (24.8% with PokéBall, full HP)
Base Happiness	70 (normal)
Base EXP	82
Growth Rate	Medium Fast
Breeding

Egg Groups	Fairy, Field
Gender	50% male, 50% female
Egg cycles	10 (base 2,560 steps)
	})

ninetales = Pokemon.new(nombre: "Ninetales", descripcion: %Q{
National №	038
Type	FIRE
Species	Fox Pokémon
Height	3′7″ (1.09m)
Weight	43.9 lbs (19.9 kg)
Abilities	Flash Fire
Drought (hidden ability)
Local №	038 (Red/Blue)
126 (Gold/Silver)
154 (Ruby/Sapphire)
038 (FireRed/LeafGreen)
128 (HeartGold/SoulSilver)
249 (Black 2/White 2)
161 (Omega Ruby/Alpha Sapphire)
254 (Sun/Moon)
Japanese	Kyukon
Training

EV yield	1 Special Defense, 1 Speed
Catch rate	75 (9.8% with PokéBall, full HP)
Base Happiness	70 (normal)
Base EXP	178
Growth Rate	Medium Fast
Breeding

Egg Groups	Field
Gender	25% male, 75% female
Egg cycles	20 (base 5,120 steps)

	} )

eevee = Pokemon.new(nombre: "Eevee", descripcion: %Q{
National №	133
Type	NORMAL
Species	Evolution Pokémon
Height	1′0″ (0.30m)
Weight	14.3 lbs (6.5 kg)
Abilities	Adaptability
Run Away
Anticipation (hidden ability)
Local №	133 (Red/Blue)
180 (Gold/Silver)
133 (FireRed/LeafGreen)
163 (Platinum)
184 (HeartGold/SoulSilver)
091 (Black 2/White 2)
077 (X/Y)
123 (Sun/Moon)
Japanese	Ibui
Training

EV yield	1 Special Defense
Catch rate	45 (5.9% with PokéBall, full HP)
Base Happiness	70 (normal)
Base EXP	92
Growth Rate	Medium Fast
Breeding

Egg Groups	Field
Gender	87.5% male, 12.5% female
Egg cycles	35 (base 8,960 steps)
	})

vulpix = Pokemon.new(nombre: "Vulpix", descripcion: %Q{
National №	037
Type	FIRE
Species	Fox Pokémon
Height	2′0″ (0.61m)
Weight	21.8 lbs (9.9 kg)
Abilities	Flash Fire
Drought (hidden ability)
Local №	037 (Red/Blue)
125 (Gold/Silver)
153 (Ruby/Sapphire)
037 (FireRed/LeafGreen)
127 (HeartGold/SoulSilver)
248 (Black 2/White 2)
160 (Omega Ruby/Alpha Sapphire)
253 (Sun/Moon)
Japanese	Rokon
Training

EV yield	1 Speed
Catch rate	190 (24.8% with PokéBall, full HP)
Base Happiness	70 (normal)
Base EXP	63
Growth Rate	Medium Fast
Breeding

Egg Groups	Field
Gender	25% male, 75% female
Egg cycles	20 (base 5,120 steps)
	})
eevee.save
pikachu.save
pidgey.save
ninetales.save
vulpix.save