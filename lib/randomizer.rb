module Randomizer

  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def some(num = 5)
      find :all, :order => 'rand()', :offset => (count * rand).to_i, :limit => num
    end

    def one
      find(:all, :order => 'rand()', :offset => (count * rand).to_i, :limit => 1)[0]
    end
  end
end