// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vgw_telemetry.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VgwTelemetry extends VgwTelemetry {
  @override
  final int acceptedRouteCount;
  @override
  final DateTime? lastStatusChange;
  @override
  final String? outsideIpAddress;
  @override
  final TelemetryStatus? status;
  @override
  final String? statusMessage;
  @override
  final String? certificateArn;

  factory _$VgwTelemetry([void Function(VgwTelemetryBuilder)? updates]) =>
      (new VgwTelemetryBuilder()..update(updates))._build();

  _$VgwTelemetry._(
      {required this.acceptedRouteCount,
      this.lastStatusChange,
      this.outsideIpAddress,
      this.status,
      this.statusMessage,
      this.certificateArn})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        acceptedRouteCount, r'VgwTelemetry', 'acceptedRouteCount');
  }

  @override
  VgwTelemetry rebuild(void Function(VgwTelemetryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VgwTelemetryBuilder toBuilder() => new VgwTelemetryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VgwTelemetry &&
        acceptedRouteCount == other.acceptedRouteCount &&
        lastStatusChange == other.lastStatusChange &&
        outsideIpAddress == other.outsideIpAddress &&
        status == other.status &&
        statusMessage == other.statusMessage &&
        certificateArn == other.certificateArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, acceptedRouteCount.hashCode);
    _$hash = $jc(_$hash, lastStatusChange.hashCode);
    _$hash = $jc(_$hash, outsideIpAddress.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, statusMessage.hashCode);
    _$hash = $jc(_$hash, certificateArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VgwTelemetryBuilder
    implements Builder<VgwTelemetry, VgwTelemetryBuilder> {
  _$VgwTelemetry? _$v;

  int? _acceptedRouteCount;
  int? get acceptedRouteCount => _$this._acceptedRouteCount;
  set acceptedRouteCount(int? acceptedRouteCount) =>
      _$this._acceptedRouteCount = acceptedRouteCount;

  DateTime? _lastStatusChange;
  DateTime? get lastStatusChange => _$this._lastStatusChange;
  set lastStatusChange(DateTime? lastStatusChange) =>
      _$this._lastStatusChange = lastStatusChange;

  String? _outsideIpAddress;
  String? get outsideIpAddress => _$this._outsideIpAddress;
  set outsideIpAddress(String? outsideIpAddress) =>
      _$this._outsideIpAddress = outsideIpAddress;

  TelemetryStatus? _status;
  TelemetryStatus? get status => _$this._status;
  set status(TelemetryStatus? status) => _$this._status = status;

  String? _statusMessage;
  String? get statusMessage => _$this._statusMessage;
  set statusMessage(String? statusMessage) =>
      _$this._statusMessage = statusMessage;

  String? _certificateArn;
  String? get certificateArn => _$this._certificateArn;
  set certificateArn(String? certificateArn) =>
      _$this._certificateArn = certificateArn;

  VgwTelemetryBuilder() {
    VgwTelemetry._init(this);
  }

  VgwTelemetryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _acceptedRouteCount = $v.acceptedRouteCount;
      _lastStatusChange = $v.lastStatusChange;
      _outsideIpAddress = $v.outsideIpAddress;
      _status = $v.status;
      _statusMessage = $v.statusMessage;
      _certificateArn = $v.certificateArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VgwTelemetry other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VgwTelemetry;
  }

  @override
  void update(void Function(VgwTelemetryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VgwTelemetry build() => _build();

  _$VgwTelemetry _build() {
    final _$result = _$v ??
        new _$VgwTelemetry._(
            acceptedRouteCount: BuiltValueNullFieldError.checkNotNull(
                acceptedRouteCount, r'VgwTelemetry', 'acceptedRouteCount'),
            lastStatusChange: lastStatusChange,
            outsideIpAddress: outsideIpAddress,
            status: status,
            statusMessage: statusMessage,
            certificateArn: certificateArn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
