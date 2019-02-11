public void setup(){
	size(500, 500);
}
public void draw(){
	background(152);
	fractal(0, 0, mouseY*10);
}
public void fractal(int x, int y, int len){
	if(len<30)
		rect(x, y, len, len, 5);
	else{
		fill(len+20, len, len*2);
		rect(x, y, len, len, 5);
		fractal(x-len/4, y+len/4, len/2);
		fractal(x+len/4, y-len/4, len/2);
		fractal(x+(len-len/4), y+len/4, len/2);
		fractal(x+len/4, y+(len-len/4), len/2);
	}
}