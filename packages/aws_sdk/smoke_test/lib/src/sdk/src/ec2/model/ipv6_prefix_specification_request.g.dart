// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ipv6_prefix_specification_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Ipv6PrefixSpecificationRequest extends Ipv6PrefixSpecificationRequest {
  @override
  final String? ipv6Prefix;

  factory _$Ipv6PrefixSpecificationRequest(
          [void Function(Ipv6PrefixSpecificationRequestBuilder)? updates]) =>
      (new Ipv6PrefixSpecificationRequestBuilder()..update(updates))._build();

  _$Ipv6PrefixSpecificationRequest._({this.ipv6Prefix}) : super._();

  @override
  Ipv6PrefixSpecificationRequest rebuild(
          void Function(Ipv6PrefixSpecificationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Ipv6PrefixSpecificationRequestBuilder toBuilder() =>
      new Ipv6PrefixSpecificationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Ipv6PrefixSpecificationRequest &&
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

class Ipv6PrefixSpecificationRequestBuilder
    implements
        Builder<Ipv6PrefixSpecificationRequest,
            Ipv6PrefixSpecificationRequestBuilder> {
  _$Ipv6PrefixSpecificationRequest? _$v;

  String? _ipv6Prefix;
  String? get ipv6Prefix => _$this._ipv6Prefix;
  set ipv6Prefix(String? ipv6Prefix) => _$this._ipv6Prefix = ipv6Prefix;

  Ipv6PrefixSpecificationRequestBuilder();

  Ipv6PrefixSpecificationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipv6Prefix = $v.ipv6Prefix;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Ipv6PrefixSpecificationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Ipv6PrefixSpecificationRequest;
  }

  @override
  void update(void Function(Ipv6PrefixSpecificationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Ipv6PrefixSpecificationRequest build() => _build();

  _$Ipv6PrefixSpecificationRequest _build() {
    final _$result =
        _$v ?? new _$Ipv6PrefixSpecificationRequest._(ipv6Prefix: ipv6Prefix);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
