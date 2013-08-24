boolean mousePrevioulyPressed=false;
boolean click() {
  return (mousePressed && !mousePrevioulyPressed);
}
