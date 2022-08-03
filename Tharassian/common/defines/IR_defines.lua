-- City of Hate Defines

NDefines.NGame.START_DATE = "887.1.1.12"
NDefines.NGame.END_DATE = "2000.1.1.1"
NDefines.NGame.FUEL_RESOURCE = "food"										-- resource that will give country fuel, changed to food for the mod
NDefines.NGame.HANDS_OFF_START_TAG = "SUL"									-- tag for player country for -hands_off runs. use an existing tag that is less likely to affect the game

NDefines.NDiplomacy.TENSION_TIME_SCALE_START_DATE = "887.1.1.12"			-- Starting at this date, the tension values will be scaled down (will be equal to 1 before that)
NDefines.NDiplomacy.ASSUME_FACTION_LEADERSHIP_COOLDOWN_DAYS = 99999			-- Number of days after formation of faction or change in leadership before another country is allowed to assume leadership.
NDefines.NDiplomacy.ASSUME_FACTION_SPYMASTER_COOLDOWN_DAYS = -1				-- Number of days after change of Spy Master before another country is allowed to become Spy Master.

NDefines.NCountry.RESISTANCE_STRENGTH_FROM_VP = 0.002						-- How much strength ticking speed gives each VP score.
NDefines.NCountry.RESISTANCE_STRENGTH_FROM_NEIGHBORS = 0.6 					-- Multiplies how much resistance can spread from one state to its neighbors, a state will spread whatever is highest of its victorypoints resistance increase or half of any of its neighbors spread, multiplied by this
NDefines.NCountry.RESISTANCE_DECAY_WHEN_NO_GROWTH = 0.004					-- Resistance will fall by this much each day if there is nothing increasing it ( no VPs and no spread from neighbors )
NDefines.NCountry.CIVIL_WAR_INVOLVEMENT_MIN_TENSION = 5						-- base value of world tension to involve other sides to the civil war
NDefines.NCountry.MIN_SURRENDER_LIMIT = 0.1									-- Minimum non-forced surrender limit. valid 0-1
NDefines.NCountry.FEMALE_UNIT_LEADER_BASE_CHANCE = { 
	-- applies as a factor to female unit leader randomization
	-- the values needs to be zero if you don't actually have random portraits
	1.0, -- country leaders
	1.0, -- army leaders
	1.0, -- navy leaders
	1.0, -- air leaders
	1.0, -- operatives
}
NDefines.NCountry.REINFORCEMENT_DELIVERY_SPEED_MIN = 1.0					-- Bumped up from vanilla as travel times in medieval settins matter significantly more
NDefines.NCountry.BASE_FUEL_GAIN_PER_OIL = 1								-- base amount of fuel gained hourly per excess oil
NDefines.NCountry.BASE_FUEL_GAIN = 10.0										-- base amount of fuel gained hourly, independent of excess oil

NDefines.NResistance.INITIAL_STATE_RESISTANCE = 5.0							-- initial resistance percentage of a state once it is captured
NDefines.NResistance.COMPLIANCE_FACTOR_ON_STATE_CONTROLLER_CHANGE = -0.1	-- compliance factor that applies when the state controller changes (in between allies, compliance is zeroed if it is taken by original country)
NDefines.NResistance.RESISTANCE_TARGET_BASE = 55.0							-- base resistance target percentage
NDefines.NResistance.RESISTANCE_TARGET_MODIFIER_HAS_CLAIM = -50.0			-- resistance target modifier in % for states we have claim
NDefines.NResistance.RESISTANCE_TARGET_MODIFIER_PER_STABILITY_LOSS = 0.3	-- resistance target modifier per stability below 100%
NDefines.NResistance.RESISTANCE_TARGET_MODIFIER_IS_AT_PEACE = -15.0			-- resistance target modifier when we are at peace	
NDefines.NResistance.COMPLIANCE_GROWTH_BASE = 0.07							-- base compliance grow
NDefines.NResistance.COMPLIANCE_GROWTH_MIN = -100.0							-- min compliance grow
NDefines.NResistance.COMPLIANCE_DECAY_AT_MAX_COMPLIANCE = -0.1				-- as compliance increases, it gets a decay rate depending on its value. compliance should stabilize at some value until its growth changes
NDefines.NResistance.GARRISON_MANPOWER_LOST_BY_ATTACK = 0.3					-- Ratio of manpower lost by garrison at each attack on garrison (this number will be reduced by the hardness of garrison template)

NDefines.NMilitary.DISBAND_MANPOWER_LOSS = 0.7
NDefines.NMilitary.ARMY_FUEL_COST_MULT = 1.0								-- fuel cost multiplier for all army related stuff
NDefines.NMilitary.ARMY_COMBAT_FUEL_MULT =   3.0							-- fuel consumption ratio in combat (plus ARMY_MOVEMENT_FUEL_MULT if you are also moving. ie offensive combat)
NDefines.NMilitary.ARMY_TRAINING_FUEL_MULT = 1.5							-- fuel consumption ratio while training
NDefines.NMilitary.ARMY_MOVEMENT_FUEL_MULT = 1.25							-- fuel consumption ratio while moving
NDefines.NMilitary.ARMY_NAVAL_TRANSFER_FUEL_MULT = 1.0						-- fuel consumption ratio while naval transferring
NDefines.NMilitary.ARMY_STRATEGIC_DEPLOYMENT_FUEL_MULT = 2.0				-- fuel consumption ratio while doing strategic deployment
NDefines.NMilitary.ARMY_IDLE_FUEL_MULT = 1.0								-- fuel consumption ratio while just existing
NDefines.NMilitary.MIN_SUPPLY_CONSUMPTION = 0.03							-- minimum value of supply consumption that a unit can get
NDefines.NMilitary.FUEL_PENALTY_START_RATIO = 0.45							-- ratio of fuel in an army to start getting penalties
NDefines.NMilitary.OUT_OF_FUEL_EQUIPMENT_MULT = 0.05						-- ratio of the stats that you get from equipments that uses fuel and you lack it
NDefines.NMilitary.OUT_OF_FUEL_SPEED_MULT = 0.2								-- speed mult that armies get when out of fuel

NDefines.NNavy.NAVAL_INVASION_PRIORITY = 1.5								-- default convoy priority for naval invasions
NDefines.NNavy.NAVAL_SUPREMACY_CAN_INVADE = -0.05							-- required naval supremacy to perform invasions on an area

NDefines.NAI.GARRISON_FRACTION = 0.05										-- How large part of a front should always be holding the line rather than advancing at the enemy
NDefines.NAI.TRADEABLE_FACTORIES_FRACTION = 0.9								-- Will at most trade away this fraction of factories.
NDefines.NAI.MIN_DELIVERED_TRADE_FRACTION = 0.5								-- AI will cancel trade deals that are not able to deliver more than this fraction of the agreed amount
NDefines.NAI.MINIMUM_GOOD_TRADE_RATIO_PER_CIV = 0.003					 	-- for each civ factory we have mul with this we are allowed to trade under % of resource on a trade
NDefines.NAI.MAX_FACTORY_TO_TRADE_FOR_FUEL = 0.9
NDefines.NAI.MAX_FACTORY_TO_TRADE_FOR_FUEL_IN_PEACE = 0.9
NDefines.NAI.DIPLOMACY_FACTION_CIVILWAR_WANTS_HELP = -50
NDefines.NAI.INVASION_COASTAL_PROVS_PER_ORDER = 6							-- AI will consider one extra invasion per number of provinces stated here (num orders = total coast / this)
NDefines.NAI.MAX_DISTANCE_NALAV_INVASION = 1500.0							-- AI is extremely unwilling to plan naval invasions above this naval distance limit.
NDefines.NAI.ENEMY_NAVY_STRENGTH_DONT_BOTHER = 25.0							-- If the enemy has a navy at least these many times stronger that the own, don't bother invading
NDefines.NAI.RELATIVE_STRENGTH_TO_INVADE = 0.01								-- Compares the estimated strength of the country/faction compared to it's enemies to see if it should invade or stay at home to defend
NDefines.NAI.RELATIVE_STRENGTH_TO_INVADE = 0.01								-- Compares the estimated strength of the country/faction compared to it's enemies to see if it should invade or stay at home to defend, but while being a defensive country
NDefines.NAI.MAX_MICRO_ATTACKS_PER_ORDER = 20								-- AI goes through its orders and checks if there are situations to take advantage of
NDefines.NAI.ENEMY_HOME_AREA_RATIO_TO_DISABLE_INVASIONS	= 999				-- If we are fighting against an enemy home area from our home area and if the enemy area is larger than this ratio, non strategy invasions are disabled
NDefines.NAI.MAX_UNITS_FACTOR_INVASION_ORDER = 1.5							-- Factor for max number of units to assign to naval invasion orders
NDefines.NAI.MIN_UNITS_FACTOR_INVASION_ORDER = 0.5							-- Factor for min number of units to assign to naval invasion orders
NDefines.NAI.MAX_DIST_PORT_RUSH = 35.0										-- If a unit is in enemy territory with no supply it will consider nearby ports within this distance.
NDefines.NAI.INVASION_DISTANCE_RANDOMNESS = 350								-- This higher the value, the more unpredictable the invasions. Compares to actual map distance in pixels.

	-- rivers will transfer in between nodes as if they were this level
NDefines.NSupply.RIVER_RAILWAY_LEVEL = 3									-- Significantly buffed


NDefines.NOperatives.MAX_OPERATIVE_SLOT_FROM_AGENCY_UPGRADES = 5			-- max operative slots gained from upgrades
NDefines.NOperatives.AGENCY_OPERATIVE_RECRUITMENT_TIME = 3					-- Number of days to wait to have operative to recruit when an operative slot first becomes available