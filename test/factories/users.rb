FactoryGirl.define do
  factory :user do
    email "test@email.com"
    salt (salt = "asdasdastr4325234324sdfds")
    crypted_password Sorcery::CryptoProviders::BCrypt.encrypt("secret", salt)
    username "ForestBeam"
    bio "I am an experienced camper and I love the outdoors."
  end
end
