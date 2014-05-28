require 'spec_helper'

describe Checklist do
  
  describe '#total_budget' do
    it 'returns the users established total budget' do
      subject.total_budget = 6900
      subject.total_budget.should == 6900
    end
  end
end