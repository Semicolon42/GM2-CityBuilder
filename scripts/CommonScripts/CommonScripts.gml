/// @function approach(a, b, amount)
/// @param {real} a starting value
/// @param {real} b end value
/// @param {real} amount maximum amount to move towards "b"
/// @description Moves "a" towards "b" by "amount" and returns the result
///              Nice bcause it will not overshoot "b", and works in both directions
///              Examples:
///                   speed = Approach(speed, max_speed, acceleration);
///                   hp = Approach(hp, 0, damage_amount);
///                   hp = Approach(hp, max_hp, heal_amount);
///                   x = Approach(x, target_x, move_speed);
///                   y = Approach(y, target_y, move_speed);
function approach(a, b, amount){
	if (a < b){
	    a += amount;
	    if (a > b)
	        return b;
	} else {
	    a -= amount;
	    if (a < b)
	        return b;
	}
	return a;
}

/// @function approach_linear_x(ax, ay, bx, by, amount)
/// @param {real} ax starting value
/// @param {real} ay starting value
/// @param {real} bx end value
/// @param {real} by end value
/// @param {real} amount maximum amount to move towards "b"
function approach_linear_x(ax, ay, bx, by, amount){
	var ang = point_direction(ax,ay,bx,by)
	return amount * cos(degtorad(ang))
}

/// @function approach_linear_y(ax, ay, bx, by, amount)
/// @param {real} ax starting value
/// @param {real} ay starting value
/// @param {real} bx end value
/// @param {real} by end value
/// @param {real} amount maximum amount to move towards "b"
function approach_linear_y(ax, ay, bx, by, amount){
	var ang = point_direction(ax,ay,bx,by)
	return -amount * sin(degtorad(ang))
}

/// @function wrap(value, min, max)
/// @param {real} value 
/// @param {real} min   
/// @param {real} max   
/// @description Returns the value wrapped, values over or under will be wrapped around
function wrap(_val, _min, _max){
	if (_val mod 1 == 0)
	{
	    while (_val > _max || _val < _min)
	    {
	        if (_val > _max)
	            _val += _min - _max - 1;
	        else if (_val < _min)
	            _val += _max - _min + 1;
	    }
	    return(_val);
	}
	else
	{
	    var vOld = _val + 1;
	    while (_val != vOld)
	    {
	        vOld = _val;
	        if (_val < _min)
	            _val = _max - (_min - _val);
	        else if (_val > _max)
	            _val = _min + (_val - _max);
	    }
	    return(_val);
	}
}

/// @function chance(target)
/// @param target
/// @description has a "target" percent chance of returning true
function chance(target) {
    return random(1) < target	
}