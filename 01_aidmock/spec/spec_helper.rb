require 'rspec'
require 'person'
require 'aidmock'

RSpec.configure do |config|
  config.before :all do
    Aidmock.setup! # it will do any nescessary setup, like extending your framework mocks
  end
  
  config.after :each do
    Aidmock.verify! # it will verify created mocks after each spec
  end
end