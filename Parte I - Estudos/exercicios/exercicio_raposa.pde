   size(400,400);
   
   // Orelhas 
   fill(184, 49, 0);
   arc(133, 100, 145, 145,radians(265),radians(360));
   arc(270, 100, 145, 145,radians(180),radians(275));
   
   // Corpo 
   fill(184, 49, 0);
   arc(200, 160, 179, 180, radians(270), radians(540));
   
   // Cauda 
   fill(255);
   arc(110, 160, 50, 50,radians(0),radians(84));

   noStroke();
   fill(235, 62, 0);
   ellipse(200, 100, 143, 143);
   
   // Parte branca dos olhos
   fill(255);
   arc(127, 174, 155, 155, radians(270), radians(360), CHORD);
   arc(204, 96, 154, 154, radians(90), radians(180), CHORD);
   
   fill(255);
   arc(275, 174, 155, 155, radians(180), radians(270), CHORD);
   arc(197, 96, 154, 154, radians(0), radians(90), CHORD);
   
   // Olhos
   fill(0);
   arc(170,130,15,15,radians(225),radians(405),CHORD);
   arc(230,130,15,15,radians(135),radians(315),CHORD);

    // Nariz
    fill(107, 29, 0);
    ellipse(200, 175, 30, 30);
