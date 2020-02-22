class Popup {
  PVector pos;
  int tile_size;

  Popup() {
    pos = new PVector(-164, -164);
    this.tile_size = 69;
  }

  Popup(PVector mm) {
    pos = mm.copy();
    this.tile_size = 69;
  }

  void show() {
    for (int i=0; i < 3; i++) {
      for (int j=0; j < 3; j++) {
        stroke(8);
        strokeWeight(4);
        rectMode(CORNER);
        fill(238, 238, 252, 242);
        rect(-20 + pos.x + j * tile_size, 32 + pos.y + i * tile_size, tile_size, tile_size);
        imageMode(CORNER);
        image(numbers[j + 3*i], -20 + pos.x + j * tile_size, 32 + pos.y + i * tile_size, tile_size, tile_size);
      }
    }
  }

  int check() {
    int val = -1;
    for (int i=0; i < 3; i++) {
      for (int j=0; j < 3; j++) {
        int index = j + 3 * i;
        if (mouse_over(-20 + pos.x + j*tile_size, 32 + pos.y + i*tile_size, -20 + pos.x + (j+1)*tile_size, 32 + pos.y + (i+1)*tile_size) && mousePressed) {
          val = index + 1;
        }
      }
    }
    return val;
  }
}
