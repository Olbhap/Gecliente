require 'test_helper'

class UsuarioTest < ActiveSupport::TestCase
  test "Un usuario deberia introducir su nombre"  do
  	user = Usuario.new
  	assert !user.save  	

  	assert !user.errors[:nombre].empty?
  end

  test "Un usuario deberia introducir su apellido"  do
  	user = Usuario.new
  	assert !user.save  	

  	assert !user.errors[:apellidos].empty?
  end

  test "Un usuario deberia introducir su nif"  do
  	user = Usuario.new
  	assert !user.save  	

  	assert !user.errors[:nif].empty?
  end

  test "Un usuario deberia tener un nif unico" do

  	user = Usuario.new
  	assert !user.save
  	assert !user.errors[:nif].empty?
  end
end
