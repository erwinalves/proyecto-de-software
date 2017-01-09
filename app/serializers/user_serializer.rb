class UserSerializer < ActiveModel::Serializer
  attributes :id, :nombre, :apellido, :email, :password
end
