class Usuario < ApplicationRecord
  belongs_to :sexo
  belongs_to :tipo_de_usuario
  before_save { self.correo = correo.downcase }

  validates :nombre, presence: true, length: { maximum: 50 }
  validates :apellido, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :correo, presence: true, length: { maximum: 255 },
                     format: { with: VALID_EMAIL_REGEX },
                     uniqueness: { case_sensitive: false }
  VALID_PHONE_REGEX = /\d+/i
  validates :telefono, presence: true, length: { maximum: 10},
                      format: { with: VALID_PHONE_REGEX }
end
