// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_storage_s3_dart.s3.model.select_object_content_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/select_object_content_event_stream.dart';
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'select_object_content_output.g.dart';

abstract class SelectObjectContentOutput
    with _i1.AWSEquatable<SelectObjectContentOutput>
    implements
        Built<SelectObjectContentOutput, SelectObjectContentOutputBuilder>,
        _i2.HasPayload<SelectObjectContentEventStream> {
  factory SelectObjectContentOutput({SelectObjectContentEventStream? payload}) {
    return _$SelectObjectContentOutput._(payload: payload);
  }

  factory SelectObjectContentOutput.build(
          [void Function(SelectObjectContentOutputBuilder) updates]) =
      _$SelectObjectContentOutput;

  const SelectObjectContentOutput._();

  /// Constructs a [SelectObjectContentOutput] from a [payload] and [response].
  factory SelectObjectContentOutput.fromResponse(
    SelectObjectContentEventStream? payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      SelectObjectContentOutput.build((b) {
        b.payload = payload;
      });

  static const List<_i2.SmithySerializer<SelectObjectContentEventStream?>>
      serializers = [];

  /// The array of results.
  SelectObjectContentEventStream? get payload;
  @override
  SelectObjectContentEventStream? getPayload() => payload;

  @override
  List<Object?> get props => [payload];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SelectObjectContentOutput')
      ..add(
        'payload',
        payload,
      );
    return helper.toString();
  }
}
