// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'private_dns_name_options_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PrivateDnsNameOptionsResponse extends PrivateDnsNameOptionsResponse {
  @override
  final HostnameType? hostnameType;
  @override
  final bool enableResourceNameDnsARecord;
  @override
  final bool enableResourceNameDnsAaaaRecord;

  factory _$PrivateDnsNameOptionsResponse(
          [void Function(PrivateDnsNameOptionsResponseBuilder)? updates]) =>
      (new PrivateDnsNameOptionsResponseBuilder()..update(updates))._build();

  _$PrivateDnsNameOptionsResponse._(
      {this.hostnameType,
      required this.enableResourceNameDnsARecord,
      required this.enableResourceNameDnsAaaaRecord})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(enableResourceNameDnsARecord,
        r'PrivateDnsNameOptionsResponse', 'enableResourceNameDnsARecord');
    BuiltValueNullFieldError.checkNotNull(enableResourceNameDnsAaaaRecord,
        r'PrivateDnsNameOptionsResponse', 'enableResourceNameDnsAaaaRecord');
  }

  @override
  PrivateDnsNameOptionsResponse rebuild(
          void Function(PrivateDnsNameOptionsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrivateDnsNameOptionsResponseBuilder toBuilder() =>
      new PrivateDnsNameOptionsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrivateDnsNameOptionsResponse &&
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

class PrivateDnsNameOptionsResponseBuilder
    implements
        Builder<PrivateDnsNameOptionsResponse,
            PrivateDnsNameOptionsResponseBuilder> {
  _$PrivateDnsNameOptionsResponse? _$v;

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

  PrivateDnsNameOptionsResponseBuilder() {
    PrivateDnsNameOptionsResponse._init(this);
  }

  PrivateDnsNameOptionsResponseBuilder get _$this {
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
  void replace(PrivateDnsNameOptionsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PrivateDnsNameOptionsResponse;
  }

  @override
  void update(void Function(PrivateDnsNameOptionsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrivateDnsNameOptionsResponse build() => _build();

  _$PrivateDnsNameOptionsResponse _build() {
    final _$result = _$v ??
        new _$PrivateDnsNameOptionsResponse._(
            hostnameType: hostnameType,
            enableResourceNameDnsARecord: BuiltValueNullFieldError.checkNotNull(
                enableResourceNameDnsARecord,
                r'PrivateDnsNameOptionsResponse',
                'enableResourceNameDnsARecord'),
            enableResourceNameDnsAaaaRecord:
                BuiltValueNullFieldError.checkNotNull(
                    enableResourceNameDnsAaaaRecord,
                    r'PrivateDnsNameOptionsResponse',
                    'enableResourceNameDnsAaaaRecord'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
