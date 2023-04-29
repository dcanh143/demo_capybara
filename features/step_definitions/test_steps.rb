Given('I visit {string}') do |string|
  visit string
end

When('I search for {string}') do |string|
  sleep 2
  find('#twotabsearchtextbox').click
  find('#twotabsearchtextbox').set(string)
  find('#nav-search-submit-button').click
end

Then('I should see search results for {string}') do |string|
  expect(find('[cel_widget_id="MAIN-SEARCH_RESULTS-4"] .a-size-mini').text).to eql("Apple iPhone 14 (128 GB) - Midnight")
end

