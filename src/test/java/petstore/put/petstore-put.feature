Feature: Put pet on Swagger Petstore

  @Update
  Scenario: Put a pet
    * call read("../get/petstore-get.feature@Get")
    Given url "https://petstore.swagger.io" + "/#/pet/" + "petId"
    And request {"name": "Mariana","status":"sold"}
    When method put
    Then status 405
    And def status = $.status