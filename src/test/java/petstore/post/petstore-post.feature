Feature: Post pet on Swagger Petstore

  @Create
  Scenario: POSt a pet
    Given url "https://petstore.swagger.io" + "/#/pet/" + "addPet"
    And request {"category":"cat","name": "Natacha", "status": "available"}
    When method post
    Then status 405
    And def petId = $.id