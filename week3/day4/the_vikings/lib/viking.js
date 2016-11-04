class Viking {
	constructor(name,health,strength) {
		this.name = name;
		this.health = health;
		this.strength = strength;
	}

	attack(opponent){
		return opponent.health - this.strength;
	}
}

module.exports = Viking;
