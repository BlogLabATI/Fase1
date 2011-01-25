Given /^an article with the title "([^"]*)"$/ do |arg1|
  @article = Article.create(:title=>arg1, :body=>'default')
end

Given /^an article with the title "([^"]*)" and the content "([^"]*)"$/ do |arg1, arg2|
  @article1 = Article.create(:title=>arg1,:body=>arg2)
end

Given /^there is no article with the title "([^"]*)"$/ do |arg1|
  not Article.find_by_title(arg1)
end

Then /^I should see "([^"]*)" on the articles list$/ do |arg1|
  page.should have_content(arg1)
end

Then /^I should not see "([^"]*)" on the articles list$/ do |arg1|
  page.should_not have_content(arg1)
end

