# CARD:
# name: string,
# picture: string,
# cost: integer,
# type: string (action, treasure, victory, actionReaction),
# triggers: string (+card, +action, +buy, attack/defend, +wallet),
# victoryPoints: integer,
# value, integer

# CARD BREAKDOWN:
# 130 Treasure Cards (60 copper, 40 silver, 30 gold)
# 30 Victory Cards (14 estates, 8 duchies, 8 provinces)
# 12 Cellar
# 12 Moat
# 12 Woodcutter
# 12 Workshop
# 12 Village
# 12 Smithy
# 12 Remodel
# 12 Militia
# 12 Market
# 12 Mine

# Create 60 Coppers
def seed_coppers
  60.times do
    puts "Seeding Copper"
    Card.create(
      name: "Copper", 
      picture: "../../card-images/copper.jpg",
      cost: 0,
      card_type: "Treasure",
      triggers: nil,
      victory_points: nil,
      value: 1
    )
  end
end
seed_coppers

#Create 40 Silvers
def seed_silvers
  40.times do
    puts "Seeding Silver"
    Card.create(
      name: "Silver", 
      picture: "../../card-images/silver.jpg",
      cost: 3,
      card_type: "Treasure",
      triggers: nil,
      victory_points: nil,
      value: 2
    )
  end
end
seed_silvers

#Create 30 Golds
def seed_golds
  30.times do
    puts "Seeding Gold"
    Card.create(
      name: "Gold", 
      picture: "../../card-images/gold.jpg",
      cost: 6,
      card_type: "Treasure",
      triggers: nil,
      victory_points: nil,
      value: 3
    )
  end
end
seed_golds

#Create 14 Estates
def seed_estates
  14.times do
    puts "Seeding Estate"
    Card.create(
      name: "Estate", 
      picture: "../../card-images/estate.jpg",
      cost: 2,
      card_type: "Victory",
      triggers: nil,
      victory_points: 1,
      value: nil
    )
  end
end
seed_estates

#Create 8 Duchies
def seed_duchies
  8.times do
    puts "Seeding Duchy"
    Card.create(
      name: "Duchy", 
      picture: "../../card-images/duchy.jpg",
      cost: 5,
      card_type: "Victory",
      triggers: nil,
      victory_points: 3,
      value: nil
    )
  end
end
seed_duchies