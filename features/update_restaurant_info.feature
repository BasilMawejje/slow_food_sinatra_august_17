Feature: update the restaurant info
As an owner
In order to update the restaurant's info
I would like to add or change restaurant's description

Background:

Given the following users exist:
  | username | password |
  | admin    | admin    |

Given I have the following restaurant:
  | name      | description               |
  | FoodTrack | We sell awesome food here |

And I log in as an admin

Scenario: Admin updates resturant info
  Given I visit the protected page
  When I click on "Edit info"
  And I fill in "Description" with "The best food from Iceland, Kyrgyzstan, Italy, South Africa and Sweden."
  And I click on "Submit"
  Then I should see the message "You have successfully updated the restaurant's description"
  And I should see the message "The best food from Iceland, Kyrgyzstan, Italy, South Africa and Sweden."

Scenario: Admin creates a dish
  Given I visit the protected page
  When I click on "Edit info"
  And I fill in "Name" with "Oysters"
  And I fill in "Dish description" with "Sea food"
  And I fill in "Price" with "150"
  And I fill in "Category" with "Main"
  And I click on "Add"
  Then I should see a message saying "Successfully added a new dish"
