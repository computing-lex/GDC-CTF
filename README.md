# ERAU Game Dev Club - Capture the Flag


# Rules of the Game
1. CTF is played on a rectangular filed having a width = 800 units and height 500 units.
2. There are two teams: Red and Blue.
3. The Blue home base is at (x, y) = (50, 450). See Figure 1.
4. The Red home base is at (x, y) = ( 750, 50). See Figure 1.
5. The game is played in turns, referred to as “ticks.”
6. An agent is an individual actor in the game.
7. There are three types of agents: runners, hunters, and sleepers.
8. A team is composed of seven agents.
9. The player selects how many of each type of agent is on the player’s team.
10. There is no restriction on the number of each type of agent selected by the player, though
the total must equal seven.
11. Each agent is assigned a speed and strength attribute value, expressed in integer values.
12. Speed and strength attribute values cannot sum to more than ten at the beginning of the
game (speed + strength = 10).
13. An agent must be assigned a minimum speed of 1.
14. Agent speeds are fixed once game play begins.
15. All active agents (see Table 3) move the number of units designated by their speed in
every tick.
16. An agent must be assigned a minimum strength of 1.
17. Agent strength may be reduced through game events (see Table 3).
18. An agent is removed from the game if its strength drops to zero or less.
19. Only runner agents may carry flags.
20. Runners “pick up” a flag by passing over it.
21. Runners may only carry the flag of the opposing team
22. Runners that are carrying a flag and are removed from the game will drop the flag at their
location when removed from the game.
23. The player assigns a route to each agent on the team (see Table 3).
24. Agents will initially move according to their route, and then move and interact per the
behaviors listed in Table 2.
25. The player assigns a time delay, in whole seconds, for each agent to enter the game.
26. All agents enter the game at their home base.
27. Agents with a time delay of zero begin the game in play.
28. Agents with a non-zero time delay will enter the game when the game clock is equal to
their time delay.
29. Agent location refers to the (x, y) coordinates of the center point of the agent.
30. When two agents of opposing teams are located within 15 units of each other, they will
interact per Table 3.
31. If multiple agents of an opposing team are within 15 units of an agent, the agent will only
interact with the closest one.
32. A team wins a game when one of its agents carries the opposing teams flag within 15
units of its home base.
33. A match is won when a team wins three games.
