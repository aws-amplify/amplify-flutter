// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/src/l10n/button_resolver.dart';
import 'package:amplify_authenticator/src/widgets/form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qr_flutter/qr_flutter.dart';

mixin TotpSetupFields<FieldType extends Enum,
        T extends AuthenticatorFormField<FieldType, String>>
    on AuthenticatorFormFieldState<FieldType, String, T> {
  bool showKey = false;
  bool showQRCode = false;

  Uri get totpUri;

  String getButtonText(ButtonResolverKey key) {
    return stringResolver.buttons.resolve(
      context,
      key,
    );
  }

  void _copyKey() {
    setState(() {
      showKey = true;
    });
    Clipboard.setData(
      ClipboardData(text: state.totpSetupDetails!.sharedSecret),
    ).then((value) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          content: const Text(
            'Copied to clipboard!',
            textAlign: TextAlign.center,
          ),
        ),
      );
    });
  }

  Widget optionDivider() {
    return const Row(
      children: [
        Expanded(
          child: Divider(
            height: 0,
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Text(
            'or',
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          child: Divider(
            height: 0,
          ),
        ),
      ],
    );
  }

  @override
  Widget buildFormField(BuildContext context) {
    final brightness = MediaQuery.of(context).platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    final isMobile = Theme.of(context).platform == TargetPlatform.iOS ||
        Theme.of(context).platform == TargetPlatform.android;
    const widgetTopPadding = EdgeInsets.only(top: 20);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        /// QR Code Toggle Button
        if (isMobile)
          Column(
            children: [
              optionDivider(),
              const Padding(padding: widgetTopPadding),
              OutlinedButton.icon(
                onPressed: () => setState(() {
                  showQRCode = !showQRCode;
                }),
                icon: const Icon(Icons.qr_code),
                label: Center(
                  child: Text(
                    getButtonText(ButtonResolverKey.totpQrCode),
                  ),
                ),
              ),
            ],
          ),

        /// QR Code
        /// Shown on desktop or when toggled on mobile
        if (!isMobile || showQRCode)
          Column(
            children: [
              const Padding(padding: widgetTopPadding),
              QrImageView(
                size: 150,
                padding: EdgeInsets.zero,
                eyeStyle:
                    QrEyeStyle(color: isDarkMode ? Colors.white : Colors.black),
                dataModuleStyle: QrDataModuleStyle(
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
                data: totpUri.toString(),
                version: QrVersions.auto,
              ),
            ],
          ),

        const Padding(padding: widgetTopPadding),
        optionDivider(),
        const Padding(padding: widgetTopPadding),

        /// Manual Key Toggle Button
        if (isMobile)
          Column(
            children: [
              OutlinedButton.icon(
                onPressed: () => setState(() {
                  showKey = !showKey;
                }),
                icon: const Icon(Icons.key_outlined),
                label: Center(
                  child: Text(
                    getButtonText(ButtonResolverKey.totpManualKey),
                  ),
                ),
              ),
            ],
          ),
        const Padding(padding: widgetTopPadding),

        /// Manual Key
        /// Shown on desktop or when toggled on mobile
        if (showKey || !isMobile)
          Row(
            children: [
              IconButton.filledTonal(
                onPressed: _copyKey,
                icon: const Icon(Icons.copy),
              ),
              const Padding(padding: EdgeInsets.only(left: 10)),
              Expanded(
                child: SelectableText(
                  state.totpSetupDetails!.sharedSecret,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
      ],
    );
  }
}
