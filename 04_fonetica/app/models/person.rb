class Person < ActiveRecord::Base
  scope :fonetica, lambda { |name|
    where(arel_table[:fonetica].matches("#{name.foneticalize}%"))
  }

  before_save :foneticalize

  protected

  def foneticalize
    self.fonetica = name.foneticalize
  end
end
