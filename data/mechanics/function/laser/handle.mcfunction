execute if score _laserstate variables matches 20.. run function mechanics:laser/visuals
execute if score _laserstate variables matches 20 run function mechanics:laser/laseroff
execute if score _laserstate variables matches 70 run function mechanics:laser/laseron

execute if score _laserstate variables matches 20..70 run function mechanics:laser/damagenearby