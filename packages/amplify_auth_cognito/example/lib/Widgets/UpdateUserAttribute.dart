import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';

// ignore_for_file: public_member_api_docs
class UpdateUserAttributeWidget extends StatefulWidget {
  final Function showResult;
  final Function changeDisplay;
  final Function setError;
  final Function backToApp;

  UpdateUserAttributeWidget(
    this.showResult,
    this.changeDisplay,
    this.setError,
    this.backToApp,
  );

  @override
  _UpdateUserAttributeWidgetState createState() =>
      _UpdateUserAttributeWidgetState();
}

class _UpdateUserAttributeWidgetState extends State<UpdateUserAttributeWidget> {
  final _nameController = TextEditingController();
  final _colorController = TextEditingController();
  final _numberController = TextEditingController();

  void _updateName() async {
    try {
      await Amplify.Auth.updateUserAttribute(
        attribute: AuthUserAttribute(
          userAttributeKey: 'name',
          value: _nameController.text,
        ),
      );
      widget.showResult('Name Updated');
    } on AmplifyException catch (e) {
      widget.setError(e);
    }
  }

  void _updateFavoriteColor() async {
    try {
      await Amplify.Auth.updateUserAttribute(
        attribute: AuthUserAttribute(
          userAttributeKey: 'favorite_color',
          value: _colorController.text,
        ),
      );
      widget.showResult('Favorite Color Updated');
    } on AmplifyException catch (e) {
      widget.setError(e);
    }
  }

  void _updateFavoriteNumber() async {
    try {
      await Amplify.Auth.updateUserAttribute(
        attribute: AuthUserAttribute(
          userAttributeKey: 'favorite_number',
          value: int.parse(_numberController.text),
        ),
      );
      widget.showResult('Favorite Number Updated');
    } on AmplifyException catch (e) {
      widget.setError(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          child: Column(
            children: [
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _nameController,
                      decoration: const InputDecoration(
                        labelText: 'Name',
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: _updateName,
                    child: const Text('Update'),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _colorController,
                      decoration: const InputDecoration(
                        labelText: 'Favorite Color',
                        hintText: 'Update custom attr of favorite_color',
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: _updateFavoriteColor,
                    child: const Text('Update'),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _numberController,
                      decoration: const InputDecoration(
                        labelText: 'Favorite Number',
                        hintText: 'Update custom attr of favorite_number',
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: _updateFavoriteNumber,
                    child: const Text('Update'),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              ElevatedButton(
                onPressed: widget.backToApp,
                child: const Text('Back to App'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
