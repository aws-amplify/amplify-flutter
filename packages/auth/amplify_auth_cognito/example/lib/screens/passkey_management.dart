// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';

class PasskeyManagementScreen extends StatefulWidget {
  const PasskeyManagementScreen({super.key});

  @override
  State<PasskeyManagementScreen> createState() =>
      _PasskeyManagementScreenState();
}

class _PasskeyManagementScreenState extends State<PasskeyManagementScreen> {
  List<AuthWebAuthnCredential> _credentials = [];
  bool _loading = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    setState(() {
      _loading = true;
      _error = null;
    });
    try {
      final creds = await Amplify.Auth.listWebAuthnCredentials();
      setState(() => _credentials = creds);
    } on Exception catch (e) {
      setState(() => _error = e.toString());
    } finally {
      setState(() => _loading = false);
    }
  }

  Future<void> _addPasskey() async {
    setState(() {
      _loading = true;
      _error = null;
    });
    try {
      await Amplify.Auth.associateWebAuthnCredential();
      await _load();
    } on Exception catch (e) {
      setState(() {
        _error = e.toString();
        _loading = false;
      });
    }
  }

  Future<void> _delete(String credentialId) async {
    setState(() => _loading = true);
    try {
      await Amplify.Auth.deleteWebAuthnCredential(credentialId);
      await _load();
    } on Exception catch (e) {
      setState(() {
        _error = e.toString();
        _loading = false;
      });
    }
  }

  String _transportLabel(List<String>? transports) {
    if (transports == null || transports.isEmpty) return 'Unknown';
    return transports.map((t) => switch (t) {
      'internal' => 'Built-in',
      'usb' => 'USB',
      'nfc' => 'NFC',
      'ble' => 'Bluetooth',
      _ => t,
    }).join(', ');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Passkeys'),
        actions: [
          IconButton(icon: const Icon(Icons.refresh), onPressed: _load),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _loading ? null : _addPasskey,
        child: const Icon(Icons.add),
      ),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : Column(
              children: [
                if (_error != null)
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      _error!,
                      style: const TextStyle(color: Colors.red),
                    ),
                  ),
                if (_credentials.isEmpty)
                  const Expanded(
                    child: Center(child: Text('No passkeys registered')),
                  )
                else
                  Expanded(
                    child: ListView.builder(
                      itemCount: _credentials.length,
                      itemBuilder: (_, i) {
                        final c = _credentials[i];
                        return ListTile(
                          leading: const Icon(Icons.fingerprint),
                          title: Text(
                            c.friendlyName ?? c.credentialId.substring(0, 8),
                          ),
                          subtitle: Text(
                            'Created: ${c.createdAt.toLocal().toString().split('.').first}\n'
                            'RP: ${c.relyingPartyId}\n'
                            'Attachment: ${c.authenticatorAttachment ?? 'N/A'}\n'
                            'Transport: ${_transportLabel(c.authenticatorTransports)}',
                          ),
                          isThreeLine: true,
                          trailing: IconButton(
                            icon: const Icon(Icons.delete, color: Colors.red),
                            onPressed: () => _delete(c.credentialId),
                          ),
                        );
                      },
                    ),
                  ),
              ],
            ),
    );
  }
}
