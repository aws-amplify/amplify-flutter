// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.kinesis_data_stream_destination;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$KinesisDataStreamDestination extends KinesisDataStreamDestination {
  @override
  final _i2.DestinationStatus? destinationStatus;
  @override
  final String? destinationStatusDescription;
  @override
  final String? streamArn;

  factory _$KinesisDataStreamDestination(
          [void Function(KinesisDataStreamDestinationBuilder)? updates]) =>
      (new KinesisDataStreamDestinationBuilder()..update(updates))._build();

  _$KinesisDataStreamDestination._(
      {this.destinationStatus,
      this.destinationStatusDescription,
      this.streamArn})
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
        destinationStatus == other.destinationStatus &&
        destinationStatusDescription == other.destinationStatusDescription &&
        streamArn == other.streamArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, destinationStatus.hashCode);
    _$hash = $jc(_$hash, destinationStatusDescription.hashCode);
    _$hash = $jc(_$hash, streamArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class KinesisDataStreamDestinationBuilder
    implements
        Builder<KinesisDataStreamDestination,
            KinesisDataStreamDestinationBuilder> {
  _$KinesisDataStreamDestination? _$v;

  _i2.DestinationStatus? _destinationStatus;
  _i2.DestinationStatus? get destinationStatus => _$this._destinationStatus;
  set destinationStatus(_i2.DestinationStatus? destinationStatus) =>
      _$this._destinationStatus = destinationStatus;

  String? _destinationStatusDescription;
  String? get destinationStatusDescription =>
      _$this._destinationStatusDescription;
  set destinationStatusDescription(String? destinationStatusDescription) =>
      _$this._destinationStatusDescription = destinationStatusDescription;

  String? _streamArn;
  String? get streamArn => _$this._streamArn;
  set streamArn(String? streamArn) => _$this._streamArn = streamArn;

  KinesisDataStreamDestinationBuilder() {
    KinesisDataStreamDestination._init(this);
  }

  KinesisDataStreamDestinationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _destinationStatus = $v.destinationStatus;
      _destinationStatusDescription = $v.destinationStatusDescription;
      _streamArn = $v.streamArn;
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
            destinationStatus: destinationStatus,
            destinationStatusDescription: destinationStatusDescription,
            streamArn: streamArn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
