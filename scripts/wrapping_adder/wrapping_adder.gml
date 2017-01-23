///@description Wrapping adder with lower/upper bounds
///@param addToMe argument0
///@param addAmt argument1
///@param lowerBound argument2
///@param upperBound argument3

var addToMe = argument0;
var addAmt = argument1;
var lowerBound = argument2;
var upperBound = argument3;
var addAmtSign = sign(addAmt);

for(var i = 0; i < abs(addAmt); i++) {
  addToMe = addToMe + (1 * addAmtSign);
  if(addToMe > upperBound) {
    addToMe = lowerBound;
    addAmtSign *= -1;
  }
  if(addToMe < lowerBound) {
    addToMe = upperBound;
    addAmtSign *= -1;
  }
}
return addToMe;