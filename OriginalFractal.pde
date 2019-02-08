public void setup(){
	size(500, 500);
}
public void draw(){
	fractal(125, 125, 250);
}
public void fractal(int x, int y, int len){
	if(len<50)
		rect(x, y, len, len, 5);
	else{
		rect(x, y, len, len, 5);
		fractal(x-len/4, y+len/4, len/2);
		fractal(x+len/4, y-len/4, len/2);
		fractal(x+(len-len/4), y+len/4, len/2);
		fractal(x+len/4, y+(len-len/4), len/2);
	}
}