Given /^I have no patients$/ do
  Patient.delete_all
end

Given /^I (only )?have patients titled "?([^\"]*)"?$/ do |only, titles|
  Patient.delete_all if only
  titles.split(', ').each do |title|
    Patient.create(:firstname => title)
  end
end

Then /^I should have ([0-9]+) patients?$/ do |count|
  Patient.count.should == count.to_i
end
