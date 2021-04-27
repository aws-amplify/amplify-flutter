import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';

// ignore_for_file: public_member_api_docs
class ConfirmUserAttribute extends StatefulWidget {
  final String attributeKey;
  ConfirmUserAttribute({@required this.attributeKey});

  @override
  _ConfirmUserAttributeState createState() => _ConfirmUserAttributeState();
}

class _ConfirmUserAttributeState extends State<ConfirmUserAttribute> {
  bool isNewAttribute = false;
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
      var res = await Amplify.Auth.confirmUserAttribute(
        attributeKey: widget.attributeKey,
        confirmationCode: _confirmationCodeController.text,
      );
      print(res);
      _showSuccess('Attribute Update Confirmed');
    } on AmplifyException catch (e) {
      _showError(e.message);
    }
  }

  void _resenCode() async {
    try {
      var res = await Amplify.Auth.resendUserAttributeConfirmationCode(
        attributeKey: widget.attributeKey,
      );
      print(res);
      _showInfo(
          'Confirmation Code Sent via ${res.codeDeliveryDetails.deliveryMedium}');
    } on AmplifyException catch (e) {
      _showError(e.message);
    }
  }

  @override
  void initState() {
    isNewAttribute = widget.attributeKey == null;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Attribute'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const SizedBox(height: 12),
            TextFormField(
              initialValue: widget.attributeKey,
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
              onPressed: _resenCode,
              child: Text('Resend Confirmation Code'),
            ),
          ],
        ),
      ),
    );
  }
}
