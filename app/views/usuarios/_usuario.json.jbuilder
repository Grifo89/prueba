json.extract! usuario, :id, :nombre, :apellido, :correo, :telefono, :sexo_id, :tipo_de_usuario_id, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
