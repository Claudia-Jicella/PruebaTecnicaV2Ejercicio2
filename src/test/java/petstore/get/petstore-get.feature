Feature: Get pet on Swagger Petstore

  @Get
  Scenario: Get a pet
    * call read("../post/petstore-post.feature@Create")
    Given url "https://petstore.swagger.io" + "/#/pet/" + "petId"
    When method get
    Then status 200