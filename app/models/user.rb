class User < ApplicationRecord
    requiere "securerandom"
    has_secure_password

    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: { minimun: 6}
    validates :username, presence: true, uniqueness: true
end
