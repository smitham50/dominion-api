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

#Create 8 Provinces
def seed_provinces
  8.times do
    puts "Seeding Province"
    Card.create(
      name: "Province", 
      picture: "../../card-images/province.jpg",
      cost: 8,
      card_type: "Victory",
      triggers: nil,
      victory_points: 6,
      value: nil
    )
  end
end
seed_provinces

#Create 12 Cellars
def seed_cellars
  12.times do
    puts "Seeding Cellar"
    Card.create(
      name: "Cellar", 
      picture: "../../card-images/cellar.jpg",
      cost: 2,
      card_type: "Action",
      triggers: ["+1 Action", "Cycle"],
      victory_points: nil,
      value: nil
    )
  end
end
seed_cellars

#Create 12 Moats
def seed_moats
  12.times do
    puts "Seeding Moat"
    Card.create(
      name: "Moat", 
      picture: "../../card-images/moat.jpg",
      cost: 2,
      card_type: "Action-Reaction",
      triggers: ["+2 Cards"],
      victory_points: nil,
      value: nil
    )
  end
end
seed_moats

#Create 12 Woodcutters
def seed_woodcutters
  12.times do
    puts "Seeding Woodcutter"
    Card.create(
      name: "Woodcutter", 
      picture: "../../card-images/woodcutter.jpg",
      cost: 3,
      card_type: "Action",
      triggers: ["+1 Buy", "+2 Wallet"],
      victory_points: nil,
      value: nil
    )
  end
end
seed_woodcutters

#Create 12 Workshop
def seed_workshops
  12.times do
    puts "Seeding Workshop"
    Card.create(
      name: "Workshop", 
      picture: "../../card-images/workshop.jpg",
      cost: 3,
      card_type: "Action",
      triggers: ["Gain Supply Card"],
      victory_points: nil,
      value: nil
    )
  end
end
seed_workshops

#Create 12 Villages
def seed_villages
  12.times do
    puts "Seeding Village"
    Card.create(
      name: "Village", 
      picture: "../../card-images/village.jpg",
      cost: 3,
      card_type: "Action",
      triggers: ["+1 Card", "+2 Actions"],
      victory_points: nil,
      value: nil
    )
  end
end
seed_villages

#Create 12 Smithies
def seed_smithies
  12.times do
    puts "Seeding Smithy"
    Card.create(
      name: "Smithy", 
      picture: "../../card-images/smithy.jpg",
      cost: 4,
      card_type: "Action",
      triggers: ["+3 Cards"],
      victory_points: nil,
      value: nil
    )
  end
end
seed_smithies

#Create 12 Remodels
def seed_remodels
  12.times do
    puts "Seeding Remodel"
    Card.create(
      name: "Remodel", 
      picture: "../../card-images/remodel.jpg",
      cost: 4,
      card_type: "Action",
      triggers: ["Remodel"],
      victory_points: nil,
      value: nil
    )
  end
end
seed_remodels

#Create 12 Militias
def seed_militias
  12.times do
    puts "Seeding Militia"
    Card.create(
      name: "Militia", 
      picture: "../../card-images/militia.jpg",
      cost: 4,
      card_type: "Action",
      triggers: ["Attack", "+2 Wallet"],
      victory_points: nil,
      value: nil
    )
  end
end
seed_militias

#Create 12 Markets
def seed_markets
  12.times do
    puts "Seeding Market"
    Card.create(
      name: "Market", 
      picture: "../../card-images/market.jpg",
      cost: 5,
      card_type: "Action",
      triggers: ["+1 Card", "+1 Action", "+1 Buy", "+1 Wallet"],
      victory_points: nil,
      value: nil
    )
  end
end
seed_markets

#Create 12 Mines
def seed_mines
  12.times do
    puts "Seeding Mine"
    Card.create(
      name: "Mine", 
      picture: "../../card-images/mine.jpg",
      cost: 5,
      card_type: "Action",
      triggers: ["Mine"],
      victory_points: nil,
      value: nil
    )
  end
end
seed_mines
