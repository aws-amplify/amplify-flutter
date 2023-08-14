// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provisioned_bandwidth.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProvisionedBandwidth extends ProvisionedBandwidth {
  @override
  final DateTime? provisionTime;
  @override
  final String? provisioned;
  @override
  final DateTime? requestTime;
  @override
  final String? requested;
  @override
  final String? status;

  factory _$ProvisionedBandwidth(
          [void Function(ProvisionedBandwidthBuilder)? updates]) =>
      (new ProvisionedBandwidthBuilder()..update(updates))._build();

  _$ProvisionedBandwidth._(
      {this.provisionTime,
      this.provisioned,
      this.requestTime,
      this.requested,
      this.status})
      : super._();

  @override
  ProvisionedBandwidth rebuild(
          void Function(ProvisionedBandwidthBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProvisionedBandwidthBuilder toBuilder() =>
      new ProvisionedBandwidthBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProvisionedBandwidth &&
        provisionTime == other.provisionTime &&
        provisioned == other.provisioned &&
        requestTime == other.requestTime &&
        requested == other.requested &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, provisionTime.hashCode);
    _$hash = $jc(_$hash, provisioned.hashCode);
    _$hash = $jc(_$hash, requestTime.hashCode);
    _$hash = $jc(_$hash, requested.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ProvisionedBandwidthBuilder
    implements Builder<ProvisionedBandwidth, ProvisionedBandwidthBuilder> {
  _$ProvisionedBandwidth? _$v;

  DateTime? _provisionTime;
  DateTime? get provisionTime => _$this._provisionTime;
  set provisionTime(DateTime? provisionTime) =>
      _$this._provisionTime = provisionTime;

  String? _provisioned;
  String? get provisioned => _$this._provisioned;
  set provisioned(String? provisioned) => _$this._provisioned = provisioned;

  DateTime? _requestTime;
  DateTime? get requestTime => _$this._requestTime;
  set requestTime(DateTime? requestTime) => _$this._requestTime = requestTime;

  String? _requested;
  String? get requested => _$this._requested;
  set requested(String? requested) => _$this._requested = requested;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  ProvisionedBandwidthBuilder();

  ProvisionedBandwidthBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _provisionTime = $v.provisionTime;
      _provisioned = $v.provisioned;
      _requestTime = $v.requestTime;
      _requested = $v.requested;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProvisionedBandwidth other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProvisionedBandwidth;
  }

  @override
  void update(void Function(ProvisionedBandwidthBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProvisionedBandwidth build() => _build();

  _$ProvisionedBandwidth _build() {
    final _$result = _$v ??
        new _$ProvisionedBandwidth._(
            provisionTime: provisionTime,
            provisioned: provisioned,
            requestTime: requestTime,
            requested: requested,
            status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
