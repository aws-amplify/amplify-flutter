////
////  FlutterSignUpRequest.swift
////  amplify_auth
////
////  Created by Noyes, Dustin on 7/2/20.
////
//
//
//import Foundation
//
//struct FlutterSignUpResult: Encodable {
//    var isSignUpComplete: Bool;
//    var nextStep: FlutterAuthNextSignUpStep;
//    init(data: AuthSignUpResult) {
//      self.isSignUpComplete = data.isSignupComplete
//      self.nextStep = FlutterAuthNextSignUpStep(data: data.nextStep)
//    }
//}
//
//class FlutterAuthNextSignUpStep: Encodable {
////    var additionalInfo: Dictionary<String, AnyObject>;
////    var codeDeliveryDetails: FlutterAuthCodeDeliveryDetails;
//    var signUpStep: String;
//    init(data: AuthSignUpStep) {
////    self.additionalInfo = data.additionalInfo;
//        self.signUpStep = "confirmUser"
//    }
//}
//
////class FlutterAuthCodeDeliveryDetails: Encodable {
////    var attributeName: String;
////    var deliveryMedium: String;
////    var destination: String;
////    init(data: AuthCodeDeliveryDetails){
////
////    }
////  AuthCodeDeliveryDetails.fromJson(Map data) {
////    this.attributeName = data["attributeName"];
////    this.deliveryMedium = data["deliveryMedium"];
////    this.destination = data["destination"];
////  }
////}
