Feature: Game start
  Scenario: Player sits at empty table
    Given There are no players in the game
    When a player chooses to play
    Then the player will be prompted to place a wager
