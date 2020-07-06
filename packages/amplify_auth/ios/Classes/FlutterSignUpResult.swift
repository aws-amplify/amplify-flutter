//
//  FlutterSignUpResult.swift
//  Amplify
//
//  Created by Noyes, Dustin on 7/6/20.
//

import Foundation

class FlutterSignUpResult: Encodable {
  var isSignUpComplete: Bool;
  var nextStep: FlutterAuthNextSignUpStep;
  init(data: AuthSignUpResult) {
    self.isSignUpComplete = data.isSignupComplete
    self.nextStep = FlutterAuthNextSignUpStep(data: data.nextStep)
  }
}

class FlutterAuthNextSignUpStep: Encodable {
  var additionalInfo: Dictionary<String, AnyObject>;
  var codeDeliveryDetails: FlutterAuthCodeDeliveryDetails;
  var signUpStep: String;
  init(data: AuthSignUpStep) {
    self.additionalInfo = data.additionalInfo;
  }
  AuthNextSignUpStep.fromJson(Map data) {
    this.additionalInfo = data["additionalInfo"];
    this.codeDeliveryDetails = AuthCodeDeliveryDetails.fromJson(data["codeDeliveryDetails"]);
    this.signUpStep = data["signUpStep"];
  }
}

class FlutterAuthCodeDeliveryDetails: Encodable {
  String attributeName;
  String deliveryMedium;
  String destination;
  AuthCodeDeliveryDetails.fromJson(Map data) {
    this.attributeName = data["attributeName"];
    this.deliveryMedium = data["deliveryMedium"];
    this.destination = data["destination"];
  }
}
