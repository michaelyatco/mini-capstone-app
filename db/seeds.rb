User.create!([
  {name: "Danielle", email: "Danielle@Schwarz.com", password_digest: "$2a$10$AmFIV0dMx4aKdnvIRRg7o.S23XCr9uKPU/mF9mYVlsi46SiTTdfoO", admin: false},
  {name: "Mike", email: "Mike@Yatco.com", password_digest: "$2a$10$vEuPl0R161vmXQf89pHkWut.rluRenaqz6yuF8HATpmJU7ks0RnIu", admin: true}
])
Image.create!([
  {url: "http://www.decalninja.com/images/130832568214148695198.jpeg", product_id: 5},
  {url: "http://orig03.deviantart.net/6b02/f/2010/045/b/b/8_bit_health_potion_by_metalshadowoverlord.jpg", product_id: 6},
  {url: "http://www.zeldaelements.net/images/games/the_legend_of_zelda/items_and_equipment/arrow.png", product_id: 4},
  {url: "http://www.zeldadungeon.net/Zelda01/Items/MagicalShield3.png", product_id: 1},
  {url: "http://orig10.deviantart.net/4fda/f/2010/058/c/5/8_bit_bomb_by_metalshadowoverlord.jpg", product_id: 3},
  {url: "https://zeldawiki.org/images/thumb/c/c6/Blue_Ring.png/100px-Blue_Ring.png", product_id: 2},
  {url: "http://orig09.deviantart.net/c6ee/f/2011/365/0/3/loz_magic_shield_by_blueamnesiac-d4ks7lx.png", product_id: 1}
])
Product.create!([
  {name: "Bombs", price: "100.0", description: "Blast through walls! Discover hidden areas! And of course, wreak havoc among your enemies with these demolition delights. Especially useful against Dodongos.", in_stock: true, supplier_id: 1, amount: 10},
  {name: "Red Potion", price: "150.0", description: "This red potion will heal all your damage. It can be used twice!!!", in_stock: true, supplier_id: 2, amount: 10},
  {name: "Magical Shield", price: "90.0", description: "While your default wooden shield can only deflect projectiles from basic enemies, this shield will successfully absorb all attacks from advanced enemies like Wizrobe beams and Zola's fireballs! WARNING - this shield will be eaten by the Like Like enemy found in underground dungeons if it catches you.", in_stock: true, supplier_id: 1, amount: 10},
  {name: "Arrows", price: "100.0", description: "Shoot enemies from far away! NOTE: Needs the bow (Sold Separately)", in_stock: true, supplier_id: 2, amount: 20},
  {name: "Food", price: "50.0", description: "This item, which appears to be some sort of meat, can be used to lure enemies to a specific location, making them easier for Link to kill.", in_stock: true, supplier_id: 1, amount: 5},
  {name: "Blue Ring", price: "250.0", description: "A whopping price for sure but you can't put a price on your safety. This ring will halve the damage you would normally receive. Plus it changes your tunic from a pedestrian-looking green to one of the fifty shades of grey that make the ladies swoon.", in_stock: true, supplier_id: 2, amount: 1}
])
Supplier.create!([
  {name: "Hyrule Merchant", email: "beard.merchant.com", phone_number: "222-222-2222"},
  {name: "Old Man", email: "old.man.com", phone_number: "000-000-0001"}
])
CartedProduct.create!([
  {user_id: 1, product_id: 3, quantity: 1, status: "purchased", order_id: 14},
  {user_id: 1, product_id: 3, quantity: 1, status: "purchased", order_id: 14},
  {user_id: 1, product_id: 2, quantity: 1, status: "purchased", order_id: 14},
  {user_id: 1, product_id: 3, quantity: 4, status: "purchased", order_id: 14},
  {user_id: 1, product_id: 3, quantity: 5, status: "purchased", order_id: 14},
  {user_id: 2, product_id: 5, quantity: 10, status: "purchased", order_id: 15},
  {user_id: 2, product_id: 1, quantity: 3, status: "purchased", order_id: 16},
  {user_id: 2, product_id: 4, quantity: 1000, status: "purchased", order_id: 17},
  {user_id: 2, product_id: 6, quantity: 3, status: "purchased", order_id: 17},
  {user_id: 1, product_id: 3, quantity: nil, status: "removed", order_id: nil},
  {user_id: 1, product_id: 3, quantity: 1, status: "removed", order_id: nil},
  {user_id: 1, product_id: 2, quantity: 4, status: "removed", order_id: nil},
  {user_id: 1, product_id: 2, quantity: 2, status: "removed", order_id: nil},
  {user_id: 1, product_id: 3, quantity: 5, status: "removed", order_id: nil},
  {user_id: 1, product_id: 3, quantity: 5, status: "purchased", order_id: 18},
  {user_id: 1, product_id: 3, quantity: 3, status: "purchased", order_id: 20},
  {user_id: 1, product_id: 3, quantity: 5, status: "purchased", order_id: 22},
  {user_id: 1, product_id: 3, quantity: 1, status: "purchased", order_id: 22},
  {user_id: 1, product_id: 3, quantity: 3, status: "purchased", order_id: 24},
  {user_id: 1, product_id: 3, quantity: 2, status: "purchased", order_id: 25},
  {user_id: 1, product_id: 2, quantity: 4, status: "purchased", order_id: 26}
])
Category.create!([
  {name: "weapon"},
  {name: "armor"},
  {name: "medicine"}
])
Order.create!([
  {user_id: 1, subtotal: "500.0", tax: "45.0", total: "545.0"},
  {user_id: 1, subtotal: "150.0", tax: "13.5", total: "163.5"},
  {user_id: 1, subtotal: "200.0", tax: "18.0", total: "218.0"},
  {user_id: 1, subtotal: "90.0", tax: "8.1", total: "98.1"},
  {user_id: 1, subtotal: "123.0", tax: "213.0", total: "213123.0"},
  {user_id: 1, subtotal: "12312.0", tax: "213.0", total: "21312.0"},
  {user_id: 1, subtotal: "213.0", tax: "123.0", total: "12312.0"},
  {user_id: 1, subtotal: "123.0", tax: "213.0", total: "123.0"},
  {user_id: 1, subtotal: "12312.0", tax: "12312.0", total: "213.0"},
  {user_id: 1, subtotal: "180.0", tax: "16.2", total: "196.2"},
  {user_id: 1, subtotal: "250.0", tax: nil, total: nil},
  {user_id: 1, subtotal: "850.0", tax: "76.5", total: "926.5"},
  {user_id: 1, subtotal: "850.0", tax: "76.5", total: "926.5"},
  {user_id: 1, subtotal: "1350.0", tax: "121.5", total: "1471.5"},
  {user_id: 2, subtotal: "500.0", tax: "45.0", total: "545.0"},
  {user_id: 2, subtotal: "270.0", tax: "24.3", total: "294.3"},
  {user_id: 2, subtotal: "100450.0", tax: "9040.5", total: "109490.5"},
  {user_id: 1, subtotal: "500.0", tax: "45.0", total: "545.0"},
  {user_id: 1, subtotal: "300.0", tax: "27.0", total: "327.0"},
  {user_id: 1, subtotal: "300.0", tax: "27.0", total: "327.0"},
  {user_id: 1, subtotal: "0.0", tax: "0.0", total: "0.0"},
  {user_id: 1, subtotal: "0.0", tax: "0.0", total: "0.0"},
  {user_id: 1, subtotal: "0.0", tax: "0.0", total: "0.0"},
  {user_id: 1, subtotal: "0.0", tax: "0.0", total: "0.0"},
  {user_id: 1, subtotal: "200.0", tax: "18.0", total: "218.0"},
  {user_id: 1, subtotal: "1000.0", tax: "90.0", total: "1090.0"}
])
ProductCategory.create!([
  {product_id: 1, category_id: 3},
  {product_id: 2, category_id: 3},
  {product_id: 3, category_id: 1},
  {product_id: 4, category_id: 1},
  {product_id: 5, category_id: 2},
  {product_id: 6, category_id: 2}
])
