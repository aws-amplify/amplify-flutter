// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_private_dns_name_options_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyPrivateDnsNameOptionsRequest
    extends ModifyPrivateDnsNameOptionsRequest {
  @override
  final bool dryRun;
  @override
  final String? instanceId;
  @override
  final HostnameType? privateDnsHostnameType;
  @override
  final bool enableResourceNameDnsARecord;
  @override
  final bool enableResourceNameDnsAaaaRecord;

  factory _$ModifyPrivateDnsNameOptionsRequest(
          [void Function(ModifyPrivateDnsNameOptionsRequestBuilder)?
              updates]) =>
      (new ModifyPrivateDnsNameOptionsRequestBuilder()..update(updates))
          ._build();

  _$ModifyPrivateDnsNameOptionsRequest._(
      {required this.dryRun,
      this.instanceId,
      this.privateDnsHostnameType,
      required this.enableResourceNameDnsARecord,
      required this.enableResourceNameDnsAaaaRecord})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyPrivateDnsNameOptionsRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(enableResourceNameDnsARecord,
        r'ModifyPrivateDnsNameOptionsRequest', 'enableResourceNameDnsARecord');
    BuiltValueNullFieldError.checkNotNull(
        enableResourceNameDnsAaaaRecord,
        r'ModifyPrivateDnsNameOptionsRequest',
        'enableResourceNameDnsAaaaRecord');
  }

  @override
  ModifyPrivateDnsNameOptionsRequest rebuild(
          void Function(ModifyPrivateDnsNameOptionsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyPrivateDnsNameOptionsRequestBuilder toBuilder() =>
      new ModifyPrivateDnsNameOptionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyPrivateDnsNameOptionsRequest &&
        dryRun == other.dryRun &&
        instanceId == other.instanceId &&
        privateDnsHostnameType == other.privateDnsHostnameType &&
        enableResourceNameDnsARecord == other.enableResourceNameDnsARecord &&
        enableResourceNameDnsAaaaRecord ==
            other.enableResourceNameDnsAaaaRecord;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, privateDnsHostnameType.hashCode);
    _$hash = $jc(_$hash, enableResourceNameDnsARecord.hashCode);
    _$hash = $jc(_$hash, enableResourceNameDnsAaaaRecord.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyPrivateDnsNameOptionsRequestBuilder
    implements
        Builder<ModifyPrivateDnsNameOptionsRequest,
            ModifyPrivateDnsNameOptionsRequestBuilder> {
  _$ModifyPrivateDnsNameOptionsRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  HostnameType? _privateDnsHostnameType;
  HostnameType? get privateDnsHostnameType => _$this._privateDnsHostnameType;
  set privateDnsHostnameType(HostnameType? privateDnsHostnameType) =>
      _$this._privateDnsHostnameType = privateDnsHostnameType;

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

  ModifyPrivateDnsNameOptionsRequestBuilder() {
    ModifyPrivateDnsNameOptionsRequest._init(this);
  }

  ModifyPrivateDnsNameOptionsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _instanceId = $v.instanceId;
      _privateDnsHostnameType = $v.privateDnsHostnameType;
      _enableResourceNameDnsARecord = $v.enableResourceNameDnsARecord;
      _enableResourceNameDnsAaaaRecord = $v.enableResourceNameDnsAaaaRecord;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyPrivateDnsNameOptionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyPrivateDnsNameOptionsRequest;
  }

  @override
  void update(
      void Function(ModifyPrivateDnsNameOptionsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyPrivateDnsNameOptionsRequest build() => _build();

  _$ModifyPrivateDnsNameOptionsRequest _build() {
    final _$result = _$v ??
        new _$ModifyPrivateDnsNameOptionsRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'ModifyPrivateDnsNameOptionsRequest', 'dryRun'),
            instanceId: instanceId,
            privateDnsHostnameType: privateDnsHostnameType,
            enableResourceNameDnsARecord: BuiltValueNullFieldError.checkNotNull(
                enableResourceNameDnsARecord,
                r'ModifyPrivateDnsNameOptionsRequest',
                'enableResourceNameDnsARecord'),
            enableResourceNameDnsAaaaRecord:
                BuiltValueNullFieldError.checkNotNull(
                    enableResourceNameDnsAaaaRecord,
                    r'ModifyPrivateDnsNameOptionsRequest',
                    'enableResourceNameDnsAaaaRecord'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
