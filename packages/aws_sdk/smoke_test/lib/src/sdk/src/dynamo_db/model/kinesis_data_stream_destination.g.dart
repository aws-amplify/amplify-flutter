// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.kinesis_data_stream_destination;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$KinesisDataStreamDestination extends KinesisDataStreamDestination {
  @override
  final String? streamArn;
  @override
  final _i2.DestinationStatus? destinationStatus;
  @override
  final String? destinationStatusDescription;

  factory _$KinesisDataStreamDestination(
          [void Function(KinesisDataStreamDestinationBuilder)? updates]) =>
      (new KinesisDataStreamDestinationBuilder()..update(updates))._build();

  _$KinesisDataStreamDestination._(
      {this.streamArn,
      this.destinationStatus,
      this.destinationStatusDescription})
      : super._();

  @override
  KinesisDataStreamDestination rebuild(
          void Function(KinesisDataStreamDestinationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KinesisDataStreamDestinationBuilder toBuilder() =>
      new KinesisDataStreamDestinationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KinesisDataStreamDestination &&
        streamArn == other.streamArn &&
        destinationStatus == other.destinationStatus &&
        destinationStatusDescription == other.destinationStatusDescription;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, streamArn.hashCode);
    _$hash = $jc(_$hash, destinationStatus.hashCode);
    _$hash = $jc(_$hash, destinationStatusDescription.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class KinesisDataStreamDestinationBuilder
    implements
        Builder<KinesisDataStreamDestination,
            KinesisDataStreamDestinationBuilder> {
  _$KinesisDataStreamDestination? _$v;

  String? _streamArn;
  String? get streamArn => _$this._streamArn;
  set streamArn(String? streamArn) => _$this._streamArn = streamArn;

  _i2.DestinationStatus? _destinationStatus;
  _i2.DestinationStatus? get destinationStatus => _$this._destinationStatus;
  set destinationStatus(_i2.DestinationStatus? destinationStatus) =>
      _$this._destinationStatus = destinationStatus;

  String? _destinationStatusDescription;
  String? get destinationStatusDescription =>
      _$this._destinationStatusDescription;
  set destinationStatusDescription(String? destinationStatusDescription) =>
      _$this._destinationStatusDescription = destinationStatusDescription;

  KinesisDataStreamDestinationBuilder() {
    KinesisDataStreamDestination._init(this);
  }

  KinesisDataStreamDestinationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _streamArn = $v.streamArn;
      _destinationStatus = $v.destinationStatus;
      _destinationStatusDescription = $v.destinationStatusDescription;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KinesisDataStreamDestination other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$KinesisDataStreamDestination;
  }

  @override
  void update(void Function(KinesisDataStreamDestinationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  KinesisDataStreamDestination build() => _build();

  _$KinesisDataStreamDestination _build() {
    final _$result = _$v ??
        new _$KinesisDataStreamDestination._(
            streamArn: streamArn,
            destinationStatus: destinationStatus,
            destinationStatusDescription: destinationStatusDescription);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
