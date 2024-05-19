Feature: Get pet on Swagger Petstore

  Scenario: Get a pet
    Given url "https://petstore.swagger.io" + "/#/pet/" + "findPetsByStatus"
    When method get
    Then status 200