// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_bucket_accelerate_configuration_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBucketAccelerateConfigurationOutput
    extends GetBucketAccelerateConfigurationOutput {
  @override
  final _i3.BucketAccelerateStatus? status;
  @override
  final _i4.RequestCharged? requestCharged;

  factory _$GetBucketAccelerateConfigurationOutput(
          [void Function(GetBucketAccelerateConfigurationOutputBuilder)?
              updates]) =>
      (new GetBucketAccelerateConfigurationOutputBuilder()..update(updates))
          ._build();

  _$GetBucketAccelerateConfigurationOutput._({this.status, this.requestCharged})
      : super._();

  @override
  GetBucketAccelerateConfigurationOutput rebuild(
          void Function(GetBucketAccelerateConfigurationOutputBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketAccelerateConfigurationOutputBuilder toBuilder() =>
      new GetBucketAccelerateConfigurationOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketAccelerateConfigurationOutput &&
        status == other.status &&
        requestCharged == other.requestCharged;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, requestCharged.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetBucketAccelerateConfigurationOutputBuilder
    implements
        Builder<GetBucketAccelerateConfigurationOutput,
            GetBucketAccelerateConfigurationOutputBuilder> {
  _$GetBucketAccelerateConfigurationOutput? _$v;

  _i3.BucketAccelerateStatus? _status;
  _i3.BucketAccelerateStatus? get status => _$this._status;
  set status(_i3.BucketAccelerateStatus? status) => _$this._status = status;

  _i4.RequestCharged? _requestCharged;
  _i4.RequestCharged? get requestCharged => _$this._requestCharged;
  set requestCharged(_i4.RequestCharged? requestCharged) =>
      _$this._requestCharged = requestCharged;

  GetBucketAccelerateConfigurationOutputBuilder() {
    GetBucketAccelerateConfigurationOutput._init(this);
  }

  GetBucketAccelerateConfigurationOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _requestCharged = $v.requestCharged;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetBucketAccelerateConfigurationOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketAccelerateConfigurationOutput;
  }

  @override
  void update(
      void Function(GetBucketAccelerateConfigurationOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketAccelerateConfigurationOutput build() => _build();

  _$GetBucketAccelerateConfigurationOutput _build() {
    final _$result = _$v ??
        new _$GetBucketAccelerateConfigurationOutput._(
            status: status, requestCharged: requestCharged);
    replace(_$result);
    return _$result;
  }
}

class _$GetBucketAccelerateConfigurationOutputPayload
    extends GetBucketAccelerateConfigurationOutputPayload {
  @override
  final _i3.BucketAccelerateStatus? status;

  factory _$GetBucketAccelerateConfigurationOutputPayload(
          [void Function(GetBucketAccelerateConfigurationOutputPayloadBuilder)?
              updates]) =>
      (new GetBucketAccelerateConfigurationOutputPayloadBuilder()
            ..update(updates))
          ._build();

  _$GetBucketAccelerateConfigurationOutputPayload._({this.status}) : super._();

  @override
  GetBucketAccelerateConfigurationOutputPayload rebuild(
          void Function(GetBucketAccelerateConfigurationOutputPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketAccelerateConfigurationOutputPayloadBuilder toBuilder() =>
      new GetBucketAccelerateConfigurationOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketAccelerateConfigurationOutputPayload &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetBucketAccelerateConfigurationOutputPayloadBuilder
    implements
        Builder<GetBucketAccelerateConfigurationOutputPayload,
            GetBucketAccelerateConfigurationOutputPayloadBuilder> {
  _$GetBucketAccelerateConfigurationOutputPayload? _$v;

  _i3.BucketAccelerateStatus? _status;
  _i3.BucketAccelerateStatus? get status => _$this._status;
  set status(_i3.BucketAccelerateStatus? status) => _$this._status = status;

  GetBucketAccelerateConfigurationOutputPayloadBuilder() {
    GetBucketAccelerateConfigurationOutputPayload._init(this);
  }

  GetBucketAccelerateConfigurationOutputPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetBucketAccelerateConfigurationOutputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketAccelerateConfigurationOutputPayload;
  }

  @override
  void update(
      void Function(GetBucketAccelerateConfigurationOutputPayloadBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketAccelerateConfigurationOutputPayload build() => _build();

  _$GetBucketAccelerateConfigurationOutputPayload _build() {
    final _$result = _$v ??
        new _$GetBucketAccelerateConfigurationOutputPayload._(status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
