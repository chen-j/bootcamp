class pitFight {
	constructor(vikingOne, vikingTwo) {
		this.vikingOne = vikingOne;
		this.vikingTwo = vikingTwo;
	}

	fight(){
		var v1Health = this.vikingOne.health;
		var v2Health = this.vikingTwo.health;
		var v1Name   = this.vikingOne.name;
		var v2Name   = this.vikingTwo.name;


		while (v1Health > 1 & v2Health > 1) {

			console.log(`Health: ${v1Name}: ${v1Health} || ${v2Name}: ${v2Health}`);
			v2Health = this.vikingOne.attack(this.vikingTwo);
			this.vikingTwo.health = v2Health;
			v1Health = this.vikingTwo.attack(this.vikingOne);
			this.vikingOne.health = v1Health;
		}

		console.log(`Okay ${this.vikingOne.name} and ${this.vikingOne.name} drill is done boys.`);
	}

}

module.exports = pitFight;
