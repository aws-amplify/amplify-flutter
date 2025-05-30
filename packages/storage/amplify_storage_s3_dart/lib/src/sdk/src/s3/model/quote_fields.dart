// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_storage_s3_dart.s3.model.quote_fields; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class QuoteFields extends _i1.SmithyEnum<QuoteFields> {
  const QuoteFields._(super.index, super.name, super.value);

  const QuoteFields._sdkUnknown(super.value) : super.sdkUnknown();

  static const always = QuoteFields._(0, 'ALWAYS', 'ALWAYS');

  static const asneeded = QuoteFields._(1, 'ASNEEDED', 'ASNEEDED');

  /// All values of [QuoteFields].
  static const values = <QuoteFields>[QuoteFields.always, QuoteFields.asneeded];

  static const List<_i1.SmithySerializer<QuoteFields>> serializers = [
    _i1.SmithyEnumSerializer(
      'QuoteFields',
      values: values,
      sdkUnknown: QuoteFields._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
      ],
    ),
  ];
}

extension QuoteFieldsHelpers on List<QuoteFields> {
  /// Returns the value of [QuoteFields] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  QuoteFields byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [QuoteFields] whose value matches [value].
  QuoteFields byValue(String value) => firstWhere((el) => el.value == value);
}
