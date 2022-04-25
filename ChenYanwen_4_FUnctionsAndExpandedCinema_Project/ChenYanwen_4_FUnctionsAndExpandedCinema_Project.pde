/*
 * Course: ART 22  - Computer Programming for the Arts
 * Assignment: Week 4 Project FunctionsAndExpandedCinema
 *
 * by Yanwen Chen
 *
 * Initiated: 2022/04/23
 * Last updated: 2022/04/23
 *
 * CITATIONS: List all sources you used for this assignment.
 * All the photos were took by Yanwen Chen.
 *
 *
 * NOTE: This is where you write any notes you would like
 * to leave yourself or others using your code.
 *
 * Try to play with it. Make the decision and click the bottoms!
 *
 * */


PImage beach, walkingView, hungryView, bus, icecream, milkTea, cat, sadCat, happyCat, familyDog, dogMiso, happyPanda;

enum Scene {
  BEACH, WALKING, TAKETHEBUS, HUNGRY, KEEPWALKING, DOGONBUS, MILKTEA, ICECREAM, CATEONROAD, PLAYCAT, NOTPLAYCAT, PLAYDOG, NOTPLAYDOG, SADCAT, SADDOG, HAPPYENDING
}

Scene scene = Scene.BEACH;

void setup() {
  size(800, 800);
  textSize(30);
  background(#ffc8d2);
  fill(0);
  beach=loadImage("beach.jpeg");
  walkingView=loadImage("walkingView.jpeg");
  hungryView=loadImage("hungryView.jpeg");
  bus=loadImage("bus.jpeg");
  icecream=loadImage("icecream.jpeg");
  milkTea=loadImage("milkTea.jpeg");
  cat=loadImage("cat.jpeg");
  sadCat=loadImage("sadCat.jpeg");
  happyCat=loadImage("happyCat.jpeg");
  familyDog=loadImage("familyDog.jpeg");
  dogMiso=loadImage("dogMiso.jpeg");
  happyPanda=loadImage("happyPanda.png");
}

//follow the story to expolore different story
void draw() {
  switch (scene) {
  case BEACH:
    background(#ffc8d2);
    image(beach, 0, 0);
    fill(#ff4d6d);
    text("Eventually, classes are over today. \nDo u wanna walk back dorm or take the bus?", 100, 100);
    text("Walking", 200, 550);
    text("Take the Bus", 450, 550);
    break;
  case WALKING:
    background(#ffc8d2);
    image(walkingView, 0, 0);
    fill(#caffbf);
    text("The breeze rushed through your hair, \njolting your sleepy head awake. \nYour skirt's hem has been gently blown up, \nas though dancing with the wind.", 100, 100);
    text("Hungry", 200, 550);
    text("Keep Walking", 450, 550);
    break;
  case TAKETHEBUS:
    background(#ffc8d2);
    image(bus, 0, 0);
    break;
  case HUNGRY:
    background(#ffc8d2);
    image(hungryView, 0, 0);
    fill(#ff4d6d);
    text("U feel hungry all of sudden. \nDo u wanna have a cup of milk tea or an ice cream?", 100, 100);
    text("Mild Tea", 200, 550);
    text("Ice cream", 450, 550);
    break;
  case KEEPWALKING:
    background(#ffc8d2);
    image(walkingView, 0, 0);
    fill(#caffbf);
    text("U just keep walking.", 100, 100);
    break;
  case DOGONBUS:
    background(#ffc8d2);
    fill(#ff4d6d);
    text("U see a cute dog on the bus. \nDo u wanna play with the dog?", 100, 100);
    text("Yes", 200, 550);
    text("No", 450, 550);
    break;
  case MILKTEA:
    background(#ffc8d2);
    image(milkTea, 0, 0);
    fill(#caffbf);
    text("The strawberries milk tea is THE milk tea. \nDrinking a whole bottle makes your day!", 100, 100);
    break;
  case ICECREAM:
    background(#ffc8d2);
    image(icecream, 0, 0);
    fill(#caffbf);
    text("This strawberry ice cream is THE BEST one nearby. \nEating a whole cone makes your day!", 100, 100);
    break;
  case CATEONROAD:
    background(#ffc8d2);
    image(cat, 0, 0);
    fill(#ff4d6d);
    text("U see a cute cat. \nDo u wanna play with the cat?", 100, 100);
    text("Yes", 200, 550);
    text("No", 450, 550);
    break;
  case PLAYCAT:
    background(#ffc8d2);
    image(happyCat, 0, 0);
    fill(#ff4d6d);
    text("U squat and start to play with the cat. \nShe is soooooo cute<333", 100, 100);
    break;
  case NOTPLAYCAT:
    background(#ffc8d2);
    image(sadCat, 0, 0);
    fill(#ff4d6d);
    text("She seems a little bit down \nsince u dont wanna play with her.", 100, 100);
    break;
  case PLAYDOG:
    background(#ffc8d2);
    image(dogMiso, 0, 0);
    fill(#ff4d6d);
    text("The dog is soooooooo cute, \nand u can't help holding her tightly.", 100, 100);
    break;
  case NOTPLAYDOG:
    background(#ffc8d2);
    image(familyDog, 0, 0);
    fill(#ff4d6d);
    text("U start to feel bad, \nthe dog reminds u of your family dog, \n who u haven't seen for more than 200 days.", 100, 100);
    break;
  case SADCAT:
    background(#ffc8d2);
    image(sadCat, 0, 0);
    fill(#ff4d6d);
    text("U start to feel bad, \nso u decide to play with her.", 100, 100);
    break;
  case SADDOG:
    background(#ffc8d2);
    image(familyDog, 0, 0);
    fill(#ff4d6d);
    text("Thinking of the family dog, \nu change the mind and decide to play with her.", 100, 100);
    break;
  case HAPPYENDING:
    background(#ffc8d2);
    image(happyPanda, 0, 0);
    fill(#ff4d6d);
    text("U have a really great time on the way home, \ncan't wait to start the second day!", 100, 100);
    text("Restart", 380, 650);
    break;
  }
}

//switch the scene while mouse clicks
void mouseClicked() {
  switch (scene) {
  case BEACH:
    if (mouseX < width/2) {
      // click left side of screen
      scene = Scene.WALKING;
    } else {
      // click right side of screen
      scene = Scene.TAKETHEBUS;
    }
    break;
  case WALKING:
    if (mouseX < width/2) {
      // click left side of screen
      scene = Scene.HUNGRY;
    } else {
      // click right side of screen
      scene = Scene.KEEPWALKING;
    }
    break;
  case TAKETHEBUS:
    scene = Scene.DOGONBUS;
    break;
  case HUNGRY:
    if (mouseX < width/2) {
      // click left side of screen
      scene = Scene.MILKTEA;
    } else {
      // click right side of screen
      scene = Scene.ICECREAM;
    }
    break;
  case KEEPWALKING:
    scene = Scene.CATEONROAD;
    break;
  case DOGONBUS:
    if (mouseX < width/2) {
      // click left side of screen
      scene = Scene.PLAYDOG;
    } else {
      // click right side of screen
      scene = Scene.SADDOG;
    }
    break;
  case MILKTEA:
    scene=Scene.HAPPYENDING;
    break;
  case ICECREAM:
    scene=Scene.HAPPYENDING;
    break;
  case CATEONROAD:
    if (mouseX < width/2) {
      // click left side of screen
      scene = Scene.PLAYCAT;
    } else {
      // click right side of screen
      scene = Scene.SADCAT;
    }
    break;
  case PLAYCAT:
    scene=Scene.HAPPYENDING;
    break;
  case NOTPLAYCAT:
    scene = Scene.PLAYCAT;
    break;
  case PLAYDOG:
    scene = Scene.HAPPYENDING;
    break;
  case NOTPLAYDOG:
    scene = Scene.SADDOG;
    break;
  case SADCAT:
    scene = Scene.PLAYCAT;
    break;
  case SADDOG:
    scene=Scene.PLAYDOG;
    break;
  case HAPPYENDING:
    scene = Scene.BEACH;
    break;
  }
}
