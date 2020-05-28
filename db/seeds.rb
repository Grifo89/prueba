# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

sexo = ['masculino', 'femenino']
tipo_de_usuario = ['admin', 'usuario_general']

sexo.each {|a| Sexo.create(tipo: a)}
tipo_de_usuario.each {|a| TipoDeUsuario.create(tipo: a)}

Usuario.create([
  { nombre: "uno", apellido: "test", correo: "uno@email.com", telefono: "123456", sexo_id: 1, tipo_de_usuario_id: 2},
  { nombre: "dos", apellido: "test", correo: "dos@email.com", telefono: "123456", sexo_id: 2, tipo_de_usuario_id: 1},
  { nombre: "tres", apellido: "test", correo: "tres@email.com", telefono: "123456", sexo_id: 1, tipo_de_usuario_id: 2},
  { nombre: "cuatro", apellido: "test", correo: "cuatro@email.com", telefono: "123456", sexo_id: 2, tipo_de_usuario_id: 1},
  { nombre: "cinco", apellido: "test", correo: "cinco@email.com", telefono: "123456", sexo_id: 1, tipo_de_usuario_id: 2}
  ])
