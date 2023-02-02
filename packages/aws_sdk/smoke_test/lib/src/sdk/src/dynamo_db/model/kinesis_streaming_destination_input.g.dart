// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.kinesis_streaming_destination_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$KinesisStreamingDestinationInput
    extends KinesisStreamingDestinationInput {
  @override
  final String streamArn;
  @override
  final String tableName;

  factory _$KinesisStreamingDestinationInput(
          [void Function(KinesisStreamingDestinationInputBuilder)? updates]) =>
      (new KinesisStreamingDestinationInputBuilder()..update(updates))._build();

  _$KinesisStreamingDestinationInput._(
      {required this.streamArn, required this.tableName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        streamArn, r'KinesisStreamingDestinationInput', 'streamArn');
    BuiltValueNullFieldError.checkNotNull(
        tableName, r'KinesisStreamingDestinationInput', 'tableName');
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
        streamArn == other.streamArn &&
        tableName == other.tableName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, streamArn.hashCode);
    _$hash = $jc(_$hash, tableName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class KinesisStreamingDestinationInputBuilder
    implements
        Builder<KinesisStreamingDestinationInput,
            KinesisStreamingDestinationInputBuilder> {
  _$KinesisStreamingDestinationInput? _$v;

  String? _streamArn;
  String? get streamArn => _$this._streamArn;
  set streamArn(String? streamArn) => _$this._streamArn = streamArn;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  KinesisStreamingDestinationInputBuilder() {
    KinesisStreamingDestinationInput._init(this);
  }

  KinesisStreamingDestinationInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _streamArn = $v.streamArn;
      _tableName = $v.tableName;
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
            streamArn: BuiltValueNullFieldError.checkNotNull(
                streamArn, r'KinesisStreamingDestinationInput', 'streamArn'),
            tableName: BuiltValueNullFieldError.checkNotNull(
                tableName, r'KinesisStreamingDestinationInput', 'tableName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
