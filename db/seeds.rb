# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#Categories
################################################################################################
bolos_cat = Category.create(name: "Bolos")
brownies_cat = Category.create(name: "Brownies")
brownies_pote_cat = Category.create(name: "Brownies no pote")
brigadeiros_cat = Category.create(name: "Brigadeiros")
################################################################################################
#Categories

#Flavors
################################################################################################
morango = Flavor.create(name: "Morango")
mms  = Flavor.create(name: "M&M's")
brigadeiro_leite_ninho  = Flavor.create(name: "Brigadeiro de leite ninho")
brigadeiro_leite_ninho_nutella  = Flavor.create(name: "Brigadeiro de leite ninho e nutella")
brownie_fla = Flavor.create(name: "Brownie")
doce_de_leite  = Flavor.create(name: "Doce de Leite")
nutella  = Flavor.create(name: "Doce de Leite")
beijinho_coco = Flavor.create(name: "Beijinho de coco")
integral = Flavor.create(name: "Integral")
palha_italiana = Flavor.create(name: "Palha italiana")
palha_italiana_galak = Flavor.create(name: "Palha italiana de galak")
tradicional = Flavor.create(name: "Palha italiana de galak")
casquinha_de_browine = Flavor.create(name:"Casquinha de Brownie")
casquinha_de_browine_doce_leite = Flavor.create(name:"Doce de leite e casquinha de brownie ")
casquinha_de_browine_beijinho = Flavor.create(name:"Beijinho de coco e casquinha de brownie ")

################################################################################################
#Flavors

#Products
################################################################################################
#bolos
bolo_kit_kat = Product.create(name: "Kit Kat", category: bolos_cat)
bolo_kit_kat.flavors=morango, mms, brigadeiro_leite_ninho, brigadeiro_leite_ninho_nutella

bolo_brownie = Product.create(name: "Brownie", category: bolos_cat)
bolo_brownie.flavors = [brownie_fla]


#brownies
brownies_brownie = Product.create(name: "Brownie", category: brownies_cat)
brownies_brownie.flavors = tradicional, doce_de_leite, nutella, beijinho_coco, integral, palha_italiana, palha_italiana_galak

#browines_pote
brownies_pote_brownie = Product.create(name: "Brownie no pote", category: brownies_pote_cat)
brownies_pote_brownie.flavors=casquinha_de_browine, casquinha_de_browine_beijinho, casquinha_de_browine_doce_leite


#brigadeiros
brigadeiros_cat = Product.create(name: "Brigadeiros", category: brigadeiros_cat)

################################################################################################
#Products



