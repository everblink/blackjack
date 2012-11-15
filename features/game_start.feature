Feature: Game start
  Scenario: Player sits at empty table
    Given There are no players in the game
    When a player chooses to play
    Then the player will be prompted to place a wager

  Scenario: Player decides to play
    Given The wager is £100 to play
    And the player has £1000
    When the player bets £100
    Then the players balance will be £900
