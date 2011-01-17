Given /^an article with the title "([^"]*)" And an article with the title "([^"]*)"$/ do |arg1, arg2|
  @article1 = Article.create(:title=>arg1)
  @article2 = Article.create(:title=>arg2)
end

When /^I am on the articles page$/ do
  visit articles_path
end

Then /^I should see "([^"]*)" And I should see "([^"]*)"$/ do |arg1, arg2|
  @article1.title.should == arg1
  @article2.title.should == arg2
end

Given /^an article with the title "([^"]*)" And the content "([^"]*)"$/ do |arg1, arg2|
  @article1 = Article.create(:title=>arg1,:body=>arg2)
end

When /^I am on the articles page And I follow "([^"]*)"$/ do |arg1|
  visit articles_path
  click_link arg1
end

Then /^I should see "([^"]*)" And I should see "([^"]*)" And I should see "([^"]*)"$/ do |arg1, arg2, arg3|
  visit articles_path
  click_link arg1
  response.should contain(arg1)
  response.should contain(arg2)
  response.should contain(arg3)
end
