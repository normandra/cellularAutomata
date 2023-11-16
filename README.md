# Tree Automata Godot 4.1 practice

this project holds a simple automata which depicts a tree capable of growing, blooming and spreading its seed

the project starts with plain dirt with some seeds spread over, water randomly drops (rain) and can make the dirt wet.

seed or root can absorb wet dirt which will make it self filled. Filled root or seed can either spawn branch or more root

filled branch can spawn leaves and flower

flower can spawn seed, which will drop

## Architecture

the base root hold a grid array which holds the current state of the automata. 
