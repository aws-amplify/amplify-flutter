// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.describe_kinesis_streaming_destination_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeKinesisStreamingDestinationOutput
    extends DescribeKinesisStreamingDestinationOutput {
  @override
  final _i3.BuiltList<_i2.KinesisDataStreamDestination>?
      kinesisDataStreamDestinations;
  @override
  final String? tableName;

  factory _$DescribeKinesisStreamingDestinationOutput(
          [void Function(DescribeKinesisStreamingDestinationOutputBuilder)?
              updates]) =>
      (new DescribeKinesisStreamingDestinationOutputBuilder()..update(updates))
          ._build();

  _$DescribeKinesisStreamingDestinationOutput._(
      {this.kinesisDataStreamDestinations, this.tableName})
      : super._();

  @override
  DescribeKinesisStreamingDestinationOutput rebuild(
          void Function(DescribeKinesisStreamingDestinationOutputBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeKinesisStreamingDestinationOutputBuilder toBuilder() =>
      new DescribeKinesisStreamingDestinationOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeKinesisStreamingDestinationOutput &&
        kinesisDataStreamDestinations == other.kinesisDataStreamDestinations &&
        tableName == other.tableName;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(0, kinesisDataStreamDestinations.hashCode), tableName.hashCode));
  }
}

class DescribeKinesisStreamingDestinationOutputBuilder
    implements
        Builder<DescribeKinesisStreamingDestinationOutput,
            DescribeKinesisStreamingDestinationOutputBuilder> {
  _$DescribeKinesisStreamingDestinationOutput? _$v;

  _i3.ListBuilder<_i2.KinesisDataStreamDestination>?
      _kinesisDataStreamDestinations;
  _i3.ListBuilder<_i2.KinesisDataStreamDestination>
      get kinesisDataStreamDestinations =>
          _$this._kinesisDataStreamDestinations ??=
              new _i3.ListBuilder<_i2.KinesisDataStreamDestination>();
  set kinesisDataStreamDestinations(
          _i3.ListBuilder<_i2.KinesisDataStreamDestination>?
              kinesisDataStreamDestinations) =>
      _$this._kinesisDataStreamDestinations = kinesisDataStreamDestinations;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  DescribeKinesisStreamingDestinationOutputBuilder() {
    DescribeKinesisStreamingDestinationOutput._init(this);
  }

  DescribeKinesisStreamingDestinationOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kinesisDataStreamDestinations =
          $v.kinesisDataStreamDestinations?.toBuilder();
      _tableName = $v.tableName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeKinesisStreamingDestinationOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeKinesisStreamingDestinationOutput;
  }

  @override
  void update(
      void Function(DescribeKinesisStreamingDestinationOutputBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeKinesisStreamingDestinationOutput build() => _build();

  _$DescribeKinesisStreamingDestinationOutput _build() {
    _$DescribeKinesisStreamingDestinationOutput _$result;
    try {
      _$result = _$v ??
          new _$DescribeKinesisStreamingDestinationOutput._(
              kinesisDataStreamDestinations:
                  _kinesisDataStreamDestinations?.build(),
              tableName: tableName);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'kinesisDataStreamDestinations';
        _kinesisDataStreamDestinations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeKinesisStreamingDestinationOutput',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
