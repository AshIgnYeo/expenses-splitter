class String
  def red;       "\e[31m#{self}\e[0m" end
  def green;     "\e[32m#{self}\e[0m" end
  def blue;      "\e[34m#{self}\e[0m" end
  def magenta;   "\e[35m#{self}\e[0m" end
  def cyan;      "\e[36m#{self}\e[0m" end

  def bold;      "\e[1m#{self}\e[22m" end
  def italic;    "\e[3m#{self}\e[23m" end
  def underline; "\e[4m#{self}\e[24m" end
end

class Seed
  def self.populate(model)
    display_name(model)
    clear_previous(model)

    seed_start if block_given?
    yield if block_given?
    seed_end if block_given?
  end

  def self.display_name(model)
    puts "\n"
    puts model.to_s.magenta
  end

  def self.clear_previous(model)
    print "   Clearing old #{model}s: "
    model.destroy_all
    puts "Done".green
  end

  def self.seed_start
    print '   Seeding new Data: '
  end

  def self.seed_end
    puts 'Done'.green
  end
end
