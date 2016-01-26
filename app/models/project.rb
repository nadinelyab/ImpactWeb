class Project < ActiveRecord::Base
	has_and_belongs_to_many :users

	validates :name, :description, :target_area, presence: true
end
