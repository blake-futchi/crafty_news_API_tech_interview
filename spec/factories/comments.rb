FactoryBot.define do
  factory :comment do
    body { "Your comment has been created" }
    association :article, factory: :article
  end
end
