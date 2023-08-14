// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_ipam_resource_cidrs_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetIpamResourceCidrsResult extends GetIpamResourceCidrsResult {
  @override
  final String? nextToken;
  @override
  final _i2.BuiltList<IpamResourceCidr>? ipamResourceCidrs;

  factory _$GetIpamResourceCidrsResult(
          [void Function(GetIpamResourceCidrsResultBuilder)? updates]) =>
      (new GetIpamResourceCidrsResultBuilder()..update(updates))._build();

  _$GetIpamResourceCidrsResult._({this.nextToken, this.ipamResourceCidrs})
      : super._();

  @override
  GetIpamResourceCidrsResult rebuild(
          void Function(GetIpamResourceCidrsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetIpamResourceCidrsResultBuilder toBuilder() =>
      new GetIpamResourceCidrsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetIpamResourceCidrsResult &&
        nextToken == other.nextToken &&
        ipamResourceCidrs == other.ipamResourceCidrs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, ipamResourceCidrs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetIpamResourceCidrsResultBuilder
    implements
        Builder<GetIpamResourceCidrsResult, GetIpamResourceCidrsResultBuilder> {
  _$GetIpamResourceCidrsResult? _$v;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i2.ListBuilder<IpamResourceCidr>? _ipamResourceCidrs;
  _i2.ListBuilder<IpamResourceCidr> get ipamResourceCidrs =>
      _$this._ipamResourceCidrs ??= new _i2.ListBuilder<IpamResourceCidr>();
  set ipamResourceCidrs(_i2.ListBuilder<IpamResourceCidr>? ipamResourceCidrs) =>
      _$this._ipamResourceCidrs = ipamResourceCidrs;

  GetIpamResourceCidrsResultBuilder();

  GetIpamResourceCidrsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextToken = $v.nextToken;
      _ipamResourceCidrs = $v.ipamResourceCidrs?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetIpamResourceCidrsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetIpamResourceCidrsResult;
  }

  @override
  void update(void Function(GetIpamResourceCidrsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetIpamResourceCidrsResult build() => _build();

  _$GetIpamResourceCidrsResult _build() {
    _$GetIpamResourceCidrsResult _$result;
    try {
      _$result = _$v ??
          new _$GetIpamResourceCidrsResult._(
              nextToken: nextToken,
              ipamResourceCidrs: _ipamResourceCidrs?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipamResourceCidrs';
        _ipamResourceCidrs?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetIpamResourceCidrsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
