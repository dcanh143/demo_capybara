Given('I visit to {string}') do |string|
  visit string
end

When('I search for an {string}') do |string|
  sleep 2
  find('#twotabsearchtextbox').click
  find('#twotabsearchtextbox').set(string)
  find('#nav-search-submit-button').click
end

Then('I click to the first results of {string} and I visit {string}') do |string, string2|
  find('[cel_widget_id="MAIN-SEARCH_RESULTS-4"] .a-size-mini').click
  visit string2
end

Then('I should see matching information for {string}') do |string|
  expect(find('#productTitle').text).to eql('Apple iPhone 14 (128 GB) - Midnight')
end

