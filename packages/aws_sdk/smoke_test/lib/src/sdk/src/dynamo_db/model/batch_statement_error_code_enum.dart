// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.batch_statement_error_code_enum; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class BatchStatementErrorCodeEnum
    extends _i1.SmithyEnum<BatchStatementErrorCodeEnum> {
  const BatchStatementErrorCodeEnum._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const BatchStatementErrorCodeEnum._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const accessDenied = BatchStatementErrorCodeEnum._(
    0,
    'AccessDenied',
    'AccessDenied',
  );

  static const conditionalCheckFailed = BatchStatementErrorCodeEnum._(
    1,
    'ConditionalCheckFailed',
    'ConditionalCheckFailed',
  );

  static const duplicateItem = BatchStatementErrorCodeEnum._(
    2,
    'DuplicateItem',
    'DuplicateItem',
  );

  static const internalServerError = BatchStatementErrorCodeEnum._(
    3,
    'InternalServerError',
    'InternalServerError',
  );

  static const itemCollectionSizeLimitExceeded = BatchStatementErrorCodeEnum._(
    4,
    'ItemCollectionSizeLimitExceeded',
    'ItemCollectionSizeLimitExceeded',
  );

  static const provisionedThroughputExceeded = BatchStatementErrorCodeEnum._(
    5,
    'ProvisionedThroughputExceeded',
    'ProvisionedThroughputExceeded',
  );

  static const requestLimitExceeded = BatchStatementErrorCodeEnum._(
    6,
    'RequestLimitExceeded',
    'RequestLimitExceeded',
  );

  static const resourceNotFound = BatchStatementErrorCodeEnum._(
    7,
    'ResourceNotFound',
    'ResourceNotFound',
  );

  static const throttlingError = BatchStatementErrorCodeEnum._(
    8,
    'ThrottlingError',
    'ThrottlingError',
  );

  static const transactionConflict = BatchStatementErrorCodeEnum._(
    9,
    'TransactionConflict',
    'TransactionConflict',
  );

  static const validationError = BatchStatementErrorCodeEnum._(
    10,
    'ValidationError',
    'ValidationError',
  );

  /// All values of [BatchStatementErrorCodeEnum].
  static const values = <BatchStatementErrorCodeEnum>[
    BatchStatementErrorCodeEnum.accessDenied,
    BatchStatementErrorCodeEnum.conditionalCheckFailed,
    BatchStatementErrorCodeEnum.duplicateItem,
    BatchStatementErrorCodeEnum.internalServerError,
    BatchStatementErrorCodeEnum.itemCollectionSizeLimitExceeded,
    BatchStatementErrorCodeEnum.provisionedThroughputExceeded,
    BatchStatementErrorCodeEnum.requestLimitExceeded,
    BatchStatementErrorCodeEnum.resourceNotFound,
    BatchStatementErrorCodeEnum.throttlingError,
    BatchStatementErrorCodeEnum.transactionConflict,
    BatchStatementErrorCodeEnum.validationError,
  ];

  static const List<_i1.SmithySerializer<BatchStatementErrorCodeEnum>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'BatchStatementErrorCodeEnum',
      values: values,
      sdkUnknown: BatchStatementErrorCodeEnum._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ],
    )
  ];
}

extension BatchStatementErrorCodeEnumHelpers
    on List<BatchStatementErrorCodeEnum> {
  /// Returns the value of [BatchStatementErrorCodeEnum] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  BatchStatementErrorCodeEnum byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [BatchStatementErrorCodeEnum] whose value matches [value].
  BatchStatementErrorCodeEnum byValue(String value) =>
      firstWhere((el) => el.value == value);
}
