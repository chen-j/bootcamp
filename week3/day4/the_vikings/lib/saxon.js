class Saxon {
	constructor() {
		this.health = Math.round(Math.random*10);
		this.strength = Math.round(Math.random*5);
	}

	attack(viking){
		return viking.health - this.strength;
	}
};

module.exports = Saxon;
