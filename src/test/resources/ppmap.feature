Feature: Lets go to ppmap pages

 @Happy
 Scenario: user goes to sign up page
   Given user navigates "url"
   When user clicks "Log_In"
   Then user should see "log_In_Page"

  @Happy
  Scenario: user goes to sign up page
    Given user navigates "url"
    When user enters "name" to "Full_Name" area
    And user clicks "Title"
    And user clicks "Mrs"
    And user enters "email" to "Email" area
    And user enters "password" to "Strong_Password" area
    And user enters "companyName" to "Official_Company_Name" area
    And user enters "tradeName" to "Trade_Name" area
    And user clicks "Buyer"
    And user clicks "Merchant"
    And user clicks "Sign up"
    Then user should see "Thank_you_pages"



    @Happy
    Scenario: user goes to sign up page
      Given user navigates "url"
      When user enters "name" to "Full_Name" area
      And user clicks "Title"
      And user clicks "Mrs"
      And user enters "email" to "Email" area
      And user enters "password" to "Strong_Password" area
      And user enters "companyName" to "Official_Company_Name" area
      And user enters "tradeName" to "Trade_Name" area
      And user clicks "Mill"
      And user clicks "Sign up"
      Then user should see "Thank_you_pages"



  @Sad
  Scenario Outline: user enters wrong name to sign up page
    Given user navigates "url"
    When user enters "<name>" to "Full_Name" area
    Then user should see "<error massage>"

    Examples:
      | name             | error massage |
      | null             | error-1       |
      | not alphanumeric | error-2       |
      | 51 characters    | error-3       |

  @Sad
  Scenario: user forget to enter Title button to sign up page
    Given user navigates "url"
    When user enters "name" to "Full_Name" area
    And user enters "email" to "Email" area
    And user enters "password" to "Strong_Password" area
    And user enters "companyName" to "Official_Company_Name" area
    And user enters "tradeName" to "Trade_Name" area
    And user clicks "Buyer"
    And user clicks "Merchant"
    And user clicks "Sign_up"
    Then user should see "error_massage"


  @Sad
  Scenario Outline: user enters wrong email to sign up page
    Given user navigates "url"
    When user enters "name" to "Full_Name" area
    And user clicks "Title"
    And user clicks "Mrs"
    And user enters "<email>" to "Email" area
    Then user should see "<error massage>"

    Examples:
      | email         | error massage |
      | null          | error-1       |
      | invalid email | error-2       |
      | current user  | error-3       |

  @Sad
  Scenario Outline: user enters wrong password to sign up page
    Given user navigates "url"
    When user enters "name" to "Full_Name" area
    And user clicks "Title"
    And user clicks "Mrs"
    And user enters "email" to "Email" area
    And user enters "<password>" to "Strong_Password" area
    Then user should see "<error_massage>"

    Examples:
      | password               | error_massage |
      | null                   | error-1       |
      | less than 8 characters | error-2       |

  @Sad
  Scenario Outline: user enters wrong company name to sign up page
    Given user navigates "url"
    When user enters "name" to "Full_Name" area
    And user clicks "Title"
    And user clicks "Mrs"
    And user enters "email" to "Email" area
    And user enters "password" to "Strong_Password" area
    And user enters "<companyName>" to "Official_Company_Name" area
    Then user should see "<error_massage>"

    Examples:
      | companyName      | error_massage |
      | null             | error-1       |
      | not alphanumeric | error-2       |
      | 51 characters    | error-3       |

  @Sad
  Scenario Outline: user enters wrong trade name to sign up page
    Given user navigates "url"
    When user enters "name" to "Full_Name" area
    And user clicks "Title"
    And user clicks "Mrs"
    And user enters "email" to "Email" area
    And user enters "password" to "Strong_Password" area
    And user enters "companyName" to "Official_Company_Name" area
    And user enters "<trade name>" to "Trade_Name" area
    Then user should see "<error_massage>"

    Examples:
      | trade name       | error_massage |
      | not alphanumeric | error-2       |
      | 51 characters    | error-3       |

    @Sad
    Scenario: user forget to click Who are you buttons to sign up page
      Given user navigates "url"
      When user enters "name" to "Full_Name" area
      And user clicks "Title"
      And user clicks "Mrs"
      And user enters "email" to "Email" area
      And user enters "password" to "Strong_Password" area
      And user enters "companyName" to "Official_Company_Name" area
      And user enters "tradeName" to "Trade_Name" area
      And user clicks "Sign_up"
      Then user should see "error_massage"









