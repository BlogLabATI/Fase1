Given /^an article with the title "([^"]*)" And an article with the title "([^"]*)"$/ do |arg1, arg2|
  @article1 = Article.create
  @article2 = Article.create
  @article1.title = arg1
  @article2.title = arg2
end

When /^I am on the articles page$/ do
  visit articles_path
end

Then /^I should see "([^"]*)" And I should see "([^"]*)"$/ do |arg1, arg2|
  @article1.title.should == arg1
  @article2.title.should == arg2
end

Given /^an article with the title "([^"]*)" and the content "([^"]*)"$/ do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

When /^I am on the articles page And I follow "([^"]*)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then /^I should see "([^"]*)" And I should see "([^"]*)" And I should see "([^"]*)"$/ do |arg1, arg2, arg3|
  pending # express the regexp above with the code you wish you had
end
