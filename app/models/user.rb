class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, :age, :country, :timezone, :skype_name, :gender, 
  :lastname, presence: true

  has_and_belongs_to_many :projects
end
