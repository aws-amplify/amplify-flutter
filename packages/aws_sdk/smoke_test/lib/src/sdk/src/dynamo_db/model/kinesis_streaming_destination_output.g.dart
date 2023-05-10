// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.kinesis_streaming_destination_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$KinesisStreamingDestinationOutput
    extends KinesisStreamingDestinationOutput {
  @override
  final String? tableName;
  @override
  final String? streamArn;
  @override
  final _i2.DestinationStatus? destinationStatus;

  factory _$KinesisStreamingDestinationOutput(
          [void Function(KinesisStreamingDestinationOutputBuilder)? updates]) =>
      (new KinesisStreamingDestinationOutputBuilder()..update(updates))
          ._build();

  _$KinesisStreamingDestinationOutput._(
      {this.tableName, this.streamArn, this.destinationStatus})
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
        tableName == other.tableName &&
        streamArn == other.streamArn &&
        destinationStatus == other.destinationStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tableName.hashCode);
    _$hash = $jc(_$hash, streamArn.hashCode);
    _$hash = $jc(_$hash, destinationStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class KinesisStreamingDestinationOutputBuilder
    implements
        Builder<KinesisStreamingDestinationOutput,
            KinesisStreamingDestinationOutputBuilder> {
  _$KinesisStreamingDestinationOutput? _$v;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  String? _streamArn;
  String? get streamArn => _$this._streamArn;
  set streamArn(String? streamArn) => _$this._streamArn = streamArn;

  _i2.DestinationStatus? _destinationStatus;
  _i2.DestinationStatus? get destinationStatus => _$this._destinationStatus;
  set destinationStatus(_i2.DestinationStatus? destinationStatus) =>
      _$this._destinationStatus = destinationStatus;

  KinesisStreamingDestinationOutputBuilder() {
    KinesisStreamingDestinationOutput._init(this);
  }

  KinesisStreamingDestinationOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tableName = $v.tableName;
      _streamArn = $v.streamArn;
      _destinationStatus = $v.destinationStatus;
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
            tableName: tableName,
            streamArn: streamArn,
            destinationStatus: destinationStatus);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
