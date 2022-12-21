#pragma once

#include "ofxtvOS.h"

class ofApp : public ofxiOSApp {
  
public:
  void setup();
  void update();
  void draw();
  void exit();

//  void touchdown(oftoucheventargs & touch);
//  void touchmoved(oftoucheventargs & touch);
//  void touchup(oftoucheventargs & touch);
//  void touchdoubletap(oftoucheventargs & touch);
//  void touchcancelled(oftoucheventargs & touch);
//
  void lostfocus();
  void gotfocus();
  void gotmemorywarning();
  
};

