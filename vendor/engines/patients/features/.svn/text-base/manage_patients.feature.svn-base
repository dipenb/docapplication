@patients
Feature: Patients
  In order to have patients on my website
  As an administrator
  I want to manage patients

  Background:
    Given I am a logged in refinery user
    And I have no patients

  @patients-list @list
  Scenario: Patients List
   Given I have patients titled UniqueTitleOne, UniqueTitleTwo
   When I go to the list of patients
   Then I should see "UniqueTitleOne"
   And I should see "UniqueTitleTwo"

  @patients-valid @valid
  Scenario: Create Valid Patient
    When I go to the list of patients
    And I follow "Add New Patient"
    And I fill in "Firstname" with "This is a test of the first string field"
    And I press "Save"
    Then I should see "'This is a test of the first string field' was successfully added."
    And I should have 1 patient

  @patients-invalid @invalid
  Scenario: Create Invalid Patient (without firstname)
    When I go to the list of patients
    And I follow "Add New Patient"
    And I press "Save"
    Then I should see "Firstname can't be blank"
    And I should have 0 patients

  @patients-edit @edit
  Scenario: Edit Existing Patient
    Given I have patients titled "A firstname"
    When I go to the list of patients
    And I follow "Edit this patient" within ".actions"
    Then I fill in "Firstname" with "A different firstname"
    And I press "Save"
    Then I should see "'A different firstname' was successfully updated."
    And I should be on the list of patients
    And I should not see "A firstname"

  @patients-duplicate @duplicate
  Scenario: Create Duplicate Patient
    Given I only have patients titled UniqueTitleOne, UniqueTitleTwo
    When I go to the list of patients
    And I follow "Add New Patient"
    And I fill in "Firstname" with "UniqueTitleTwo"
    And I press "Save"
    Then I should see "There were problems"
    And I should have 2 patients

  @patients-delete @delete
  Scenario: Delete Patient
    Given I only have patients titled UniqueTitleOne
    When I go to the list of patients
    And I follow "Remove this patient forever"
    Then I should see "'UniqueTitleOne' was successfully removed."
    And I should have 0 patients
 