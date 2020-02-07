String[] participants;

void setup () {
  participants = new String[6]; // the array 'participants' holds 6 variables of type String
  // the value in [] is the ID; the value assigned after = is the value stored at that position of the array
  participants[0] = "Beat";
  participants[1] = "Veronica";
  participants[2] = "Miriam";
  participants[3] = "Meri";
  participants[4] = "Giusy";
  participants[5] = "Sheila";
  
  noLoop();
}

void draw() {
  // picks a random number between 0 and the length of the array participants (6)
  int participantID = int(random(participants.length)); // gives me an integer number between 0 and 5 included  
  println(participantID);
  
  String participantName = participants[participantID];
  println(participantName + " pays the bill, for today ;)");
}
