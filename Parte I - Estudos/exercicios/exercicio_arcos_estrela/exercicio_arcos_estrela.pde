/*arc(300, 300, 200, 200, radians(180), radians(360));

arc(300, 300, 200, 200, radians(0), radians(180));*/

size(600, 600);
stroke(255);
strokeWeight(2);
arc(300, 300, 600, 600, radians(180), radians(270), CHORD);
arc(0, 0, 600, 600, radians(0), radians(90), CHORD);
arc(300, 300, 600, 600, radians(270), radians(360), CHORD);
arc(600, 0, 600, 600, radians(90), radians(180), CHORD);
arc(300, 300, 600, 600, radians(0), radians(90), CHORD);
arc(600, 600, 600, 600, radians(180), radians(270), CHORD);
arc(300, 300, 600, 600, radians(90), radians(180), CHORD);
arc(0, 600, 600, 600, radians(270), radians(360), CHORD);
