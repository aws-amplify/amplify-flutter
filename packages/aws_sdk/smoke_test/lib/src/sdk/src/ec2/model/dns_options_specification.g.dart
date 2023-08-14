// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dns_options_specification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DnsOptionsSpecification extends DnsOptionsSpecification {
  @override
  final DnsRecordIpType? dnsRecordIpType;
  @override
  final bool privateDnsOnlyForInboundResolverEndpoint;

  factory _$DnsOptionsSpecification(
          [void Function(DnsOptionsSpecificationBuilder)? updates]) =>
      (new DnsOptionsSpecificationBuilder()..update(updates))._build();

  _$DnsOptionsSpecification._(
      {this.dnsRecordIpType,
      required this.privateDnsOnlyForInboundResolverEndpoint})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        privateDnsOnlyForInboundResolverEndpoint,
        r'DnsOptionsSpecification',
        'privateDnsOnlyForInboundResolverEndpoint');
  }

  @override
  DnsOptionsSpecification rebuild(
          void Function(DnsOptionsSpecificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DnsOptionsSpecificationBuilder toBuilder() =>
      new DnsOptionsSpecificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DnsOptionsSpecification &&
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

class DnsOptionsSpecificationBuilder
    implements
        Builder<DnsOptionsSpecification, DnsOptionsSpecificationBuilder> {
  _$DnsOptionsSpecification? _$v;

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

  DnsOptionsSpecificationBuilder() {
    DnsOptionsSpecification._init(this);
  }

  DnsOptionsSpecificationBuilder get _$this {
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
  void replace(DnsOptionsSpecification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DnsOptionsSpecification;
  }

  @override
  void update(void Function(DnsOptionsSpecificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DnsOptionsSpecification build() => _build();

  _$DnsOptionsSpecification _build() {
    final _$result = _$v ??
        new _$DnsOptionsSpecification._(
            dnsRecordIpType: dnsRecordIpType,
            privateDnsOnlyForInboundResolverEndpoint:
                BuiltValueNullFieldError.checkNotNull(
                    privateDnsOnlyForInboundResolverEndpoint,
                    r'DnsOptionsSpecification',
                    'privateDnsOnlyForInboundResolverEndpoint'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
