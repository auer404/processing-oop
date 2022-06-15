
//int ball_x , ball_y;
//int ball_diameter;
//int ball_dir_x , ball_dir_y;
//int ball_speed;

// Préparer (globalement) une instance de la classe Ball
Ball myBall;

// Préparer une liste d'instances de la classe Ball
ArrayList<Ball> Balls_list;

void setup() {

  size(400,600);
  
  //ball_diameter = 20;
  //ball_x = width / 2;
  //ball_y = height / 2;
  //ball_dir_x = 1;
  //ball_dir_y = 1;
  //ball_speed = 5;
  
  // Instanciation d'un objet de classe Ball
  myBall = new Ball(width / 2 , height / 2 , 5);
  
  // Instanciation de la liste de balles
  Balls_list = new ArrayList<Ball>();
  
  // Remplissage de la liste de balles
  for (int i = 0 ; i < 20 ; i++) {
    
    int this_x = round(random(30 , width - 30));
    int this_y = round(random(30 , height - 30));
    int this_speed = round(random(1 , 10));
    
    Balls_list.add( new Ball(this_x , this_y , this_speed) );
  
  }
}

void draw() {
  
  //// Tests de collision
  //if (ball_x <= 0 || ball_x >= width) {
  //  ball_dir_x *= -1;
  //}
  
  //if (ball_y <= 0 || ball_y >= height) {
  //  ball_dir_y *= -1;
  //}
  
  //// Calcul du mouvement
  //ball_x += ball_speed * ball_dir_x;
  //ball_y += ball_speed * ball_dir_y;
  
  myBall.move();

  // Dessin
  background(255);
  //ellipse(ball_x , ball_y , ball_diameter , ball_diameter);
  
  myBall.draw();
  
  // Faire bouger et dessiner toutes les balles de la liste
  for (int i = 0; i < Balls_list.size(); i++) {
  
    // Pour obtenir, dans la liste, la balle d'indice i, on passe par Balls_list.get(i)
    
    Balls_list.get(i).move();
    Balls_list.get(i).draw();
    
  }
 
  
}
