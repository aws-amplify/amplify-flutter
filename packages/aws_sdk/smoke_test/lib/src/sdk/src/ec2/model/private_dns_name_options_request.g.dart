// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'private_dns_name_options_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PrivateDnsNameOptionsRequest extends PrivateDnsNameOptionsRequest {
  @override
  final HostnameType? hostnameType;
  @override
  final bool enableResourceNameDnsARecord;
  @override
  final bool enableResourceNameDnsAaaaRecord;

  factory _$PrivateDnsNameOptionsRequest(
          [void Function(PrivateDnsNameOptionsRequestBuilder)? updates]) =>
      (new PrivateDnsNameOptionsRequestBuilder()..update(updates))._build();

  _$PrivateDnsNameOptionsRequest._(
      {this.hostnameType,
      required this.enableResourceNameDnsARecord,
      required this.enableResourceNameDnsAaaaRecord})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(enableResourceNameDnsARecord,
        r'PrivateDnsNameOptionsRequest', 'enableResourceNameDnsARecord');
    BuiltValueNullFieldError.checkNotNull(enableResourceNameDnsAaaaRecord,
        r'PrivateDnsNameOptionsRequest', 'enableResourceNameDnsAaaaRecord');
  }

  @override
  PrivateDnsNameOptionsRequest rebuild(
          void Function(PrivateDnsNameOptionsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrivateDnsNameOptionsRequestBuilder toBuilder() =>
      new PrivateDnsNameOptionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrivateDnsNameOptionsRequest &&
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

class PrivateDnsNameOptionsRequestBuilder
    implements
        Builder<PrivateDnsNameOptionsRequest,
            PrivateDnsNameOptionsRequestBuilder> {
  _$PrivateDnsNameOptionsRequest? _$v;

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

  PrivateDnsNameOptionsRequestBuilder() {
    PrivateDnsNameOptionsRequest._init(this);
  }

  PrivateDnsNameOptionsRequestBuilder get _$this {
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
  void replace(PrivateDnsNameOptionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PrivateDnsNameOptionsRequest;
  }

  @override
  void update(void Function(PrivateDnsNameOptionsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrivateDnsNameOptionsRequest build() => _build();

  _$PrivateDnsNameOptionsRequest _build() {
    final _$result = _$v ??
        new _$PrivateDnsNameOptionsRequest._(
            hostnameType: hostnameType,
            enableResourceNameDnsARecord: BuiltValueNullFieldError.checkNotNull(
                enableResourceNameDnsARecord,
                r'PrivateDnsNameOptionsRequest',
                'enableResourceNameDnsARecord'),
            enableResourceNameDnsAaaaRecord:
                BuiltValueNullFieldError.checkNotNull(
                    enableResourceNameDnsAaaaRecord,
                    r'PrivateDnsNameOptionsRequest',
                    'enableResourceNameDnsAaaaRecord'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
