class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
         
        
        PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
          validates_format_of :password, with: PASSWORD_REGEX
        
          validates :nickname, presence: true     
        
        with_options presence: true, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ } do
          validates :last_name
          validates :first_name
        end
           validates :birthday, presence: true

  has_many :posts
  has_many :messages
         
end
