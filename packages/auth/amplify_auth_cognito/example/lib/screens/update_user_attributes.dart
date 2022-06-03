//
// Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//  http://aws.amazon.com/apache2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class _UserAttributeController {
  late TextEditingController keyController;
  late TextEditingController valueController;
  _UserAttributeController({String? keyValue}) {
    keyController = TextEditingController(text: keyValue);
    valueController = TextEditingController();
  }
}

class UpdateUserAttributesScreen extends StatefulWidget {
  const UpdateUserAttributesScreen({super.key});

  @override
  State<UpdateUserAttributesScreen> createState() =>
      _UpdateUserAttributesScreenState();
}

class _UpdateUserAttributesScreenState
    extends State<UpdateUserAttributesScreen> {
  final List<_UserAttributeController> _userAttributeControllers = [
    _UserAttributeController(keyValue: 'name'),
    _UserAttributeController(keyValue: 'preferred_username'),
  ];

  final _formKey = GlobalKey<FormState>();

  void _showSuccess(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.green[800],
        content: Text(message),
      ),
    );
  }

  void _showInfo(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.blue[800],
        content: Text(message),
      ),
    );
  }

  void _showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.red[900],
        content: Text(message),
      ),
    );
  }

  Future<void> _updateAttributes() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    try {
      final attributes = _userAttributeControllers
          .map(
            (controller) => AuthUserAttribute(
              userAttributeKey: CognitoUserAttributeKey.parse(
                controller.keyController.text,
              ),
              value: controller.valueController.text,
            ),
          )
          .toList();
      final res = await Amplify.Auth.updateUserAttributes(
        attributes: attributes,
      );
      final attributesWithConfirmation = res.entries
          .where(
            (element) =>
                element.value.nextStep.updateAttributeStep ==
                'CONFIRM_ATTRIBUTE_WITH_CODE',
          )
          .map((element) => element.key)
          .toList();
      if (attributesWithConfirmation.isNotEmpty) {
        _showInfo(
          'Confirmation Code sent for attributes: '
          '$attributesWithConfirmation',
        );
      } else {
        _showSuccess('Attributes Updated Successfully');
      }
      if (mounted) {
        context.go('/');
      }
    } on Exception catch (e) {
      _showError(e.toString());
    }
  }

  void _addAttribute() {
    setState(() {
      _userAttributeControllers.add(_UserAttributeController());
    });
  }

  void _removeAttribute(_UserAttributeController controller) {
    setState(() {
      _userAttributeControllers.remove(controller);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Attributes'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              ..._userAttributeControllers.map((element) {
                return Card(
                    child: Stack(children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      bottom: 24,
                      right: 16,
                    ),
                    child: Column(children: [
                      TextFormField(
                        controller: element.keyController,
                        decoration: const InputDecoration(
                          labelText: 'Attribute Name',
                        ),
                        validator: (value) {
                          if (value == null) {
                            return 'An Attribute name is required.';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        controller: element.valueController,
                        decoration: const InputDecoration(
                          labelText: 'Attribute Value',
                        ),
                        validator: (value) {
                          if (value == null) {
                            return 'An Attribute value is required.';
                          }
                          return null;
                        },
                      ),
                    ]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        padding: EdgeInsets.zero,
                        icon: const Icon(
                          Icons.close,
                          size: 18,
                        ),
                        onPressed: () => _removeAttribute(element),
                      )
                    ],
                  ),
                ]));
              }),
              const SizedBox(height: 12),
              ElevatedButton(
                onPressed: _updateAttributes,
                child: const Text('Update Attributes'),
              ),
              TextButton(
                onPressed: _addAttribute,
                child: const Text('Add New Attribute'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
