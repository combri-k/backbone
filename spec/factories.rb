FactoryGirl.define do
  factory :picture do
    title "Phony Picture"
    slug { title.parameterize }
  end
end
