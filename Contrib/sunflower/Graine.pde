public class Graine{
int numero,nbpas;
Quat quater;
Vec pos;
float a=PI*(3-sqrt(5));
float rayon,scalor;

Graine(int n,float r){
  numero=n;
  nbpas=0;
  rayon=r;
  scalor=1.0;
pos=new Vec(rayon*cos(numero*a),rayon*sin(numero*a),0);
quater=new Quat(new Vec(0,0,1),a);
}

void faireunepousse(float sc1,float sc2){
if(nbpas>0) 
  pos=Vec.multiply(pos,sc1);
scalor*=sc2;
dessin();
 nbpas++;

}

void dessin(){
  pushMatrix();
translate(pos.x(),pos.y(),pos.z());
 if((numero%2==0) )fill(255,0,0);else fill(0,255,0);
sphere(10*scalor);
popMatrix();
}
}