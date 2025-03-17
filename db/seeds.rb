Supplier.create(name: "JumboCorp", email: "jc@jc.com", phone_number: "(231) 555-4040")
Supplier.create(name: "Yarmouth Industries", email: "yar@gmail.com", phone_number: "(231) 555-5050")

Product.create(supplier_id: 1, name: "circus peanuts", price: 5, description: "one pound of circus peanuts")
Product.create(supplier_id: 1, name: "garden gnome", price: 33,  description: "gnome lounging in a bath")
Product.create(supplier_id: 2, name: "umbrella", price: 12, description: "red umbrella")

Image.create(product_id: 1, url: "https://crazyoutletcandy.com/cdn/shop/files/61YQ2ZvZ8eL._SL1126_1200x1200.jpg?v=1725981736")
Image.create(product_id: 1, url: "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcQ42Se-vhy2fDwHHv2yoYEPzEKnq6cktzClmmHTcnXruQ6R35_srl3D4CIdA3CRYcilzUdcSGfE9IMXFWL9b6ikvHyhhaujFnaQHn9lf2HEFBYl-jVRDacAh_gcCnbJmWLKsMemFQ&usqp=CAc")

Image.create(product_id: 2, url: "https://www.bitsandpieces.com/cdn/shop/files/41351_1220x1220_crop_center.webp?v=1712756640")

Image.create(product_id: 3, url: "https://m.media-amazon.com/images/I/61tQWsd2faL._AC_UY350_.jpg")
Image.create(product_id: 3, url: "https://republiclifestyle.co.za/wp-content/uploads/2022/06/rain-umbrellas-all-colours-and-styles3.jpg")