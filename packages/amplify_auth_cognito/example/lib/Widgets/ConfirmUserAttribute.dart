import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';

// ignore_for_file: public_member_api_docs
class ConfirmUserAttribute extends StatefulWidget {
  final String userAttributeKey;
  ConfirmUserAttribute({@required this.userAttributeKey});

  @override
  _ConfirmUserAttributeState createState() => _ConfirmUserAttributeState();
}

class _ConfirmUserAttributeState extends State<ConfirmUserAttribute> {
  final _confirmationCodeController = TextEditingController();

  void _showSuccess(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(backgroundColor: Colors.green[800], content: Text(message)));
  }

  void _showInfo(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(backgroundColor: Colors.blue[800], content: Text(message)));
  }

  void _showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(backgroundColor: Colors.red[900], content: Text(message)));
  }

  void _confirmUpdate() async {
    try {
      await Amplify.Auth.confirmUserAttribute(
        userAttributeKey: widget.userAttributeKey,
        confirmationCode: _confirmationCodeController.text,
      );
      _showSuccess('Attribute Confirmed Successfully');
    } on AmplifyException catch (e) {
      _showError(e.message);
    }
  }

  void _resendCode() async {
    try {
      var res = await Amplify.Auth.resendUserAttributeConfirmationCode(
        userAttributeKey: widget.userAttributeKey,
      );
      _showInfo(
          'Confirmation Code Sent via ${res.codeDeliveryDetails.deliveryMedium}');
    } on AmplifyException catch (e) {
      _showError(e.message);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Confirm Attribute'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const SizedBox(height: 12),
            TextFormField(
              initialValue: widget.userAttributeKey,
              enabled: false,
              decoration: const InputDecoration(
                labelText: 'Attribute Name',
              ),
            ),
            TextFormField(
              controller: _confirmationCodeController,
              decoration: const InputDecoration(
                labelText: 'Confirmation Code',
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: _confirmUpdate,
              child: const Text('Confirm Attribute Update'),
            ),
            TextButton(
              onPressed: _resendCode,
              child: Text('Resend Confirmation Code'),
            ),
          ],
        ),
      ),
    );
  }
}
