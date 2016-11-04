"use strict";

const Viking = require('./lib/viking.js');
const pitFight = require('./lib/pitFight.js');
const saxon = require('./lib/saxon.js');
const war = require('./lib/war.js');

var erik = new Viking("Erik", 22, 3);
var hans = new Viking("Hans", 18, 4);

var pitbrawl = new pitFight(erik, hans);

pitbrawl.fight();
