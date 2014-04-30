World w;
int numcells = 0;
int maxcells = 6700;
Cell[] cells = new Cell[maxcells];
color spore_color;

int runs_per_loop = 10000;
color black = color(0,0,0);

void setup() {
	size(640, 360);
	frameRate(24);
	reset();
}

void reset() {
	clearScreen();
	w = new World();
	spore_color = color(172,255,128);
	seed();
}

void seed() {
	for(int i= 0; i < maxcells; i++)
	{
		int cX = (int)random(width);
		int cY = (int)random(height);
		if(w.getpix(cX, cY) == black) {
			w.setpix(cX, cY, spore_color);
			cells[numcells] = new Cell(cX, cY);
			numcells++;
		}
	}
}

void draw() {
	for(int i = 0; i < runs_per_loop; i++) {
		int selected = min((int)random(numcells), numcells - 1);
		cells[selected].run();
	}
}
void clearScreen() {
	background(0);
}

class Cell {
	int x, y;
	Cell(int xin, int yin) {
		x = xin;
		y = yin;
	}

	void run() {
		while(x<0){
			x += width;
		}
		while(x > width - 1) {
			x -= width;
		}
		while(y<0) {
			y += height;
		}
		while(y > height -1) {
			y -= height;
		}

		if(w.getpix(x + 1, y) == black) {
			move(0,1);
		}else if (w.getpix(x,y -1) != black && w.getpix(x, y + 1) != black) {
			move((int)random(9) -4, (int)random(9) -4);
		}
	}

	void move(int dx, int dy) {
		if(w.getpix(x + dx, y + dy) == black) {
			w.setpix(x + dx, y + dy, w.getpix(x, y));
			w.setpix(x, y, color(0));
			x += dx;
			y += dy;
		}
	}
}

class World {

	void setpix(int x, int y, int c) {
		while(x < 0) x += width;
		while(x > width -1) x -= width;
		while(y < 0) y += height;
		while(y > height -1) y -= height;
		set(x, y, c);
	}

	color getpix(int x, int y) {
		while(x < 0) x += width;
		while(x > width -1) x -= width;
		while(y < 0) y += height;
		while(y > height -1) y -= height;
		return get(x,y);
	}
}

void mousePressed() {
	numcells = 0;
	reset();
}
