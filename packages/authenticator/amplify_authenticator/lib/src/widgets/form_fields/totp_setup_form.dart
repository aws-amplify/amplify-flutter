// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/src/widgets/form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qr_flutter/qr_flutter.dart';

mixin TotpSetupForm<FieldType extends Enum,
        T extends AuthenticatorFormField<FieldType, String>>
    on AuthenticatorFormFieldState<FieldType, String, T> {
  bool showQRCode = false;

  Uri get totpUri;

  void _copyKey() {
    Clipboard.setData(
      ClipboardData(text: state.totpSetupDetails!.sharedSecret),
    ).then((value) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Copied to clipboard',
            textAlign: TextAlign.center,
          ),
        ),
      );
    });
  }

  @override
  Widget buildFormField(BuildContext context) {
    final brightness = MediaQuery.of(context).platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    final isMobile = Theme.of(context).platform == TargetPlatform.iOS ||
        Theme.of(context).platform == TargetPlatform.android;

    return Column(
      children: [
        if (isMobile)
          TextButton(
            onPressed: () => setState(() {
              showQRCode = !showQRCode;
            }),
            child: Text('${showQRCode ? 'Hide' : 'Show'} QR Code'),
          ),
        if (!isMobile || showQRCode)
          QrImageView(
            size: 300,
            eyeStyle:
                QrEyeStyle(color: isDarkMode ? Colors.white : Colors.black),
            dataModuleStyle: QrDataModuleStyle(
              color: isDarkMode ? Colors.white : Colors.black,
            ),
            data: totpUri.toString(),
            version: QrVersions.auto,
          ),
        const Padding(padding: EdgeInsets.all(15)),
        const Text('Manual Setup:'),
        TextButton(
          onPressed: _copyKey,
          child: Text(
            state.totpSetupDetails!.sharedSecret,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
