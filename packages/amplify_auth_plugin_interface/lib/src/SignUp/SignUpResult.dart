import '../types/AuthNextStep.dart';
import 'package:flutter/foundation.dart';

class SignUpResult { 
  bool isSignUpComplete;
  AuthNextStep nextStep;
  SignUpResult({@required this.isSignUpComplete, @required this.nextStep}) {
    this.isSignUpComplete = isSignUpComplete;
    this.nextStep = nextStep;
   }
}
