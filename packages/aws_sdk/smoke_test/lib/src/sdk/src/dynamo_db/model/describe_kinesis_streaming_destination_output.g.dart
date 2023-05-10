// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.describe_kinesis_streaming_destination_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeKinesisStreamingDestinationOutput
    extends DescribeKinesisStreamingDestinationOutput {
  @override
  final String? tableName;
  @override
  final _i3.BuiltList<_i2.KinesisDataStreamDestination>?
      kinesisDataStreamDestinations;

  factory _$DescribeKinesisStreamingDestinationOutput(
          [void Function(DescribeKinesisStreamingDestinationOutputBuilder)?
              updates]) =>
      (new DescribeKinesisStreamingDestinationOutputBuilder()..update(updates))
          ._build();

  _$DescribeKinesisStreamingDestinationOutput._(
      {this.tableName, this.kinesisDataStreamDestinations})
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
        tableName == other.tableName &&
        kinesisDataStreamDestinations == other.kinesisDataStreamDestinations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tableName.hashCode);
    _$hash = $jc(_$hash, kinesisDataStreamDestinations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeKinesisStreamingDestinationOutputBuilder
    implements
        Builder<DescribeKinesisStreamingDestinationOutput,
            DescribeKinesisStreamingDestinationOutputBuilder> {
  _$DescribeKinesisStreamingDestinationOutput? _$v;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

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

  DescribeKinesisStreamingDestinationOutputBuilder() {
    DescribeKinesisStreamingDestinationOutput._init(this);
  }

  DescribeKinesisStreamingDestinationOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tableName = $v.tableName;
      _kinesisDataStreamDestinations =
          $v.kinesisDataStreamDestinations?.toBuilder();
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
              tableName: tableName,
              kinesisDataStreamDestinations:
                  _kinesisDataStreamDestinations?.build());
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
