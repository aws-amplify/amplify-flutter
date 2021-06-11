import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';

import 'ConfirmUserAttribute.dart';

// ignore_for_file: public_member_api_docs
class UpdateUserAttributeWidget extends StatefulWidget {
  final String userAttributeKey;
  UpdateUserAttributeWidget({this.userAttributeKey});

  @override
  _UpdateUserAttributeWidgetState createState() =>
      _UpdateUserAttributeWidgetState();
}

class _UpdateUserAttributeWidgetState extends State<UpdateUserAttributeWidget> {
  bool isNewAttribute = false;
  TextEditingController _keyController;
  final _valueController = TextEditingController();

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

  void _updateAttribute() async {
    try {
      var res = await Amplify.Auth.updateUserAttribute(
        userAttributeKey: _keyController.text,
        value: _valueController.text,
      );
      if (res.nextStep.updateAttributeStep == 'CONFIRM_ATTRIBUTE_WITH_CODE') {
        _showInfo(
            'Confirmation Code Sent via ${res.nextStep.codeDeliveryDetails.deliveryMedium}');
      } else {
        _showSuccess('Attribute Updated Successfully');
      }
    } on AmplifyException catch (e) {
      _showError(e.message);
    }
  }

  @override
  void initState() {
    isNewAttribute = widget.userAttributeKey == null;
    _keyController = TextEditingController(text: widget.userAttributeKey);
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
              controller: _keyController,
              enabled: isNewAttribute,
              decoration: const InputDecoration(
                labelText: 'Attribute Name',
              ),
            ),
            TextFormField(
              controller: _valueController,
              decoration: const InputDecoration(
                labelText: 'Attribute Value',
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: _updateAttribute,
              child: const Text('Update Attribute'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => ConfirmUserAttribute(
                      userAttributeKey: _keyController.text,
                    ),
                  ),
                );
              },
              child: Text('Confirm User Attribute'),
            ),
          ],
        ),
      ),
    );
  }
}
