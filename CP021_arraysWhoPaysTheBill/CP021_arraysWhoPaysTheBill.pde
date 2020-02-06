String[] participants;

void setup () {
  participants = new String[6];
  participants[0] = "Beat";
  participants[1] = "Veronica";
  participants[2] = "Miriam";
  participants[3] = "Meri";
  participants[4] = "Giusy";
  participants[5] = "Sheila";
  
  noLoop();
}

void draw() {
  int memberID = int(random(participants.length));
  println(participants[memberID] + " pays the bill, for today ;)");
}
