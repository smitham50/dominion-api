# CARD:
# name: string,
# picture: string,
# cost: integer,
# type: string (action, treasure, victory, actionReaction),
# triggers: string (+card, +action, +buy, attack/defend, +wallet),
# victoryPoints: integer,
# value, integer

# CARD BREAKDOWN:
# 130 Treasure Cards (34 copper, 20 silver, 20 gold)
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
  34.times do
    puts "Seeding Copper"
    Card.create(
      name: "Copper",
      description: "+1 to Wallet", 
      picture: "https://vignette.wikia.nocookie.net/dominioncg/images/b/b1/Copper2.jpg/revision/latest?cb=20100210171018",
      cost: 0,
      card_type: "Treasure",
      triggers: nil,
      victory_points: nil,
      value: 1,
      draw: 0
    )
  end
end
seed_coppers

#Create 40 Silvers
def seed_silvers
  20.times do
    puts "Seeding Silver"
    Card.create(
      name: "Silver", 
      description: "+2 to Wallet",
      picture: "https://vignette.wikia.nocookie.net/dominioncg/images/b/b4/Silver2.jpg/revision/latest?cb=20100210171121",
      cost: 3,
      card_type: "Treasure",
      triggers: nil,
      victory_points: nil,
      value: 2,
      draw: 0
    )
  end
end
seed_silvers

#Create 30 Golds
def seed_golds
  20.times do
    puts "Seeding Gold"
    Card.create(
      name: "Gold", 
      description: "+3 to Wallet",
      picture: "https://vignette.wikia.nocookie.net/dominioncg/images/a/ac/Gold2.jpg/revision/latest?cb=20100210171212",
      cost: 6,
      card_type: "Treasure",
      triggers: nil,
      victory_points: nil,
      value: 3,
      draw: 0
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
      description: "+1 Victory Point",
      picture: "https://dominionstrategy.files.wordpress.com/2013/01/estate.jpg",
      cost: 2,
      card_type: "Victory",
      triggers: nil,
      victory_points: 1,
      value: nil,
      draw: 0
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
      description: "+3 Victory Points",
      picture: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMdt2Ta3gmOPntSSYtw2YJbMEzgBpSZwS0qTnve0zZ30gwBafW",
      cost: 5,
      card_type: "Victory",
      triggers: nil,
      victory_points: 3,
      value: nil,
      draw: 0
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
      description: "+6 Victory Points",
      picture: "https://dominionstrategy.files.wordpress.com/2011/03/province.jpg",
      cost: 8,
      card_type: "Victory",
      triggers: nil,
      victory_points: 6,
      value: nil,
      draw: 0
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
      description: "+1 Action. Discard any number of cards from hand, draw 1 for each discarded",
      picture: "https://dominionstrategy.files.wordpress.com/2010/11/cellar.jpg",
      cost: 2,
      card_type: "Action",
      triggers: ["+1ACTION", "CELLAR"],
      victory_points: nil,
      value: nil,
      draw: 0
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
      description: "Draw 2 cards or defend against Militia",
      picture: "https://vignette.wikia.nocookie.net/dominioncg/images/f/fe/Moat.jpg/revision/latest?cb=20100213191143",
      cost: 2,
      card_type: "Action",
      triggers: ["+2CARDS"],
      victory_points: nil,
      value: nil,
      draw: 2
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
      description: "+1 Buy, +2 to Wallet",
      picture: "https://dominionstrategy.files.wordpress.com/2010/12/woodcutter.jpg?w=584",
      cost: 3,
      card_type: "Action",
      triggers: ["+1BUY", "+2WALLET"],
      victory_points: nil,
      value: nil,
      draw: 0
    )
  end
end
seed_woodcutters

#Create 12 Workshops
def seed_workshops
  12.times do
    puts "Seeding Workshop"
    Card.create(
      name: "Workshop", 
      description: "Gain card from supply costing up to 4",
      picture: "https://vignette.wikia.nocookie.net/dominioncg/images/5/50/Workshop.jpg/revision/latest?cb=20100213191621",
      cost: 3,
      card_type: "Action",
      triggers: ["WORKSHOP"],
      victory_points: nil,
      value: nil,
      draw: 0
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
      description: "Draw 1 card, +2 Actions",
      picture: "https://dominionstrategy.files.wordpress.com/2011/01/village.jpg",
      cost: 3,
      card_type: "Action",
      triggers: ["+1CARD", "+2ACTIONS"],
      victory_points: nil,
      value: nil,
      draw: 1
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
      description: "Draw 3 cards",
      picture: "https://vignette.wikia.nocookie.net/dominioncg/images/3/36/Smithy.jpg/revision/latest?cb=20100210165849",
      cost: 4,
      card_type: "Action",
      triggers: ["+3CARDS"],
      victory_points: nil,
      value: nil,
      draw: 3
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
      description: "Trash card from hand, gain card from supply costing up to 2 more",
      picture: "http://www.dominiondeck.com/sites/default/files/imagecache/cards-landing/cards/remodel.jpg",
      cost: 4,
      card_type: "Action",
      triggers: ["REMODEL"],
      victory_points: nil,
      value: nil,
      draw: 0
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
      description: "+2 to Wallet. Opponent must discard down to 3 or play Moat",
      picture: "https://vignette.wikia.nocookie.net/dominioncg/images/a/a0/Militia.jpg/revision/latest?cb=20100210165354",
      cost: 4,
      card_type: "Action",
      triggers: ["ATTACK", "+2WALLET"],
      victory_points: nil,
      value: nil,
      draw: 0
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
      description: "+1 Card, +1 Action, +1 Buy, +1 to Wallet",
      picture: "https://dominionstrategy.files.wordpress.com/2010/11/market.jpg",
      cost: 5,
      card_type: "Action",
      triggers: ["+1CARD", "+1ACTION", "+1BUY", "+1WALLET"],
      victory_points: nil,
      value: nil,
      draw: 1
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
      description: "Trash a Copper or Silver and add a Silver or Gold to hand",
      picture: "http://dominionstrategy.files.wordpress.com/2010/12/mine.jpg",
      cost: 5,
      card_type: "Action",
      triggers: ["MINE"],
      victory_points: nil,
      value: nil,
      draw: 0
    )
  end
end
seed_mines

Card.create(
      name: "Trash", 
      description: nil,
      picture: "http://wiki.dominionstrategy.com/images/thumb/e/ef/Trash.jpg/200px-Trash.jpg",
      cost: nil,
      card_type: nil,
      triggers: nil,
      victory_points: nil,
      value: nil,
      draw: 0
    )


