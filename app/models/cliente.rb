class Cliente < ActiveRecord::Base
   belongs_to :usuario

  validates :nombre, presence: true
  validates :apellidos, presence: true
  validates :nif, presence: true,
            uniqueness: true,
            :valid_spanish_vat => true


  #Devuelve el nombre completo del cliente
  def full_name
   nombre + " " + apellidos
  end
end
