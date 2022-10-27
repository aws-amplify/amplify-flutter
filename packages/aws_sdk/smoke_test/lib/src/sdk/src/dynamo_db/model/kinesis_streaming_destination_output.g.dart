// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.kinesis_streaming_destination_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$KinesisStreamingDestinationOutput
    extends KinesisStreamingDestinationOutput {
  @override
  final _i2.DestinationStatus? destinationStatus;
  @override
  final String? streamArn;
  @override
  final String? tableName;

  factory _$KinesisStreamingDestinationOutput(
          [void Function(KinesisStreamingDestinationOutputBuilder)? updates]) =>
      (new KinesisStreamingDestinationOutputBuilder()..update(updates))
          ._build();

  _$KinesisStreamingDestinationOutput._(
      {this.destinationStatus, this.streamArn, this.tableName})
      : super._();

  @override
  KinesisStreamingDestinationOutput rebuild(
          void Function(KinesisStreamingDestinationOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KinesisStreamingDestinationOutputBuilder toBuilder() =>
      new KinesisStreamingDestinationOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KinesisStreamingDestinationOutput &&
        destinationStatus == other.destinationStatus &&
        streamArn == other.streamArn &&
        tableName == other.tableName;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, destinationStatus.hashCode), streamArn.hashCode),
        tableName.hashCode));
  }
}

class KinesisStreamingDestinationOutputBuilder
    implements
        Builder<KinesisStreamingDestinationOutput,
            KinesisStreamingDestinationOutputBuilder> {
  _$KinesisStreamingDestinationOutput? _$v;

  _i2.DestinationStatus? _destinationStatus;
  _i2.DestinationStatus? get destinationStatus => _$this._destinationStatus;
  set destinationStatus(_i2.DestinationStatus? destinationStatus) =>
      _$this._destinationStatus = destinationStatus;

  String? _streamArn;
  String? get streamArn => _$this._streamArn;
  set streamArn(String? streamArn) => _$this._streamArn = streamArn;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  KinesisStreamingDestinationOutputBuilder() {
    KinesisStreamingDestinationOutput._init(this);
  }

  KinesisStreamingDestinationOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _destinationStatus = $v.destinationStatus;
      _streamArn = $v.streamArn;
      _tableName = $v.tableName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KinesisStreamingDestinationOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$KinesisStreamingDestinationOutput;
  }

  @override
  void update(
      void Function(KinesisStreamingDestinationOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  KinesisStreamingDestinationOutput build() => _build();

  _$KinesisStreamingDestinationOutput _build() {
    final _$result = _$v ??
        new _$KinesisStreamingDestinationOutput._(
            destinationStatus: destinationStatus,
            streamArn: streamArn,
            tableName: tableName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
