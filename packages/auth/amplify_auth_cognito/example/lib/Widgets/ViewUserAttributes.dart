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

import 'UpdateUserAttributes.dart';
import 'UpdateUserAttribute.dart';

// ignore: public_member_api_docs
class ViewUserAttributes extends StatefulWidget {
  @override
  _ViewUserAttributesState createState() => _ViewUserAttributesState();
}

class _ViewUserAttributesState extends State<ViewUserAttributes> {
  bool _isLoading = true;
  String _errorMessage = '';
  List<AuthUserAttribute> _userAttributes = [];

  void _showSuccess(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(backgroundColor: Colors.green[800], content: Text(message)));
  }

  void _showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(backgroundColor: Colors.red[900], content: Text(message)));
  }

  Future<void> _fetchAttributes({bool isRefresh = false}) {
    return Amplify.Auth.fetchUserAttributes().then((attributes) {
      setState(() => _userAttributes = attributes
        ..sort((a, b) => a.userAttributeKey.compareTo(b.userAttributeKey)));
      if (isRefresh) {
        _showSuccess('User Attributes Refreshed Successfully');
      }
      return;
    }).catchError((error) {
      var errorMessage =
          'There was an error fetching the user attribute: $error';

      if (isRefresh) {
        _showError(errorMessage);
      } else {
        setState(() => _errorMessage = errorMessage);
      }
    }).whenComplete(() => setState(() => _isLoading = false));
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
        title: Text('User Attributes'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => UpdateUserAttributesWidget(),
                ),
              );
            },
            child: Text(
              'Bulk Update',
              style: TextStyle(color: Colors.white),
            ),
          ),
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () => _fetchAttributes(isRefresh: true),
          )
        ],
      ),
      body: Builder(
        builder: (context) {
          if (_isLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (_errorMessage != '') {
            return Center(child: Text(_errorMessage));
          } else if (_userAttributes.isEmpty) {
            return Center(child: Text('This user has no attributes'));
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
                            icon: Icon(Icons.edit),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      UpdateUserAttributeWidget(
                                    userAttributeKey: userAttributeKey,
                                  ),
                                ),
                              );
                            },
                          ),
                  );
                },
              ),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => UpdateUserAttributeWidget(),
            ),
          );
        },
        icon: Icon(Icons.add),
        label: Text('Add Attribute'),
      ),
    );
  }
}
