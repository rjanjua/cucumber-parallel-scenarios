Feature: thing

Scenario: first
Given this 1
When that 1
Then everything 1

Scenario: Second
Given this 2
When that 2
Then everything 2

Scenario: Third
Given this 3
When that 3
Then everything 4

Scenario Outline: Fourth
Given this <x>
When that <x>
Then everything <x>
Examples:
|x|
|4|
|5|
|6|
