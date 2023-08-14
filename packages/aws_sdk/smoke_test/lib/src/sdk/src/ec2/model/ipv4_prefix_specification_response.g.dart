// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ipv4_prefix_specification_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Ipv4PrefixSpecificationResponse
    extends Ipv4PrefixSpecificationResponse {
  @override
  final String? ipv4Prefix;

  factory _$Ipv4PrefixSpecificationResponse(
          [void Function(Ipv4PrefixSpecificationResponseBuilder)? updates]) =>
      (new Ipv4PrefixSpecificationResponseBuilder()..update(updates))._build();

  _$Ipv4PrefixSpecificationResponse._({this.ipv4Prefix}) : super._();

  @override
  Ipv4PrefixSpecificationResponse rebuild(
          void Function(Ipv4PrefixSpecificationResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Ipv4PrefixSpecificationResponseBuilder toBuilder() =>
      new Ipv4PrefixSpecificationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Ipv4PrefixSpecificationResponse &&
        ipv4Prefix == other.ipv4Prefix;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ipv4Prefix.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class Ipv4PrefixSpecificationResponseBuilder
    implements
        Builder<Ipv4PrefixSpecificationResponse,
            Ipv4PrefixSpecificationResponseBuilder> {
  _$Ipv4PrefixSpecificationResponse? _$v;

  String? _ipv4Prefix;
  String? get ipv4Prefix => _$this._ipv4Prefix;
  set ipv4Prefix(String? ipv4Prefix) => _$this._ipv4Prefix = ipv4Prefix;

  Ipv4PrefixSpecificationResponseBuilder();

  Ipv4PrefixSpecificationResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipv4Prefix = $v.ipv4Prefix;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Ipv4PrefixSpecificationResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Ipv4PrefixSpecificationResponse;
  }

  @override
  void update(void Function(Ipv4PrefixSpecificationResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Ipv4PrefixSpecificationResponse build() => _build();

  _$Ipv4PrefixSpecificationResponse _build() {
    final _$result =
        _$v ?? new _$Ipv4PrefixSpecificationResponse._(ipv4Prefix: ipv4Prefix);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
