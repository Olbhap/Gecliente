class Usuario < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :facturas, dependent: :destroy
  has_many :clientes, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :nombre, presence: true
  validates :apellidos, presence: true
  validates :nif, presence: true,
  				 uniqueness: true,
  				 :valid_spanish_vat => true


  #Devuelve el nombre completo del usuario
  def full_name
  	nombre + " " + apellidos
  end



end
