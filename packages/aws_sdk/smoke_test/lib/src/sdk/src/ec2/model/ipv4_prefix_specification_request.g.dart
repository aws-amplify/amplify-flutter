// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ipv4_prefix_specification_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Ipv4PrefixSpecificationRequest extends Ipv4PrefixSpecificationRequest {
  @override
  final String? ipv4Prefix;

  factory _$Ipv4PrefixSpecificationRequest(
          [void Function(Ipv4PrefixSpecificationRequestBuilder)? updates]) =>
      (new Ipv4PrefixSpecificationRequestBuilder()..update(updates))._build();

  _$Ipv4PrefixSpecificationRequest._({this.ipv4Prefix}) : super._();

  @override
  Ipv4PrefixSpecificationRequest rebuild(
          void Function(Ipv4PrefixSpecificationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Ipv4PrefixSpecificationRequestBuilder toBuilder() =>
      new Ipv4PrefixSpecificationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Ipv4PrefixSpecificationRequest &&
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

class Ipv4PrefixSpecificationRequestBuilder
    implements
        Builder<Ipv4PrefixSpecificationRequest,
            Ipv4PrefixSpecificationRequestBuilder> {
  _$Ipv4PrefixSpecificationRequest? _$v;

  String? _ipv4Prefix;
  String? get ipv4Prefix => _$this._ipv4Prefix;
  set ipv4Prefix(String? ipv4Prefix) => _$this._ipv4Prefix = ipv4Prefix;

  Ipv4PrefixSpecificationRequestBuilder();

  Ipv4PrefixSpecificationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipv4Prefix = $v.ipv4Prefix;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Ipv4PrefixSpecificationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Ipv4PrefixSpecificationRequest;
  }

  @override
  void update(void Function(Ipv4PrefixSpecificationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Ipv4PrefixSpecificationRequest build() => _build();

  _$Ipv4PrefixSpecificationRequest _build() {
    final _$result =
        _$v ?? new _$Ipv4PrefixSpecificationRequest._(ipv4Prefix: ipv4Prefix);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
