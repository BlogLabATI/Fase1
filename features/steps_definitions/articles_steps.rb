Given /^an article with the title "([^"]*)"$/ do |arg1|
  @article1 = Article.create(:title=>arg1)
end

When /^I am on the articles page$/ do
  visit articles_path
end

Then /^I should see "([^"]*)"$/ do |arg1|
  response.should contain(arg1)
end

Given /^an article with the title "([^"]*)" and the content "([^"]*)"$/ do |arg1, arg2|
  @article1 = Article.create(:title=>arg1,:body=>arg2)
end

When /^I follow "([^"]*)"$/ do |arg1|
  click_link(arg1)
end

