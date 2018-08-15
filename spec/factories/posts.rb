FactoryBot.define do

  factory :post do
    date Date.today
    rationale "Some rationale"
    overtime_request 3.5
    user
  end

  factory :second_post, class: "Post" do
    date Date.yesterday
    rationale "Some more content"
    overtime_request 0.5
    user
  end

  factory :post_from_other_user, class: "Post" do
    date Date.yesterday
    rationale "Some more other content"
    non_authorized user
  end
end