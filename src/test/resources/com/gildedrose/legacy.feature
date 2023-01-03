Feature: Gilded Rose behaviour of the legacy code

// Example of a scenario
Scenario: Aged Brie increases in quality the older it gets
	Given an item named "Aged Brie" with quality 9 and which has to be sold in 11 days
	When a day has passed
	Then it has to be sold in 10 days
	And its quality is 10


Scenario: Aged Brie increases in quality the older it gets but not over 50
	Given an item named "Aged Brie" with quality 50 and which has to be sold in 11 days
	When a day has passed
	Then it has to be sold in 10 days
	And its quality is 50

Scenario: +5 Dexterity Vest decreases in quality the older it is
	Given an item named "+5 Dexterity Vest" with quality 50 and which has to be sold in 10 days
	When a day has passed
	Then it has to be sold in 9 days
	And its quality is 49

Scenario: Elixir of the Mongoose decreases in quality the older it is but not under 0
	Given an item named "Elixir of the Mongoose" with quality 1 and which has to be sold in 10 days
	When a day has passed
	Then it has to be sold in 9 days
	And its quality is 0
	When a day has passed
	And its quality is 0

Scenario: Sulfuras does not decrease in quality and doest have to be sold
	Given an item named "Sulfuras, Hand of Ragnaros" with quality 80 and which has to be sold in 10 days
	When a day has passed
	Then it has to be sold in 10 days
	And its quality is 80

Scenario: Backstage goes up in quality as it ages - special cases
	Given an item named "Backstage passes to a TAFKAL80ETC concert" with quality 10 and which has to be sold in 6 days
	When a day has passed
	Then it has to be sold in 5 days
	And its quality is 12
	When a day has passed
	Then it has to be sold in 4 days
	And its quality is 15
	When a day has passed
	When a day has passed
	When a day has passed
	When a day has passed
	Then it has to be sold in 0 days
	And its quality is 27
	When a day has passed
	Then it has to be sold in -1 days
	And its quality is 0

Scenario: Backstage goes up in quality as it ages - norma
	Given an item named "Backstage passes to a TAFKAL80ETC concert" with quality 10 and which has to be sold in 25 days
	When a day has passed
	Then it has to be sold in 24 days
	And its quality is 11



	Scenario: Dexterity Vest does decreases in quality even after is has passed its selling date
	Given an item named "+5 Dexterity Vest" with quality 5 and which has to be sold in 1 days
	When a day has passed
	Then it has to be sold in 0 days
	And its quality is 4
	When a day has passed
	Then it has to be sold in -1 days
	And its quality is 2

Scenario: Aged Brie increases in quality the older after it has to be sold
	Given an item named "Aged Brie" with quality 25 and which has to be sold in 1 days
	When a day has passed
	Then it has to be sold in 0 days
	And its quality is 26
	When a day has passed
	Then it has to be sold in -1 days
	And its quality is 28

Scenario: Conjured Mana Cake decreases in quality 2 times more than others
	Given an item named "Conjured Mana Cake" with quality 10 and which has to be sold in 1 days
	When a day has passed
	Then it has to be sold in 0 days
	And its quality is 8
	When a day has passed
	Then it has to be sold in -1 days
	And its quality is 4
