def seed_expenses
  Bill.all.each do |bill|
    rand(1..5).times do
      Expense.create!(
        name: Faker::Food.dish,
        amount: rand(5.0..100.0).round(2),
        bill:
      )
    end
  end
end
