Feature: Get a pet update


  Scenario: Get update

* call read("../put/petstore-put.feature@Update")

Given url "https://petstore.swagger.io" + "/#/pet/" + "status"
When method get
Then status 200