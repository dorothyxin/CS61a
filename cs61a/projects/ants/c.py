from ants import *

beehive, layout = Hive(AssaultPlan()), dry_layout
dimensions = (1, 9)
gamestate = GameState(None, beehive, ant_types(), layout, dimensions)
slow = SlowThrower()
bee = Bee(3)
gamestate.places["tunnel_0_0"].add_insect(slow)
gamestate.places["tunnel_0_4"].add_insect(bee)
slow.action(gamestate)
gamestate.time = 1
bee.action(gamestate)
gamestate.time += 1
bee.action(gamestate)