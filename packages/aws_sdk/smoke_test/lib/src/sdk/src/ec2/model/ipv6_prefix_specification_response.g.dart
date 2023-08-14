// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ipv6_prefix_specification_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Ipv6PrefixSpecificationResponse
    extends Ipv6PrefixSpecificationResponse {
  @override
  final String? ipv6Prefix;

  factory _$Ipv6PrefixSpecificationResponse(
          [void Function(Ipv6PrefixSpecificationResponseBuilder)? updates]) =>
      (new Ipv6PrefixSpecificationResponseBuilder()..update(updates))._build();

  _$Ipv6PrefixSpecificationResponse._({this.ipv6Prefix}) : super._();

  @override
  Ipv6PrefixSpecificationResponse rebuild(
          void Function(Ipv6PrefixSpecificationResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Ipv6PrefixSpecificationResponseBuilder toBuilder() =>
      new Ipv6PrefixSpecificationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Ipv6PrefixSpecificationResponse &&
        ipv6Prefix == other.ipv6Prefix;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ipv6Prefix.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class Ipv6PrefixSpecificationResponseBuilder
    implements
        Builder<Ipv6PrefixSpecificationResponse,
            Ipv6PrefixSpecificationResponseBuilder> {
  _$Ipv6PrefixSpecificationResponse? _$v;

  String? _ipv6Prefix;
  String? get ipv6Prefix => _$this._ipv6Prefix;
  set ipv6Prefix(String? ipv6Prefix) => _$this._ipv6Prefix = ipv6Prefix;

  Ipv6PrefixSpecificationResponseBuilder();

  Ipv6PrefixSpecificationResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipv6Prefix = $v.ipv6Prefix;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Ipv6PrefixSpecificationResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Ipv6PrefixSpecificationResponse;
  }

  @override
  void update(void Function(Ipv6PrefixSpecificationResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Ipv6PrefixSpecificationResponse build() => _build();

  _$Ipv6PrefixSpecificationResponse _build() {
    final _$result =
        _$v ?? new _$Ipv6PrefixSpecificationResponse._(ipv6Prefix: ipv6Prefix);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
