# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:

#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user1 = User.create([{email: 'prueba1@hotmail.com'},{encrypted_password: '123456'}])
user2 = User.create([{email: 'prueba2@hotmail.com'},{encrypted_password: '1234567'}])
user3 = User.create([{email: 'prueba3@hotmail.com'},{encrypted_password: '12345678'}])
person1 = Person.create([{user_id: user1.id }.{nombre: 'Victor' },{rol: 1},{telefono: 512345}])
person2 = Person.create([{user_id: user2.id }.{nombre: 'Erwin Alves' },{rol: 2},{telefono: 5125}])
person3 = Person.create([{user_id: user3.id }.{nombre: 'Sergio Olivares Eliminado' },{rol: 3},{telefono: 123}])
boleta1 = Ticket.create([{codigo_boleta: 123},{monto: 1234},{tipo_pago: 1}])
boleta2 = Ticket.create([{codigo_boleta: 321},{monto: 123413},{tipo_pago: 2}])
boleta3 = Ticket.create([{codigo_boleta: 312},{monto: 12343},{tipo_pago: 3}])
factura1 = Invoices.create([{tipo_documento: 1},{valor_neto: 123},{folio: 00000123}])
factura2 = Invoices.create([{tipo_documento: 2},{valor_neto: 3213},{folio: 00000124}])
factura3 = Invoices.create([{tipo_documento: 3},{valor_neto: 113},{folio: 00000125}])
producto1 = Product.create([{codigo_producto: 111},{stock_actual:10},{stock_minimo:3},{nombre_producto:'duraznos'},{precio: 500}])
producto2 = Product.create([{codigo_producto: 112},{stock_actual:50},{stock_minimo:10},{nombre_producto:'manzanas'},{precio: 300}])
producto3 = Product.create([{codigo_producto: 113},{stock_actual:100},{stock_minimo:6},{nombre_producto:'peras'},{precio: 195}])
carro1 = Carro.create([{product_id:producto1.id},{ticket_id:boleta1.id},{invoices_id: nil},{cantidad_producto: 5}])
carro2 = Carro.create([{product_id:producto2.id},{ticket_id:boleta2.id},{invoices_id: nil},{cantidad_producto: 1}])
carro3 = Carro.create([{product_id:producto3.id},{ticket_id:boleta3.id},{invoices_id: nil},{cantidad_producto: 3}])
carro4 = Carro.create([{product_id:producto1.id},{ticket_id:nil},{invoices_id: factura1.id},{cantidad_producto: 60}])
carro5 = Carro.create([{product_id:producto2.id},{ticket_id:nil},{invoices_id: factura2.id},{cantidad_producto: 110}])
carro6 = Carro.create([{product_id:producto3.id},{ticket_id:nil},{invoices_id: factura3.id},{cantidad_producto: 60}])


  