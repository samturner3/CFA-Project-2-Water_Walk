User.create!([
  {email: "sam@sam.com", encrypted_password: "$2a$11$JalPtjClY9/uVY36MfqDJuHZ2E2Qb/uKGv6Auq2MwoX8CGs9IPXkW", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2017-04-24 04:11:53", last_sign_in_at: "2017-04-24 04:11:53", current_sign_in_ip: "::1", last_sign_in_ip: "::1", verified_status: false, verified_at: nil, verified_by_admin_user_id: nil, lat: nil, long: nil, three_words: nil, description: nil, admin: false, supplier: false, supplier_id: nil, address: nil},
  {email: "sam1@sam.com", encrypted_password: "$2a$11$rdRaPrba8M7wpc2NvR4wXun9sck.16NfNlemoQSTsqFGyN5jOlabu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 3, current_sign_in_at: "2017-04-25 08:35:56", last_sign_in_at: "2017-04-24 05:24:41", current_sign_in_ip: "::1", last_sign_in_ip: "::1", verified_status: false, verified_at: nil, verified_by_admin_user_id: nil, lat: "-33.94086646709856", long: "151.26202390737535", three_words: nil, description: nil, admin: false, supplier: false, supplier_id: nil, address: nil},
  {email: "sam2@sam.com", encrypted_password: "$2a$11$XQTid4.fk4YhHIGoQiCl9OKOklYjXJhcOpY5HfbNe43cHVNrtq1Wi", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2017-04-25 09:07:52", last_sign_in_at: "2017-04-24 05:09:51", current_sign_in_ip: "::1", last_sign_in_ip: "::1", verified_status: false, verified_at: nil, verified_by_admin_user_id: nil, lat: "-23.92601303302119", long: "127.001953125", three_words: nil, description: nil, admin: true, supplier: true, supplier_id: 1, address: nil}
])
Location.create!([
  {name: "Coffs Harbour", three_words: "acting.laws.dose", supplier_id: 1, lat: -35.301463, long: 149.061707, address: "Boundary Rd, Molonglo Valley ACT 2611, Australia"},
  {name: "Afder, Ethiopia", three_words: "resettling.courtships.tiptoe", supplier_id: 1, lat: 6.1182774958597, long: 42.4811859130859, address: "Afder, Ethiopia"},
  {name: "Middle Earth", three_words: "italics.estimates.luminaries", supplier_id: 2, lat: 33.14002, long: 84.42806, address: "Unnamed Road, Gaize Xian, Ali Diqu, Xizang Zizhiqu, China"},
  {name: "Rural Mauritania", three_words: "bumpy.autoworkers.wriggle", supplier_id: 2, lat: 22.6789061175095, long: -12.710454761982, address: "N1, Fderik, Mauritania"},
  {name: "Sydney", three_words: "imposing.hosting.unto", supplier_id: 3, lat: -31.7629771891267, long: 146.867491549782, address: "Unnamed Road, Honeybugle NSW 2825, Australia"},
  {name: "NaPopular Food Store", three_words: "martyr.repress.pinstripes", supplier_id: 1, lat: -7.8691777694272, long: 39.3647833282471, address: "Bandarini Road, Tanzania"},
  {name: "TAZZIE", three_words: "rots.westerners.landlocked", supplier_id: 1, lat: -42.0156725142931, long: 147.15405325, address: "Unnamed Road, Lake Sorell TAS 7030, Australia"}
])
Resource.create!([
  {type_of: "Food", stock: 100, units: "Pounds", location_id: 1},
  {type_of: "water", stock: 100, units: "L", location_id: 1},
  {type_of: "Rice", stock: 2, units: "Kgs", location_id: 2},
  {type_of: "Water", stock: 100, units: "L", location_id: 2},
  {type_of: "Books", stock: 20, units: "Books", location_id: 9},
  {type_of: "Water", stock: 20, units: "L", location_id: 5},
  {type_of: "Beef", stock: 10, units: "kgs", location_id: 4}
])
Supplier.create!([
  {name: "OxFam", avatar: "oxfarm.png"},
  {name: "World Vision", avatar: "1200px-World_Vision_Logo.svg.png"},
  {name: "Unicef", avatar: "UNICEF.jpeg"}
])
