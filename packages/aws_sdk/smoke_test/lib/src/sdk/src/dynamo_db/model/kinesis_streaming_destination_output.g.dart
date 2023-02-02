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
    var _$hash = 0;
    _$hash = $jc(_$hash, destinationStatus.hashCode);
    _$hash = $jc(_$hash, streamArn.hashCode);
    _$hash = $jc(_$hash, tableName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
