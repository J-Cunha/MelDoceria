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
kitkat = Flavor.create(name: "Kitkat")

mms  = Flavor.create(name: "M&M's")
brigadeiro_leite_ninho  = Flavor.create(name: "Brigadeiro de leite ninho")
leite_ninho  = Flavor.create(name: "Leite Ninho")
nutella  = Flavor.create(name: "Nutella")
brownie_fla = Flavor.create(name: "Brownie")
doce_de_leite  = Flavor.create(name: "Doce de Leite")
nutella  = Flavor.create(name: "Doce de Leite")
beijinho_coco = Flavor.create(name: "Beijinho de coco")
integral = Flavor.create(name: "Integral")
palha_italiana = Flavor.create(name: "Palha italiana")
galak = Flavor.create(name: "Galak")
tradicional = Flavor.create(name: "Tradicional")
casquinha_de_browine = Flavor.create(name:"Casquinha de Brownie")

################################################################################################
#Flavors

#ProductSizes
################################################################################################
p = ProductSizeCategory.create(name: 'P')
m = ProductSizeCategory.create(name: 'M')
g = ProductSizeCategory.create(name: 'G')
g = ProductSizeCategory.create(name: 'U')

bolo_peq = ProductSize.create(product_size_category: p, name: 'Bolo Pequeno', weight:'1 Kg', width: '', height: '', depth: '')
bolo_med =ProductSize.create(product_size_category: m, name: 'Bolo Medio', weight:'2 Kg', width: '', height: '', depth: '')
bolo_gra =ProductSize.create(product_size_category: g, name: 'Bolo Grande', weight:'3 Kg', width: '', height: '', depth: '')
################################################################################################
#ProductSizes

#Products
################################################################################################
#bolos

bolo_brownie = Product.create(name: "Bolo Brownie", category: bolos_cat)
bolo_brownie.flavors = [brownie_fla]
bolo_brownie.product_image=File.open('app/assets/images/products/bolo_brownie.jpg')
ProductProductSize.create(product: bolo_brownie, product_size: bolo_peq, value: 50.0)
ProductProductSize.create(product: bolo_brownie, product_size: bolo_med, value: 80.0)
ProductProductSize.create(product: bolo_brownie, product_size: bolo_gra, value: 100.0)
bolo_brownie.save
#params = {product: bolo_brownie, sizes: [{size: bolo_peq, value: 50.0}, {size: bolo_med, value: 80.0}, {size: bolo_gra, value: 100.0}]}

bolo_kit_kat_morango = Product.create(name: "Bolo de Kitkat com Morango", category: bolos_cat)
bolo_kit_kat_morango.product_image=File.open('app/assets/images/products/bolo_kitkat_morango.jpg')
bolo_kit_kat_morango.flavors=morango, kitkat
ProductProductSize.create(product: bolo_kit_kat_morango, product_size: bolo_peq, value: 50.0)
ProductProductSize.create(product: bolo_kit_kat_morango, product_size: bolo_med, value: 80.0)
ProductProductSize.create(product: bolo_kit_kat_morango, product_size: bolo_gra, value: 100.0)
bolo_kit_kat_morango.save

bolo_kit_kat_brigadeiro_leiteninho = Product.create(name: "Bolo de Kitkat com Brigadeiro de Leite Ninho", category: bolos_cat)
bolo_kit_kat_brigadeiro_leiteninho.product_image=File.open('app/assets/images/products/bolo_kitkat_brigadeiro_leiteninho.jpg')
bolo_kit_kat_brigadeiro_leiteninho.flavors= kitkat, leite_ninho
ProductProductSize.create(product: bolo_kit_kat_brigadeiro_leiteninho, product_size: bolo_peq, value: 50.0)
ProductProductSize.create(product: bolo_kit_kat_brigadeiro_leiteninho, product_size: bolo_med, value: 80.0)
ProductProductSize.create(product: bolo_kit_kat_brigadeiro_leiteninho, product_size: bolo_gra, value: 100.0)
bolo_kit_kat_brigadeiro_leiteninho.save

bolo_kit_kat_mms = Product.create(name: "Bolo de Kitkat com M&Ms", category: bolos_cat)
bolo_kit_kat_mms.product_image=File.open('app/assets/images/products/bolo_kitkat_mms.jpg')
bolo_kit_kat_mms.flavors= kitkat, mms
ProductProductSize.create(product: bolo_kit_kat_mms, product_size: bolo_peq, value: 50.0)
ProductProductSize.create(product: bolo_kit_kat_mms, product_size: bolo_med, value: 80.0)
ProductProductSize.create(product: bolo_kit_kat_mms, product_size: bolo_gra, value: 100.0)
bolo_kit_kat_mms.save

#brownies
brownies_brownie = Product.create(name: "Brownie", category: brownies_cat)
brownies_brownie.product_image=File.open('app/assets/images/products/brownie.jpg')
brownies_brownie.flavors = tradicional, brownie_fla
ProductProductSize.create(product: brownies_brownie, product_size: bolo_peq, value: 50.0)
ProductProductSize.create(product: brownies_brownie, product_size: bolo_med, value: 80.0)
ProductProductSize.create(product: brownies_brownie, product_size: bolo_gra, value: 100.0)
brownies_brownie.save

#browines_pote
#brownies_pote_brownie = Product.create(name: "Brownie no pote", category: brownies_pote_cat)
#brownies_pote_brownie.flavors=casquinha_de_browine, tradicional


#brigadeiros
#brigadeiros_cat = Product.create(name: "Brigadeiros", category: brigadeiros_cat)

################################################################################################
#Products


