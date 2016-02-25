/** sunflower
 *
 * fait le 25/02/2016 par Jacques Maire
 *
 * todo: la 3D en utilisant les frames
 **/
 

 
 
import remixlab.proscene.*;
import remixlab.dandelion.core.*;
import remixlab.dandelion.geom.*;

Scene scene;
InteractiveFrame  frame1;

Frame utile;
Graine[] graines;
int ng,tempo;
float rayon,rSphere;
void setup() {
  size(700, 600, P3D);
  scene = new Scene(this);
  scene.setRadius(1500);
  scene.showAll();
  scene.eye().frame().setRotationSensitivity(0.3f);  
  scene.setGridVisualHint(true);
   scene.setAxesVisualHint(true);
  frame1 = new InteractiveFrame(scene);
  frame1.translate(0, 0, 0);
  rayon=240.0;
  ng=500;//nombre de graines
 graines=new Graine[ng];
  for (int i=0; i<ng; i++) {
    graines[i]=new Graine(i,rayon);  
  }
utile=new Frame(frame1,new Quat(1,0,0,0),1);

}
void draw() {
  background(255);
  pointLight(255, 255, 0, 5000, 1000, 1000);
   pointLight(255, 255, 0, -1000, 3000, -1000);
   lights();
   noStroke();
   fill(255);
 sphere(rayon);
   //println(tempo);
    if(tempo<ng-1) tempo++;
  for (int i=0; i<tempo; i++) {
 
  graines[i].faireunepousse(1.005,1.0065);
  }
  
  
}