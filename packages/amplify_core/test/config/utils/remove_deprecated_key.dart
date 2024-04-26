// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Removes keys that are no longer supported in the config as of Amplify
/// Flutter version 2.
///
/// This function creates a copy of the object. The original object is not mutated.
///
/// The tests in this directory test against real configs generated by the Gen1
/// CLI and  assert that serializing a json object to an AmplifyConfig and back
/// to JSON does not change the shape. Deprecated keys will not be present in
/// the output and need to be removed before comparison.
Map<String, Object?> removeDeprecatedKeys(Map<String, Object?> object) {
  final newObject = {...object};
  removeKey(
    newObject,
    [
      'auth',
      'plugins',
      'awsCognitoAuthPlugin',
      'Auth',
      'DefaultCustomAuth',
      'authenticationFlowType',
    ],
  );
  removeKey(
    newObject,
    [
      'auth',
      'plugins',
      'awsCognitoAuthPlugin',
      'Auth',
      'Default',
      'authenticationFlowType',
    ],
  );
  return newObject;
}

/// Removes a deeply nested key from a map if it exists in the map.
///
/// This function mutates the original object.
///
/// [path] is the path to the deeply nested key.
///
/// Example
/// ```
/// final obj = {
///   'foo': {
///     'bar': {
///       'baz':'val'
///     }
///   }
/// }
/// print(obj); // => {'foo': {'bar': {'baz': 'val'}}}
/// removeKey(obj, ['foo', 'bar', 'baz']);
/// print(obj2); // => {'foo': {'bar': {}}}
/// ```
void removeKey(Map<String, Object?> object, List<String> path) {
  if (path.isEmpty) object;
  if (path.length == 1) {
    object.removeWhere((key, value) => key == path.first);
  } else if (object.containsKey(path.first) &&
      object[path.first] is Map<String, Object?>) {
    removeKey(object[path.first] as Map<String, Object?>, path.sublist(1));
  }
}
