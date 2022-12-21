#pragma once

#include "ofxtvOS.h"

class ofApp : public ofxiOSApp {
  
public:
  void setup();
  void update();
  void draw();
  void exit();

  void lostfocus();
  void gotfocus();
  void gotmemorywarning();
  
  ofEasyCam cam;
  ofMesh mesh;
};

