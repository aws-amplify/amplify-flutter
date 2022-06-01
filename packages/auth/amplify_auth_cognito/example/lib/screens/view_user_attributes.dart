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

class ViewUserAttributesScreen extends StatefulWidget {
  const ViewUserAttributesScreen({super.key});

  @override
  State<ViewUserAttributesScreen> createState() =>
      _ViewUserAttributesScreenState();
}

class _ViewUserAttributesScreenState extends State<ViewUserAttributesScreen> {
  var _isLoading = true;
  var _errorMessage = '';
  var _userAttributes = <AuthUserAttribute>[];

  void _showSuccess(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(backgroundColor: Colors.green[800], content: Text(message)));
  }

  void _showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(backgroundColor: Colors.red[900], content: Text(message)));
  }

  Future<void> _fetchAttributes({bool isRefresh = false}) async {
    try {
      final attributes = await Amplify.Auth.fetchUserAttributes();
      setState(() {
        _userAttributes = List.of(attributes)
          ..sort((a, b) => a.userAttributeKey.compareTo(b.userAttributeKey));
      });
      if (isRefresh) {
        _showSuccess('User Attributes Refreshed Successfully');
      }
    } on Exception catch (e) {
      final errorMessage = 'There was an error fetching the user attribute: $e';

      if (isRefresh) {
        _showError(errorMessage);
      } else {
        setState(() => _errorMessage = errorMessage);
      }
    } finally {
      setState(() => _isLoading = false);
    }
  }

  @override
  void initState() {
    _fetchAttributes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Attributes'),
        actions: [
          TextButton(
            onPressed: () => context.push('/update-user-attributes'),
            child: const Text(
              'Bulk Update',
              style: TextStyle(color: Colors.white),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => _fetchAttributes(isRefresh: true),
          )
        ],
      ),
      body: Builder(
        builder: (context) {
          if (_isLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (_errorMessage != '') {
            return Center(child: Text(_errorMessage));
          } else if (_userAttributes.isEmpty) {
            return const Center(child: Text('This user has no attributes'));
          } else {
            return RefreshIndicator(
              onRefresh: () => _fetchAttributes(isRefresh: true),
              child: ListView.builder(
                itemCount: _userAttributes.length,
                itemBuilder: (context, index) {
                  AuthUserAttribute atrribute = _userAttributes[index];
                  CognitoUserAttributeKey userAttributeKey =
                      atrribute.userAttributeKey as CognitoUserAttributeKey;
                  String value = atrribute.value;
                  return ListTile(
                    title: Text(userAttributeKey.toString()),
                    subtitle: Text(value),
                    trailing: userAttributeKey.readOnly
                        ? null
                        : IconButton(
                            icon: const Icon(Icons.edit),
                            onPressed: () => context.push(
                              '/update-user-attribute/$userAttributeKey',
                            ),
                          ),
                  );
                },
              ),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.push('/update-user-attribute'),
        icon: const Icon(Icons.add),
        label: const Text('Add Attribute'),
      ),
    );
  }
}
