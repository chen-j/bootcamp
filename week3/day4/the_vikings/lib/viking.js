class Viking {
	constructor(name,health,strength) {
		this.name = name;
		this.health = health;
		this.strength = strength;
	}

	attack(anotherViking){
		return anotherViking.health - this.strength;
	}
}

module.exports = Viking;
