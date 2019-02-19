class Detail < ApplicationRecord
 has_many :microposts
 before_save { email.downcase! }
 validates :name, presence: true
 VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
 validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness:{ case_sensitive: false }

end