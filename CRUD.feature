Feature: CRUD


Scenario: Get an existing booking
    Given I have a valid booking ID for GET
    When I send a GET request to the "/booking" endpoint
    Then the response status code for GET should be 200

Scenario: Create a new booking
    Given I have a valid booking information
    When I send a POST request to the "/booking" endpoint
    Then the response status code for POST should be 200

Scenario: Update a booking
    Given I have a valid ID for update
    And I have an updated booking information
    When I send a PUT request to the "/booking/{id}" endpoint
    Then the response status code for PUT should be 200

Scenario: Delete a booking
    Given I have a valid ID for delete
    When I send a DELETE request to the "/booking/{id}" endpoint
    Then the response status code for DELETE should be 201
