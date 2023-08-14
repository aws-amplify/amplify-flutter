// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_template_private_dns_name_options_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LaunchTemplatePrivateDnsNameOptionsRequest
    extends LaunchTemplatePrivateDnsNameOptionsRequest {
  @override
  final HostnameType? hostnameType;
  @override
  final bool enableResourceNameDnsARecord;
  @override
  final bool enableResourceNameDnsAaaaRecord;

  factory _$LaunchTemplatePrivateDnsNameOptionsRequest(
          [void Function(LaunchTemplatePrivateDnsNameOptionsRequestBuilder)?
              updates]) =>
      (new LaunchTemplatePrivateDnsNameOptionsRequestBuilder()..update(updates))
          ._build();

  _$LaunchTemplatePrivateDnsNameOptionsRequest._(
      {this.hostnameType,
      required this.enableResourceNameDnsARecord,
      required this.enableResourceNameDnsAaaaRecord})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        enableResourceNameDnsARecord,
        r'LaunchTemplatePrivateDnsNameOptionsRequest',
        'enableResourceNameDnsARecord');
    BuiltValueNullFieldError.checkNotNull(
        enableResourceNameDnsAaaaRecord,
        r'LaunchTemplatePrivateDnsNameOptionsRequest',
        'enableResourceNameDnsAaaaRecord');
  }

  @override
  LaunchTemplatePrivateDnsNameOptionsRequest rebuild(
          void Function(LaunchTemplatePrivateDnsNameOptionsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LaunchTemplatePrivateDnsNameOptionsRequestBuilder toBuilder() =>
      new LaunchTemplatePrivateDnsNameOptionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LaunchTemplatePrivateDnsNameOptionsRequest &&
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

class LaunchTemplatePrivateDnsNameOptionsRequestBuilder
    implements
        Builder<LaunchTemplatePrivateDnsNameOptionsRequest,
            LaunchTemplatePrivateDnsNameOptionsRequestBuilder> {
  _$LaunchTemplatePrivateDnsNameOptionsRequest? _$v;

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

  LaunchTemplatePrivateDnsNameOptionsRequestBuilder() {
    LaunchTemplatePrivateDnsNameOptionsRequest._init(this);
  }

  LaunchTemplatePrivateDnsNameOptionsRequestBuilder get _$this {
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
  void replace(LaunchTemplatePrivateDnsNameOptionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LaunchTemplatePrivateDnsNameOptionsRequest;
  }

  @override
  void update(
      void Function(LaunchTemplatePrivateDnsNameOptionsRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  LaunchTemplatePrivateDnsNameOptionsRequest build() => _build();

  _$LaunchTemplatePrivateDnsNameOptionsRequest _build() {
    final _$result = _$v ??
        new _$LaunchTemplatePrivateDnsNameOptionsRequest._(
            hostnameType: hostnameType,
            enableResourceNameDnsARecord: BuiltValueNullFieldError.checkNotNull(
                enableResourceNameDnsARecord,
                r'LaunchTemplatePrivateDnsNameOptionsRequest',
                'enableResourceNameDnsARecord'),
            enableResourceNameDnsAaaaRecord:
                BuiltValueNullFieldError.checkNotNull(
                    enableResourceNameDnsAaaaRecord,
                    r'LaunchTemplatePrivateDnsNameOptionsRequest',
                    'enableResourceNameDnsAaaaRecord'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
