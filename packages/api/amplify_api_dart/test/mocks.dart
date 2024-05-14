import 'package:amplify_core/amplify_core.dart';

import 'test_models/ModelProvider.dart';

// Mock requests
const modelWithCustomTypeDocument =
    r'mutation createModelWithCustomType($input: CreateModelWithCustomTypeInput!, $condition:  ModelModelWithCustomTypeConditionInput) { createModelWithCustomType(input: $input, condition: $condition) { id customTypeValue { stringValue listOfStringValue intValue listOfIntValue floatValue listOfFloatValue booleanValue listOfBooleanValue awsDateValue listOfAWSDateValue awsDateTimeValue listOfAWSDateTimeValue awsTimeValue listOfAWSTimeValue awsTimestampValue listOfAWSTimestampValue awsEmailValue listOfAWSEmailValue awsJsonValue listOfAWSJsonValue awsPhoneValue listOfAWSPhoneValue awsURLValue listOfAWSURLValue awsIPAddressValue listOfAWSIPAddressValue enumValue listOfEnumValue customTypeValue { foo } listOfCustomTypeValue { foo } } listOfCustomTypeValue { stringValue listOfStringValue intValue listOfIntValue floatValue listOfFloatValue booleanValue listOfBooleanValue awsDateValue listOfAWSDateValue awsDateTimeValue listOfAWSDateTimeValue awsTimeValue listOfAWSTimeValue awsTimestampValue listOfAWSTimestampValue awsEmailValue listOfAWSEmailValue awsJsonValue listOfAWSJsonValue awsPhoneValue listOfAWSPhoneValue awsURLValue listOfAWSURLValue awsIPAddressValue listOfAWSIPAddressValue enumValue listOfEnumValue customTypeValue { foo } listOfCustomTypeValue { foo } } createdAt updatedAt } }';
final modelCustomTypeId = uuid();
final modelWithCustomTypeVariables = {
  'input': {
    'id': modelCustomTypeId,
    'customTypeValue': {
      'stringValue': 'foo',
      'listOfStringValue': ['foo', 'bar'],
      'intValue': 42,
      'listOfIntValue': [1, 2, 3],
      'floatValue': 3.14,
      'listOfFloatValue': [3.14, 6.28],
      'booleanValue': true,
      'listOfBooleanValue': [true, false],
      'awsDateValue': '2021-07-07',
      'listOfAWSDateValue': ['2021-07-07', '2021-07-08'],
      'awsDateTimeValue': '2021-07-07T20:20:20.000000000Z',
      'listOfAWSDateTimeValue': [
        '2021-07-07T20:20:20.000000000Z',
        '2021-07-08T20:20:20.000000000Z',
      ],
      'awsTimeValue': '20:20:20Z',
      'listOfAWSTimeValue': ['20:20:20Z', '21:21:21Z'],
      'awsTimestampValue': 1625660420,
      'listOfAWSTimestampValue': [1625660420, 1625746820],
      'awsEmailValue': 'example@amazon.com',
      'listOfAWSEmailValue': [
        'example+foo@amazon.com',
        'example+bar@amazon.com',
      ],
      'awsJsonValue': '{"a":1,"b":3,"string":234}',
      'listOfAWSJsonValue': [
        '{"a":1,"b":3,"string":234}',
        '{"a":2,"b":4,"string":567}',
      ],
      'awsPhoneValue': '2234567890',
      'listOfAWSPhoneValue': ['2234567890', '2234567891'],
      'awsURLValue': 'https://aws.amazon.com',
      'listOfAWSURLValue': ['https://aws.amazon.com', 'https://flutter.dev'],
      'awsIPAddressValue': '1.0.0.1',
      'listOfAWSIPAddressValue': ['1.0.0.1', '1.0.0.2'],
      'enumValue': 'yes',
      'listOfEnumValue': ['yes', 'no'],
      'customTypeValue': {
        'foo': 'bar',
      },
      'listOfCustomTypeValue': [
        {
          'foo': 'bar',
        },
        {
          'foo': 'baz',
        }
      ],
    },
    'listOfCustomTypeValue': [
      {
        'stringValue': 'foo',
        'listOfStringValue': ['foo', 'bar'],
        'intValue': 42,
        'listOfIntValue': [1, 2, 3],
        'floatValue': 3.14,
        'listOfFloatValue': [3.14, 6.28],
        'booleanValue': true,
        'listOfBooleanValue': [true, false],
        'awsDateValue': '2021-07-07',
        'listOfAWSDateValue': ['2021-07-07', '2021-07-08'],
        'awsDateTimeValue': '2021-07-07T20:20:20.000000000Z',
        'listOfAWSDateTimeValue': [
          '2021-07-07T20:20:20.000000000Z',
          '2021-07-08T20:20:20.000000000Z',
        ],
        'awsTimeValue': '20:20:20Z',
        'listOfAWSTimeValue': ['20:20:20Z', '21:21:21Z'],
        'awsTimestampValue': 1625660420,
        'listOfAWSTimestampValue': [1625660420, 1625746820],
        'awsEmailValue': 'example@amazon.com',
        'listOfAWSEmailValue': [
          'example+foo@amazon.com',
          'example+bar@amazon.com',
        ],
        'awsJsonValue': '{"a":1,"b":3,"string":234}',
        'listOfAWSJsonValue': [
          '{"a":1,"b":3,"string":234}',
          '{"a":2,"b":4,"string":567}',
        ],
        'awsPhoneValue': '2234567890',
        'listOfAWSPhoneValue': ['2234567890', '2234567891'],
        'awsURLValue': 'https://aws.amazon.com',
        'listOfAWSURLValue': ['https://aws.amazon.com', 'https://flutter.dev'],
        'awsIPAddressValue': '1.0.0.1',
        'listOfAWSIPAddressValue': ['1.0.0.1', '1.0.0.2'],
        'enumValue': 'yes',
        'listOfEnumValue': ['yes', 'no'],
        'customTypeValue': {
          'foo': 'bar',
        },
        'listOfCustomTypeValue': [
          {
            'foo': 'bar',
          },
          {
            'foo': 'baz',
          }
        ],
      }
    ],
  },
};

// Success Mocks
const expectedQuerySuccessResponseBody = {
  'data': {
    'listBlogs': {
      'items': [
        {
          'id': 'TEST_ID',
          'name': 'Test App Blog',
          'createdAt': '2022-06-28T17:36:52.460Z',
        }
      ],
    },
  },
};

final modelQueryId = uuid();
final expectedModelQueryResult = {
  'data': {
    'getBlog': {
      'createdAt': '2021-07-21T22:23:33.707Z',
      'id': modelQueryId,
      'name': 'Test App Blog',
    },
  },
};
const expectedMutateSuccessResponseBody = {
  'data': {
    'createBlog': {
      'id': 'TEST_ID',
      'name': 'Test App Blog',
      'createdAt': '2022-07-06T18:42:26.126Z',
    },
  },
};
final expectedModelWithCustomTypeSuccessResponseBody = {
  'data': {
    'createModelWithCustomType': {
      'id': modelCustomTypeId,
      'customTypeValue': {
        'stringValue': 'foo',
        'listOfStringValue': ['foo', 'bar'],
        'intValue': 42,
        'listOfIntValue': [1, 2, 3],
        'floatValue': 3.14,
        'listOfFloatValue': [3.14, 6.28],
        'booleanValue': true,
        'listOfBooleanValue': [true, false],
        'awsDateValue': '2021-07-07',
        'listOfAWSDateValue': ['2021-07-07', '2021-07-08'],
        'awsDateTimeValue': '2021-07-07T20:20:20.000000000Z',
        'listOfAWSDateTimeValue': [
          '2021-07-07T20:20:20.000000000Z',
          '2021-07-08T20:20:20.000000000Z',
        ],
        'awsTimeValue': '20:20:20Z',
        'listOfAWSTimeValue': ['20:20:20Z', '21:21:21Z'],
        'awsTimestampValue': 1625660420,
        'listOfAWSTimestampValue': [1625660420, 1625746820],
        'awsEmailValue': 'example@amazon.com',
        'listOfAWSEmailValue': [
          'example+foo@amazon.com',
          'example+bar@amazon.com',
        ],
        'awsJsonValue': '{"a":1,"b":3,"string":234}',
        'listOfAWSJsonValue': [
          '{"a":1,"b":3,"string":234}',
          '{"a":2,"b":4,"string":567}',
        ],
        'awsPhoneValue': '2234567890',
        'listOfAWSPhoneValue': ['2234567890', '2234567891'],
        'awsURLValue': 'https://aws.amazon.com',
        'listOfAWSURLValue': ['https://aws.amazon.com', 'https://flutter.dev'],
        'awsIPAddressValue': '1.0.0.1',
        'listOfAWSIPAddressValue': ['1.0.0.1', '1.0.0.2'],
        'enumValue': 'yes',
        'listOfEnumValue': ['yes', 'no'],
        'customTypeValue': {'foo': 'bar'},
        'listOfCustomTypeValue': [
          {'foo': 'bar'},
          {'foo': 'baz'},
        ],
      },
      'listOfCustomTypeValue': [
        {
          'stringValue': 'foo',
          'listOfStringValue': ['foo', 'bar'],
          'intValue': 42,
          'listOfIntValue': [1, 2, 3],
          'floatValue': 3.14,
          'listOfFloatValue': [3.14, 6.28],
          'booleanValue': true,
          'listOfBooleanValue': [true, false],
          'awsDateValue': '2021-07-07',
          'listOfAWSDateValue': ['2021-07-07', '2021-07-08'],
          'awsDateTimeValue': '2021-07-07T20:20:20.000000000Z',
          'listOfAWSDateTimeValue': [
            '2021-07-07T20:20:20.000000000Z',
            '2021-07-08T20:20:20.000000000Z',
          ],
          'awsTimeValue': '20:20:20Z',
          'listOfAWSTimeValue': ['20:20:20Z', '21:21:21Z'],
          'awsTimestampValue': 1625660420,
          'listOfAWSTimestampValue': [1625660420, 1625746820],
          'awsEmailValue': 'example@amazon.com',
          'listOfAWSEmailValue': [
            'example+foo@amazon.com',
            'example+bar@amazon.com',
          ],
          'awsJsonValue': '{"a":1,"b":3,"string":234}',
          'listOfAWSJsonValue': [
            '{"a":1,"b":3,"string":234}',
            '{"a":2,"b":4,"string":567}',
          ],
          'awsPhoneValue': '2234567890',
          'listOfAWSPhoneValue': ['2234567890', '2234567891'],
          'awsURLValue': 'https://aws.amazon.com',
          'listOfAWSURLValue': [
            'https://aws.amazon.com',
            'https://flutter.dev',
          ],
          'awsIPAddressValue': '1.0.0.1',
          'listOfAWSIPAddressValue': ['1.0.0.1', '1.0.0.2'],
          'enumValue': 'yes',
          'listOfEnumValue': ['yes', 'no'],
          'customTypeValue': {'foo': 'bar'},
          'listOfCustomTypeValue': [
            {'foo': 'bar'},
            {'foo': 'baz'},
          ],
        }
      ],
      'createdAt': '2024-05-14T22:00:30.605Z',
      'updatedAt': '2024-05-14T22:00:30.605Z',
    },
  },
};

// Error Mocks
const errorMessage = 'Unable to parse GraphQL query.';
const errorLocations = [
  {'line': 2, 'column': 3},
  {'line': 4, 'column': 5},
];
const errorPath = ['a', 1, 'b'];
const errorExtensions = {
  'a': 'blah',
  'b': {'c': 'd'},
};
const errorType = 'DynamoDB:ConditionalCheckFailedException';
const errorInfo = {'a': 'b'};
const expectedErrorResponseBody = {
  'data': null,
  'errors': [
    {
      'message': errorMessage,
      'locations': errorLocations,
      'path': errorPath,
      'extensions': errorExtensions,
      'errorType': errorType,
      'errorInfo': errorInfo,
    },
  ],
};

const authErrorMessage = 'Not authorized';
const expectedAuthErrorResponseBody = {
  'data': null,
  'errors': [
    {
      'message': authErrorMessage,
    },
  ],
};

/// Models
final customTypesSubModel1 = CustomTypeWithAppsyncScalarTypes(
  stringValue: 'foo',
  listOfStringValue: ['foo', 'bar'],
  intValue: 42,
  listOfIntValue: [1, 2, 3],
  floatValue: 3.14,
  listOfFloatValue: [3.14, 6.28],
  booleanValue: true,
  listOfBooleanValue: [true, false],
  awsDateValue: TemporalDate.fromString('2021-07-07'),
  listOfAWSDateValue: [
    TemporalDate.fromString('2021-07-07'),
    TemporalDate.fromString('2021-07-08'),
  ],
  awsDateTimeValue: TemporalDateTime.fromString('2021-07-07T20:20:20Z'),
  listOfAWSDateTimeValue: [
    TemporalDateTime.fromString('2021-07-07T20:20:20Z'),
    TemporalDateTime.fromString('2021-07-08T20:20:20Z'),
  ],
  awsTimeValue: TemporalTime.fromString('20:20:20Z'),
  listOfAWSTimeValue: [
    TemporalTime.fromString('20:20:20Z'),
    TemporalTime.fromString('21:21:21Z'),
  ],
  awsTimestampValue: TemporalTimestamp.fromSeconds(1625660420),
  listOfAWSTimestampValue: [
    TemporalTimestamp.fromSeconds(1625660420),
    TemporalTimestamp.fromSeconds(1625746820),
  ],
  awsEmailValue: 'example@amazon.com',
  listOfAWSEmailValue: ['example+foo@amazon.com', 'example+bar@amazon.com'],
  awsJsonValue: '{"a":1,"b":3,"string":234}',
  listOfAWSJsonValue: [
    '{"a":1,"b":3,"string":234}',
    '{"a":2,"b":4,"string":567}',
  ],
  awsPhoneValue: '2234567890',
  listOfAWSPhoneValue: ['2234567890', '2234567891'],
  awsURLValue: 'https://aws.amazon.com',
  listOfAWSURLValue: ['https://aws.amazon.com', 'https://flutter.dev'],
  awsIPAddressValue: '1.0.0.1',
  listOfAWSIPAddressValue: ['1.0.0.1', '1.0.0.2'],
  enumValue: EnumField.yes,
  listOfEnumValue: [EnumField.yes, EnumField.no],
  customTypeValue: SimpleCustomType(foo: 'bar'),
  listOfCustomTypeValue: [
    SimpleCustomType(foo: 'bar'),
    SimpleCustomType(foo: 'baz'),
  ],
);
final customTypesSubModel2 = customTypesSubModel1.copyWith();
final modelWithCustomType = ModelWithCustomType(
  id: modelCustomTypeId,
  customTypeValue: customTypesSubModel1,
  listOfCustomTypeValue: [customTypesSubModel2],
);
