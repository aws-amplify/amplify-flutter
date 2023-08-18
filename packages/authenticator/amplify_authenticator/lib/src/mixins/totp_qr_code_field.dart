// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/src/widgets/form_field.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

mixin TotpQrCode<FieldType extends Enum,
        T extends AuthenticatorFormField<FieldType, String>>
    on AuthenticatorFormFieldState<FieldType, String, T> {
  /// Retrieves the TOTP setup uri from the state
  Uri get totpUri => state.expectTotpUri();

  @override
  double? get marginBottom => 0;

  @override
  Widget buildFormField(BuildContext context) {
    final brightness = MediaQuery.of(context).platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
          child: QrImageView(
            size: 200,
            padding: EdgeInsets.zero,
            eyeStyle:
                QrEyeStyle(color: isDarkMode ? Colors.white : Colors.black),
            dataModuleStyle: QrDataModuleStyle(
              color: isDarkMode ? Colors.white : Colors.black,
            ),
            data: totpUri.toString(),
            version: QrVersions.auto,
          ),
        ),
      ],
    );
  }
}
