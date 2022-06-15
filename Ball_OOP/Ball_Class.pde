class Ball {

  // Les propriétés d'une balle
  int x , y;
  int diameter;
  int dir_x , dir_y;
  int speed;
  
  // Le constructeur : la fonction qu'on appellera pour instancier un objet de classe Ball
  Ball(int initial_x , int initial_y , int initial_speed) {
  
    diameter = 20;
    x = initial_x;
    y = initial_y;
    dir_x = 1;
    dir_y = 1;
    speed = initial_speed;
    
  }
  
  void move() {
  
    // Tests de collision
    if (x <= 0 || x >= width) {
      dir_x *= -1;
    }
  
    if (y <= 0 || y >= height) {
      dir_y *= -1;
    }
  
    // Calcul du mouvement
    x += speed * dir_x;
    y += speed * dir_y;
  
  }
  
  void draw() {
  
    ellipse(x , y , diameter , diameter);
    
  }

}
