Feature: Game start
  Scenario: The game is ready to start
    Given The dealer is ready
    When a player chooses to play
    Then the player will be prompted to place a wager

  Scenario: Player decides to play
    Given The wager is £100 to play
    And the player has £1000
    When the player bets £100
    Then the players balance will be £900
