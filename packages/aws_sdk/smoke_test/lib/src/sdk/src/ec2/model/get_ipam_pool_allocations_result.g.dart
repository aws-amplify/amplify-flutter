// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_ipam_pool_allocations_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetIpamPoolAllocationsResult extends GetIpamPoolAllocationsResult {
  @override
  final _i2.BuiltList<IpamPoolAllocation>? ipamPoolAllocations;
  @override
  final String? nextToken;

  factory _$GetIpamPoolAllocationsResult(
          [void Function(GetIpamPoolAllocationsResultBuilder)? updates]) =>
      (new GetIpamPoolAllocationsResultBuilder()..update(updates))._build();

  _$GetIpamPoolAllocationsResult._({this.ipamPoolAllocations, this.nextToken})
      : super._();

  @override
  GetIpamPoolAllocationsResult rebuild(
          void Function(GetIpamPoolAllocationsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetIpamPoolAllocationsResultBuilder toBuilder() =>
      new GetIpamPoolAllocationsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetIpamPoolAllocationsResult &&
        ipamPoolAllocations == other.ipamPoolAllocations &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ipamPoolAllocations.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetIpamPoolAllocationsResultBuilder
    implements
        Builder<GetIpamPoolAllocationsResult,
            GetIpamPoolAllocationsResultBuilder> {
  _$GetIpamPoolAllocationsResult? _$v;

  _i2.ListBuilder<IpamPoolAllocation>? _ipamPoolAllocations;
  _i2.ListBuilder<IpamPoolAllocation> get ipamPoolAllocations =>
      _$this._ipamPoolAllocations ??= new _i2.ListBuilder<IpamPoolAllocation>();
  set ipamPoolAllocations(
          _i2.ListBuilder<IpamPoolAllocation>? ipamPoolAllocations) =>
      _$this._ipamPoolAllocations = ipamPoolAllocations;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetIpamPoolAllocationsResultBuilder();

  GetIpamPoolAllocationsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipamPoolAllocations = $v.ipamPoolAllocations?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetIpamPoolAllocationsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetIpamPoolAllocationsResult;
  }

  @override
  void update(void Function(GetIpamPoolAllocationsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetIpamPoolAllocationsResult build() => _build();

  _$GetIpamPoolAllocationsResult _build() {
    _$GetIpamPoolAllocationsResult _$result;
    try {
      _$result = _$v ??
          new _$GetIpamPoolAllocationsResult._(
              ipamPoolAllocations: _ipamPoolAllocations?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipamPoolAllocations';
        _ipamPoolAllocations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetIpamPoolAllocationsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
