// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:cognito_example/common.dart';
import 'package:example_common/example_common.dart';

import 'app_component.dart';

class UserAttributeComponent extends StatefulComponent {
  UserAttributeComponent({required this.onBack, required this.onConfirm});

  final void Function(
    AuthState authState,
  ) onConfirm;

  final void Function() onBack;
  String? _errorText;

  final Map<CognitoUserAttributeKey, String> _modifiedAttributes = {};
  List<Component> _attributeFields = [];

  @override
  void onInit() {
    _fetchAttributes();
    super.onInit();
  }

  Future<void> _fetchAttributes() async {
    final attributes = await fetchUserAttributes();
    final attributeFields = <Component>[];

    for (final attr in attributes) {
      attributeFields.add(
        TextFormFieldComponent(
          initialValue: attr.value,
          id: attr.userAttributeKey.toString(),
          labelText: attr.userAttributeKey.toString(),
          onChanged: (value) {
            _modifiedAttributes[
                attr.userAttributeKey as CognitoUserAttributeKey] = value ?? '';
          },
        ),
      );
    }

    setState(() {
      _attributeFields = attributeFields;
    });
  }

  Future<void> _save() async {
    if (_modifiedAttributes.length == 1) {
      try {
        final res = await updateUserAttribute(
          key: _modifiedAttributes.entries.first.key,
          value: _modifiedAttributes.entries.first.value,
          options: const CognitoUpdateUserAttributeOptions(
            clientMetadata: {
              'method': 'updateUserAttribute',
            },
          ),
        );
        if (!res.isUpdated) {
          if (res.nextStep.codeDeliveryDetails?.deliveryMedium ==
              DeliveryMedium.email) {
            onConfirm(AuthState.confirmEmail);
          } else {
            onConfirm(AuthState.confirmPhone);
          }
        } else {
          await _fetchAttributes();
        }
      } on Exception catch (e) {
        setState(() {
          _errorText = e.toString();
        });
      }
    } else if (_modifiedAttributes.length > 1) {
      try {
        final res = await updateUserAttributes(
          attributes: List.from(_modifiedAttributes.entries),
          options: const CognitoUpdateUserAttributesOptions(
            clientMetadata: {
              'method': 'updateUserAttributes',
            },
          ),
        );
        final firstUnconfirmedAttr =
            res.entries.firstWhere((el) => !el.value.isUpdated).value;
        if (firstUnconfirmedAttr.nextStep.codeDeliveryDetails?.deliveryMedium ==
            DeliveryMedium.email) {
          onConfirm(AuthState.confirmEmail);
        } else {
          onConfirm(AuthState.confirmPhone);
        }
      } on Exception catch (e) {
        setState(() {
          _errorText = e.toString();
        });
      }
    } else {
      safePrint('No attributes have been modified.');
    }
  }

  @override
  Component render() {
    return ColumnComponent(
      children: [
        if (_errorText != null) TextComponent(_errorText!),
        ButtonComponent(innerHtml: 'Back', onClick: onBack),
        FormComponent(
          children: [
            ColumnComponent(
              children: _attributeFields,
            ),
          ],
        ),
        ButtonComponent(innerHtml: 'Submit', onClick: _save)
      ],
    );
  }
}
