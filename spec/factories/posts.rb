FactoryBot.define do

  factory :post do
    date Date.today
    rationale "Some rationale"
    user
  end

  factory :second_post, class: "Post" do
    date Date.yesterday
    rationale "Some more content"
    user
  end

  factory :post_from_other_user, class: "Post" do
    date Date.yesterday
    rationale "Some more other content"
    non_authorized user
  end
end