<h1 align="center"> Wallet App </h1>

## Description
To further our learning experience we were tasked to build a Rails app that tells us how much money we have right now. Within this assignment we were to build a data table of transaction with edit/create forms with the total amount displayed on the index page.
  
## Goals
Some of the goals were to have a dashboard set up as a controller that can total the money through withdrawals and deposits. This app will also keep track of the total number of transactions and have seperate links to the transactions and new transaction page. I was then able to chastise the user if the account fell below zero.

For further practice I was able to pull the biggest espense ever by using the code below:
```ruby
def self.big_expense
    withdrawals.map{|t| t.amount}.sort.last
end
```
Then have it show me this data in the dashboard display using embedded ruby code in HTML:
```html
<p>Your largest expense was $<%= @big_expense %>!</p>
```
This assignment showed us the benefits of using the scaffold tool in Rails, but as a lesson, scaffold is just a tool and we must understand the concepts and be able to use it efficiently. 
