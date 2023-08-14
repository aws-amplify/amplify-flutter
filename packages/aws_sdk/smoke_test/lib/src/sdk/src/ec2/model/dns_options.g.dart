// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dns_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DnsOptions extends DnsOptions {
  @override
  final DnsRecordIpType? dnsRecordIpType;
  @override
  final bool privateDnsOnlyForInboundResolverEndpoint;

  factory _$DnsOptions([void Function(DnsOptionsBuilder)? updates]) =>
      (new DnsOptionsBuilder()..update(updates))._build();

  _$DnsOptions._(
      {this.dnsRecordIpType,
      required this.privateDnsOnlyForInboundResolverEndpoint})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        privateDnsOnlyForInboundResolverEndpoint,
        r'DnsOptions',
        'privateDnsOnlyForInboundResolverEndpoint');
  }

  @override
  DnsOptions rebuild(void Function(DnsOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DnsOptionsBuilder toBuilder() => new DnsOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DnsOptions &&
        dnsRecordIpType == other.dnsRecordIpType &&
        privateDnsOnlyForInboundResolverEndpoint ==
            other.privateDnsOnlyForInboundResolverEndpoint;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dnsRecordIpType.hashCode);
    _$hash = $jc(_$hash, privateDnsOnlyForInboundResolverEndpoint.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DnsOptionsBuilder implements Builder<DnsOptions, DnsOptionsBuilder> {
  _$DnsOptions? _$v;

  DnsRecordIpType? _dnsRecordIpType;
  DnsRecordIpType? get dnsRecordIpType => _$this._dnsRecordIpType;
  set dnsRecordIpType(DnsRecordIpType? dnsRecordIpType) =>
      _$this._dnsRecordIpType = dnsRecordIpType;

  bool? _privateDnsOnlyForInboundResolverEndpoint;
  bool? get privateDnsOnlyForInboundResolverEndpoint =>
      _$this._privateDnsOnlyForInboundResolverEndpoint;
  set privateDnsOnlyForInboundResolverEndpoint(
          bool? privateDnsOnlyForInboundResolverEndpoint) =>
      _$this._privateDnsOnlyForInboundResolverEndpoint =
          privateDnsOnlyForInboundResolverEndpoint;

  DnsOptionsBuilder() {
    DnsOptions._init(this);
  }

  DnsOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dnsRecordIpType = $v.dnsRecordIpType;
      _privateDnsOnlyForInboundResolverEndpoint =
          $v.privateDnsOnlyForInboundResolverEndpoint;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DnsOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DnsOptions;
  }

  @override
  void update(void Function(DnsOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DnsOptions build() => _build();

  _$DnsOptions _build() {
    final _$result = _$v ??
        new _$DnsOptions._(
            dnsRecordIpType: dnsRecordIpType,
            privateDnsOnlyForInboundResolverEndpoint:
                BuiltValueNullFieldError.checkNotNull(
                    privateDnsOnlyForInboundResolverEndpoint,
                    r'DnsOptions',
                    'privateDnsOnlyForInboundResolverEndpoint'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
