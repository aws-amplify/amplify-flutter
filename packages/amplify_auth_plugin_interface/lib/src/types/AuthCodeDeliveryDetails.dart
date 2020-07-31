import 'package:flutter/foundation.dart';

class AuthCodeDeliveryDetails {
  String attributeName;
  String deliveryMedium;
  String destination;
  AuthCodeDeliveryDetails({@required this.attributeName,  @required this.deliveryMedium, @required this.destination});
}