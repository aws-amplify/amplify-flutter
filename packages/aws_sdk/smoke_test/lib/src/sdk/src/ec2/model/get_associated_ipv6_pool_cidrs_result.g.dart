// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_associated_ipv6_pool_cidrs_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAssociatedIpv6PoolCidrsResult
    extends GetAssociatedIpv6PoolCidrsResult {
  @override
  final _i2.BuiltList<Ipv6CidrAssociation>? ipv6CidrAssociations;
  @override
  final String? nextToken;

  factory _$GetAssociatedIpv6PoolCidrsResult(
          [void Function(GetAssociatedIpv6PoolCidrsResultBuilder)? updates]) =>
      (new GetAssociatedIpv6PoolCidrsResultBuilder()..update(updates))._build();

  _$GetAssociatedIpv6PoolCidrsResult._(
      {this.ipv6CidrAssociations, this.nextToken})
      : super._();

  @override
  GetAssociatedIpv6PoolCidrsResult rebuild(
          void Function(GetAssociatedIpv6PoolCidrsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAssociatedIpv6PoolCidrsResultBuilder toBuilder() =>
      new GetAssociatedIpv6PoolCidrsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAssociatedIpv6PoolCidrsResult &&
        ipv6CidrAssociations == other.ipv6CidrAssociations &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ipv6CidrAssociations.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetAssociatedIpv6PoolCidrsResultBuilder
    implements
        Builder<GetAssociatedIpv6PoolCidrsResult,
            GetAssociatedIpv6PoolCidrsResultBuilder> {
  _$GetAssociatedIpv6PoolCidrsResult? _$v;

  _i2.ListBuilder<Ipv6CidrAssociation>? _ipv6CidrAssociations;
  _i2.ListBuilder<Ipv6CidrAssociation> get ipv6CidrAssociations =>
      _$this._ipv6CidrAssociations ??=
          new _i2.ListBuilder<Ipv6CidrAssociation>();
  set ipv6CidrAssociations(
          _i2.ListBuilder<Ipv6CidrAssociation>? ipv6CidrAssociations) =>
      _$this._ipv6CidrAssociations = ipv6CidrAssociations;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetAssociatedIpv6PoolCidrsResultBuilder();

  GetAssociatedIpv6PoolCidrsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipv6CidrAssociations = $v.ipv6CidrAssociations?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetAssociatedIpv6PoolCidrsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAssociatedIpv6PoolCidrsResult;
  }

  @override
  void update(void Function(GetAssociatedIpv6PoolCidrsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAssociatedIpv6PoolCidrsResult build() => _build();

  _$GetAssociatedIpv6PoolCidrsResult _build() {
    _$GetAssociatedIpv6PoolCidrsResult _$result;
    try {
      _$result = _$v ??
          new _$GetAssociatedIpv6PoolCidrsResult._(
              ipv6CidrAssociations: _ipv6CidrAssociations?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipv6CidrAssociations';
        _ipv6CidrAssociations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetAssociatedIpv6PoolCidrsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
