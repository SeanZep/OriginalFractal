public void setup(){
	size(1000, 1000);
}
public void draw(){
	fractal(1);
}
public int fractal(int x){
	if(x > 10000)
		return 1;
	else{
		ellipse(x, x, x, x+10);
		translate(5, 5);
		rotate(25);
		return fractal(x+5);
	}
}