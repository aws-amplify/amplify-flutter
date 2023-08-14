// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'private_dns_name_options_on_launch.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PrivateDnsNameOptionsOnLaunch extends PrivateDnsNameOptionsOnLaunch {
  @override
  final HostnameType? hostnameType;
  @override
  final bool enableResourceNameDnsARecord;
  @override
  final bool enableResourceNameDnsAaaaRecord;

  factory _$PrivateDnsNameOptionsOnLaunch(
          [void Function(PrivateDnsNameOptionsOnLaunchBuilder)? updates]) =>
      (new PrivateDnsNameOptionsOnLaunchBuilder()..update(updates))._build();

  _$PrivateDnsNameOptionsOnLaunch._(
      {this.hostnameType,
      required this.enableResourceNameDnsARecord,
      required this.enableResourceNameDnsAaaaRecord})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(enableResourceNameDnsARecord,
        r'PrivateDnsNameOptionsOnLaunch', 'enableResourceNameDnsARecord');
    BuiltValueNullFieldError.checkNotNull(enableResourceNameDnsAaaaRecord,
        r'PrivateDnsNameOptionsOnLaunch', 'enableResourceNameDnsAaaaRecord');
  }

  @override
  PrivateDnsNameOptionsOnLaunch rebuild(
          void Function(PrivateDnsNameOptionsOnLaunchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrivateDnsNameOptionsOnLaunchBuilder toBuilder() =>
      new PrivateDnsNameOptionsOnLaunchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrivateDnsNameOptionsOnLaunch &&
        hostnameType == other.hostnameType &&
        enableResourceNameDnsARecord == other.enableResourceNameDnsARecord &&
        enableResourceNameDnsAaaaRecord ==
            other.enableResourceNameDnsAaaaRecord;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, hostnameType.hashCode);
    _$hash = $jc(_$hash, enableResourceNameDnsARecord.hashCode);
    _$hash = $jc(_$hash, enableResourceNameDnsAaaaRecord.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PrivateDnsNameOptionsOnLaunchBuilder
    implements
        Builder<PrivateDnsNameOptionsOnLaunch,
            PrivateDnsNameOptionsOnLaunchBuilder> {
  _$PrivateDnsNameOptionsOnLaunch? _$v;

  HostnameType? _hostnameType;
  HostnameType? get hostnameType => _$this._hostnameType;
  set hostnameType(HostnameType? hostnameType) =>
      _$this._hostnameType = hostnameType;

  bool? _enableResourceNameDnsARecord;
  bool? get enableResourceNameDnsARecord =>
      _$this._enableResourceNameDnsARecord;
  set enableResourceNameDnsARecord(bool? enableResourceNameDnsARecord) =>
      _$this._enableResourceNameDnsARecord = enableResourceNameDnsARecord;

  bool? _enableResourceNameDnsAaaaRecord;
  bool? get enableResourceNameDnsAaaaRecord =>
      _$this._enableResourceNameDnsAaaaRecord;
  set enableResourceNameDnsAaaaRecord(bool? enableResourceNameDnsAaaaRecord) =>
      _$this._enableResourceNameDnsAaaaRecord = enableResourceNameDnsAaaaRecord;

  PrivateDnsNameOptionsOnLaunchBuilder() {
    PrivateDnsNameOptionsOnLaunch._init(this);
  }

  PrivateDnsNameOptionsOnLaunchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hostnameType = $v.hostnameType;
      _enableResourceNameDnsARecord = $v.enableResourceNameDnsARecord;
      _enableResourceNameDnsAaaaRecord = $v.enableResourceNameDnsAaaaRecord;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrivateDnsNameOptionsOnLaunch other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PrivateDnsNameOptionsOnLaunch;
  }

  @override
  void update(void Function(PrivateDnsNameOptionsOnLaunchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrivateDnsNameOptionsOnLaunch build() => _build();

  _$PrivateDnsNameOptionsOnLaunch _build() {
    final _$result = _$v ??
        new _$PrivateDnsNameOptionsOnLaunch._(
            hostnameType: hostnameType,
            enableResourceNameDnsARecord: BuiltValueNullFieldError.checkNotNull(
                enableResourceNameDnsARecord,
                r'PrivateDnsNameOptionsOnLaunch',
                'enableResourceNameDnsARecord'),
            enableResourceNameDnsAaaaRecord:
                BuiltValueNullFieldError.checkNotNull(
                    enableResourceNameDnsAaaaRecord,
                    r'PrivateDnsNameOptionsOnLaunch',
                    'enableResourceNameDnsAaaaRecord'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
