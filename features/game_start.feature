Feature: Game start
  Scenario: Player sits at empty table
    Given There are no players in the game
    When a player chooses to play
    Then the player will be prompted to place a wager

  Scenario: Player decides to play
    Given The wager is £100 to play
    When the player has £1000
    Then take away the wager away from the player's balance
