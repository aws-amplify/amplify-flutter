// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.describe_kinesis_streaming_destination_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeKinesisStreamingDestinationInput
    extends DescribeKinesisStreamingDestinationInput {
  @override
  final String tableName;

  factory _$DescribeKinesisStreamingDestinationInput(
          [void Function(DescribeKinesisStreamingDestinationInputBuilder)?
              updates]) =>
      (new DescribeKinesisStreamingDestinationInputBuilder()..update(updates))
          ._build();

  _$DescribeKinesisStreamingDestinationInput._({required this.tableName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tableName, r'DescribeKinesisStreamingDestinationInput', 'tableName');
  }

  @override
  DescribeKinesisStreamingDestinationInput rebuild(
          void Function(DescribeKinesisStreamingDestinationInputBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeKinesisStreamingDestinationInputBuilder toBuilder() =>
      new DescribeKinesisStreamingDestinationInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeKinesisStreamingDestinationInput &&
        tableName == other.tableName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tableName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeKinesisStreamingDestinationInputBuilder
    implements
        Builder<DescribeKinesisStreamingDestinationInput,
            DescribeKinesisStreamingDestinationInputBuilder> {
  _$DescribeKinesisStreamingDestinationInput? _$v;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  DescribeKinesisStreamingDestinationInputBuilder() {
    DescribeKinesisStreamingDestinationInput._init(this);
  }

  DescribeKinesisStreamingDestinationInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tableName = $v.tableName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeKinesisStreamingDestinationInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeKinesisStreamingDestinationInput;
  }

  @override
  void update(
      void Function(DescribeKinesisStreamingDestinationInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeKinesisStreamingDestinationInput build() => _build();

  _$DescribeKinesisStreamingDestinationInput _build() {
    final _$result = _$v ??
        new _$DescribeKinesisStreamingDestinationInput._(
            tableName: BuiltValueNullFieldError.checkNotNull(tableName,
                r'DescribeKinesisStreamingDestinationInput', 'tableName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
