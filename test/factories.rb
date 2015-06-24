FactoryGirl.define do

	factory :place do
		name "That place"
		address "1221 SW 4th Avenue Portland,OR 97204"
		description "Center of town	"
		association :user
	end

	factory :comment do
		message "I THINK SOMETHING"
		rating "2_stars"
		association :user
		association :place
	end

	factory :user do
		sequence :email do |n|
				"bob#{n}@bob.com"
		end
		password "password"
		password_confirmation "password"
	end
end