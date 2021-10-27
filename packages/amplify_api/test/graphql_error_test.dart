import 'package:amplify_api/amplify_api.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  const apiChannel = MethodChannel('com.amazonaws.amplify/api');
  final api = AmplifyAPI();

  test('GraphQL Error Decoding', () async {
    const message = 'Not Authorized';
    const locations = [
      {'line': 2, 'column': 3},
      {'line': 4, 'column': 5}
    ];
    const path = ['a', 1, 'b'];
    const extensions = {
      'a': 'blah',
      'b': {'c': 'd'}
    };
    const expected = GraphQLResponseError(
      message: message,
      locations: [
        GraphQLResponseErrorLocation(2, 3),
        GraphQLResponseErrorLocation(4, 5),
      ],
      path: <dynamic>[...path],
      extensions: <String, dynamic>{...extensions},
    );

    apiChannel.setMockMethodCallHandler((MethodCall call) async {
      return {
        'data': null,
        'errors': [
          {
            'message': message,
            'locations': locations,
            'path': path,
            'extensions': extensions,
          },
        ]
      };
    });

    final resp = await api
        .query(
          request: GraphQLRequest<String>(document: ''),
        )
        .response;

    expect(resp.data, equals(null));
    expect(resp.errors.single, equals(expected));
  });
}
