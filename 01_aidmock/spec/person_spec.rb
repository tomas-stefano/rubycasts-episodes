require 'spec_helper'

describe Person do
  describe '#full_name' do
    it 'should concatenate first and last name with a space' do
      subject.stub(:first_name).and_return('Aparecida')
      subject.stub(:last_name).and_return('Donada')
      subject.full_name.should == 'Aparecida Donada'
    end
  end
end