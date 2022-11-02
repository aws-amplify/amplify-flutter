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
    return $jf($jc($jc(0, streamArn.hashCode), tableName.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
