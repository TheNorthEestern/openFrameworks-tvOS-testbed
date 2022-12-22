#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){
  ofSetVerticalSync(false);
  ofEnableDepthTest();
  ofEnableNormalizedTexCoords();
  ofLogo.load("of.png");
  ofSetLineWidth(10);
}

//--------------------------------------------------------------
void ofApp::update(){
  
}

//--------------------------------------------------------------
void ofApp::draw(){
  ofBackground(0, 0, 0);
  
  float movementSpeed = .1;
  float cloudSize = ofGetWidth() / 2;
  float maxBoxSize = 100;
  float spacing = 1;
  int boxCount = 100;
  
  cam.begin();
  
  for (int i = 0; i < boxCount; i++) {
    ofPushMatrix();
    
    float t = (ofGetElapsedTimef() + i * spacing) * movementSpeed;
    
    glm::vec3 pos(
             ofSignedNoise(t, 0, 0),
             ofSignedNoise(0, t, 0),
             ofSignedNoise(0, 0, t));
    
    float boxSize = maxBoxSize * ofNoise(pos.x, pos.y, pos.z);
    
    pos *= cloudSize;
    ofRotateXDeg(pos.x);
    ofRotateYDeg(pos.y);
    ofRotateZDeg(pos.z);
    
    ofLogo.bind();
    ofFill();
    ofSetColor(255);
    ofDrawBox(boxSize);
    ofLogo.unbind();
    
    ofNoFill();
    ofSetColor(ofColor::fromHsb(sinf(t) * 128 + 128, 255, 255));
    ofDrawBox(boxSize * 1.1f);
    
    ofPopMatrix();
  }
  
  cam.end();
}

//--------------------------------------------------------------
void ofApp::exit(){

}
