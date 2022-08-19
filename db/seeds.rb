# some helper seed functions
require_relative 'seed_functions'

# include all the files in the seed parts folder
Dir[File.dirname(__FILE__) + '/seed_parts/*.rb'].each { |file| require_relative file }

# define the order that the seeds should run
SEED_ORDER = [User, Invite, Event, Participant, Bill, Expense].freeze

SEED_ORDER.each do |model|
  Seed.populate(model) { send("seed_#{model.to_s.downcase}s") }
end

puts "\nSeeding done! 🚀".green
