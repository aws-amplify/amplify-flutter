import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';
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

  Future _fetchAttributes({bool isRefresh = false}) {
    return Amplify.Auth.fetchUserAttributes().then((attributes) {
      setState(() => _userAttributes = attributes
        ..sort((a, b) => b.userAttributeKey.compareTo(a.userAttributeKey)));
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
                  var key = _userAttributes[index].userAttributeKey;
                  var value = _userAttributes[index].value;
                  var isInt = value is int;
                  var stringValue = isInt ? value.toString() : value;
                  return ListTile(
                    title: Text(key),
                    subtitle: Text(stringValue),
                    trailing: IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => UpdateUserAttributeWidget(
                              userAttributeKey: key,
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
