// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.kinesis_streaming_destination_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$KinesisStreamingDestinationInput
    extends KinesisStreamingDestinationInput {
  @override
  final String tableName;
  @override
  final String streamArn;

  factory _$KinesisStreamingDestinationInput(
          [void Function(KinesisStreamingDestinationInputBuilder)? updates]) =>
      (new KinesisStreamingDestinationInputBuilder()..update(updates))._build();

  _$KinesisStreamingDestinationInput._(
      {required this.tableName, required this.streamArn})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tableName, r'KinesisStreamingDestinationInput', 'tableName');
    BuiltValueNullFieldError.checkNotNull(
        streamArn, r'KinesisStreamingDestinationInput', 'streamArn');
  }

  @override
  KinesisStreamingDestinationInput rebuild(
          void Function(KinesisStreamingDestinationInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KinesisStreamingDestinationInputBuilder toBuilder() =>
      new KinesisStreamingDestinationInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KinesisStreamingDestinationInput &&
        tableName == other.tableName &&
        streamArn == other.streamArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tableName.hashCode);
    _$hash = $jc(_$hash, streamArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class KinesisStreamingDestinationInputBuilder
    implements
        Builder<KinesisStreamingDestinationInput,
            KinesisStreamingDestinationInputBuilder> {
  _$KinesisStreamingDestinationInput? _$v;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  String? _streamArn;
  String? get streamArn => _$this._streamArn;
  set streamArn(String? streamArn) => _$this._streamArn = streamArn;

  KinesisStreamingDestinationInputBuilder() {
    KinesisStreamingDestinationInput._init(this);
  }

  KinesisStreamingDestinationInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tableName = $v.tableName;
      _streamArn = $v.streamArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KinesisStreamingDestinationInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$KinesisStreamingDestinationInput;
  }

  @override
  void update(void Function(KinesisStreamingDestinationInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  KinesisStreamingDestinationInput build() => _build();

  _$KinesisStreamingDestinationInput _build() {
    final _$result = _$v ??
        new _$KinesisStreamingDestinationInput._(
            tableName: BuiltValueNullFieldError.checkNotNull(
                tableName, r'KinesisStreamingDestinationInput', 'tableName'),
            streamArn: BuiltValueNullFieldError.checkNotNull(
                streamArn, r'KinesisStreamingDestinationInput', 'streamArn'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
