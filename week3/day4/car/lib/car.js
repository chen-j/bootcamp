class Car {
	constructor(model, noise) {
		this.model = model;
		this.noise = noise;
		this.nWheels = 4;
	}

	sound (){
		console.log(`A ${this.model} goes ${this.noise}.`);
	}

}

module.exports = Car;
