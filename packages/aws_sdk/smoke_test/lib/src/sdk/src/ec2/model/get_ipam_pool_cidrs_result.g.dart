// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_ipam_pool_cidrs_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetIpamPoolCidrsResult extends GetIpamPoolCidrsResult {
  @override
  final _i2.BuiltList<IpamPoolCidr>? ipamPoolCidrs;
  @override
  final String? nextToken;

  factory _$GetIpamPoolCidrsResult(
          [void Function(GetIpamPoolCidrsResultBuilder)? updates]) =>
      (new GetIpamPoolCidrsResultBuilder()..update(updates))._build();

  _$GetIpamPoolCidrsResult._({this.ipamPoolCidrs, this.nextToken}) : super._();

  @override
  GetIpamPoolCidrsResult rebuild(
          void Function(GetIpamPoolCidrsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetIpamPoolCidrsResultBuilder toBuilder() =>
      new GetIpamPoolCidrsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetIpamPoolCidrsResult &&
        ipamPoolCidrs == other.ipamPoolCidrs &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ipamPoolCidrs.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetIpamPoolCidrsResultBuilder
    implements Builder<GetIpamPoolCidrsResult, GetIpamPoolCidrsResultBuilder> {
  _$GetIpamPoolCidrsResult? _$v;

  _i2.ListBuilder<IpamPoolCidr>? _ipamPoolCidrs;
  _i2.ListBuilder<IpamPoolCidr> get ipamPoolCidrs =>
      _$this._ipamPoolCidrs ??= new _i2.ListBuilder<IpamPoolCidr>();
  set ipamPoolCidrs(_i2.ListBuilder<IpamPoolCidr>? ipamPoolCidrs) =>
      _$this._ipamPoolCidrs = ipamPoolCidrs;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetIpamPoolCidrsResultBuilder();

  GetIpamPoolCidrsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipamPoolCidrs = $v.ipamPoolCidrs?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetIpamPoolCidrsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetIpamPoolCidrsResult;
  }

  @override
  void update(void Function(GetIpamPoolCidrsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetIpamPoolCidrsResult build() => _build();

  _$GetIpamPoolCidrsResult _build() {
    _$GetIpamPoolCidrsResult _$result;
    try {
      _$result = _$v ??
          new _$GetIpamPoolCidrsResult._(
              ipamPoolCidrs: _ipamPoolCidrs?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipamPoolCidrs';
        _ipamPoolCidrs?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetIpamPoolCidrsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
