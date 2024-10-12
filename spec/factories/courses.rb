FactoryBot.define do
  factory :course do
    title { "curso ruby" }
    description { "curso fantastico de ruby" }
    start_at { Date.today }
    end_at { 1.week.from_now }
  end
end
