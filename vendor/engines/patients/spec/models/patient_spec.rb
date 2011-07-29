require 'spec_helper'

describe Patient do

  def reset_patient(options = {})
    @valid_attributes = {
      :id => 1,
      :firstname => "RSpec is great for testing too"
    }

    @patient.destroy! if @patient
    @patient = Patient.create!(@valid_attributes.update(options))
  end

  before(:each) do
    reset_patient
  end

  context "validations" do
    
    it "rejects empty firstname" do
      Patient.new(@valid_attributes.merge(:firstname => "")).should_not be_valid
    end

    it "rejects non unique firstname" do
      # as one gets created before each spec by reset_patient
      Patient.new(@valid_attributes).should_not be_valid
    end
    
  end

end