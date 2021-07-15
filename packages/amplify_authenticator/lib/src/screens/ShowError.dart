// import 'package:amplify_flutter/amplify.dart';
// import 'package:flutter/material.dart';

// class ShowError extends StatelessWidget {
//   final AmplifyException error;

//   ShowError(this.error);

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: <Widget>[
//           Expanded(
//               // wrap your Column in Expanded
//               child: Column(children: [
//             Text('Error: ' + error.runtimeType.toString()),
//             const Padding(padding: EdgeInsets.all(10.0)),
//             Text('Message: ' + error.message),
//             if (error.recoverySuggestion == null)
//               Text('Recovery: ' + error.recoverySuggestion),
//             const Padding(padding: EdgeInsets.all(10.0)),
//             if (error.underlyingException == null)
//               Text('Underlying: ' + error.underlyingException),
//             Padding(padding: EdgeInsets.all(10.0)),
//           ]))
//         ]);
//   }
// }
