require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "selectors"))

Given /^(?:|I )am on (.+)$/ do |page_name|
#   visit path_to(page_name)
    pending
end

When /^(?:|I )press "([^"]*)"$/ do |button|
#   click_button(button)
    pending
end

Then /^(?:|I )should be on (.+)$/ do |page_name|
#   current_path = URI.parse(current_url).path
#   if current_path.respond_to? :should
#     current_path.should == path_to(page_name)
#   else
#     assert_equal path_to(page_name), current_path
#   end
    pending
end

When /^(?:|I )fill out the "([^"]*)" field with "([^"]*)"$/ do |field, value|
#   fill_in(field, :with => value)
    pending
end

When /^(?:|I )press "([^"]*)"$/ do |button|
#   click_button(button)
pending
end

Then /^(?:|I )should see \/([^\/]*)\/$/ do |regexp|
#   regexp = Regexp.new(regexp)

#   if page.respond_to? :should
#     page.should have_xpath('//*', :text => regexp)
#   else
#     assert page.has_xpath?('//*', :text => regexp)
#   end
    pending
end
