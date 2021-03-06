Feature: bumping version

  Scenario: major version
    Given a working directory
    And I use the existing project "existing-project-with-version" as a template
    And "VERSION.yml" contains hash "{ :major => 1, :minor => 5, :patch => 3}"
    When I run "rake version:bump:major" in "existing-project-with-version"
    Then the process should exit cleanly
    And the updated version, 2.0.0, is displayed

  Scenario: minor version
    Given a working directory
    And I use the existing project "existing-project-with-version" as a template
    And "VERSION.yml" contains hash "{ :major => 1, :minor => 5, :patch => 3}"
    When I run "rake version:bump:minor" in "existing-project-with-version"
    Then the process should exit cleanly
    And the updated version, 1.6.0, is displayed

  Scenario: patch version
    Given a working directory
    And I use the existing project "existing-project-with-version" as a template
    And "VERSION.yml" contains hash "{ :major => 1, :minor => 5, :patch => 3}"
    When I run "rake version:bump:patch" in "existing-project-with-version"
    Then the process should exit cleanly
    And the updated version, 1.5.4, is displayed

  Scenario: arbitrary version
    Given a working directory
    And I use the existing project "existing-project-with-version" as a template
    And "VERSION.yml" contains hash "{ :major => 1, :minor => 5, :patch => 3}"
    When I run "rake version:write MAJOR=3 MINOR=7 PATCH=1" in "existing-project-with-version"
    Then the process should exit cleanly
    And the updated version, 3.7.1, is displayed
