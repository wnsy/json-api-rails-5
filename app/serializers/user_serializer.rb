class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email

  # def name
  #   names = User.name.split(" ")
  #   "#{names[0].first}. #{names[1]}"
  # end
end
