// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_ipv4_pool.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PublicIpv4Pool extends PublicIpv4Pool {
  @override
  final String? poolId;
  @override
  final String? description;
  @override
  final _i2.BuiltList<PublicIpv4PoolRange>? poolAddressRanges;
  @override
  final int totalAddressCount;
  @override
  final int totalAvailableAddressCount;
  @override
  final String? networkBorderGroup;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$PublicIpv4Pool([void Function(PublicIpv4PoolBuilder)? updates]) =>
      (new PublicIpv4PoolBuilder()..update(updates))._build();

  _$PublicIpv4Pool._(
      {this.poolId,
      this.description,
      this.poolAddressRanges,
      required this.totalAddressCount,
      required this.totalAvailableAddressCount,
      this.networkBorderGroup,
      this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        totalAddressCount, r'PublicIpv4Pool', 'totalAddressCount');
    BuiltValueNullFieldError.checkNotNull(totalAvailableAddressCount,
        r'PublicIpv4Pool', 'totalAvailableAddressCount');
  }

  @override
  PublicIpv4Pool rebuild(void Function(PublicIpv4PoolBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PublicIpv4PoolBuilder toBuilder() =>
      new PublicIpv4PoolBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PublicIpv4Pool &&
        poolId == other.poolId &&
        description == other.description &&
        poolAddressRanges == other.poolAddressRanges &&
        totalAddressCount == other.totalAddressCount &&
        totalAvailableAddressCount == other.totalAvailableAddressCount &&
        networkBorderGroup == other.networkBorderGroup &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, poolId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, poolAddressRanges.hashCode);
    _$hash = $jc(_$hash, totalAddressCount.hashCode);
    _$hash = $jc(_$hash, totalAvailableAddressCount.hashCode);
    _$hash = $jc(_$hash, networkBorderGroup.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PublicIpv4PoolBuilder
    implements Builder<PublicIpv4Pool, PublicIpv4PoolBuilder> {
  _$PublicIpv4Pool? _$v;

  String? _poolId;
  String? get poolId => _$this._poolId;
  set poolId(String? poolId) => _$this._poolId = poolId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i2.ListBuilder<PublicIpv4PoolRange>? _poolAddressRanges;
  _i2.ListBuilder<PublicIpv4PoolRange> get poolAddressRanges =>
      _$this._poolAddressRanges ??= new _i2.ListBuilder<PublicIpv4PoolRange>();
  set poolAddressRanges(
          _i2.ListBuilder<PublicIpv4PoolRange>? poolAddressRanges) =>
      _$this._poolAddressRanges = poolAddressRanges;

  int? _totalAddressCount;
  int? get totalAddressCount => _$this._totalAddressCount;
  set totalAddressCount(int? totalAddressCount) =>
      _$this._totalAddressCount = totalAddressCount;

  int? _totalAvailableAddressCount;
  int? get totalAvailableAddressCount => _$this._totalAvailableAddressCount;
  set totalAvailableAddressCount(int? totalAvailableAddressCount) =>
      _$this._totalAvailableAddressCount = totalAvailableAddressCount;

  String? _networkBorderGroup;
  String? get networkBorderGroup => _$this._networkBorderGroup;
  set networkBorderGroup(String? networkBorderGroup) =>
      _$this._networkBorderGroup = networkBorderGroup;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  PublicIpv4PoolBuilder() {
    PublicIpv4Pool._init(this);
  }

  PublicIpv4PoolBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _poolId = $v.poolId;
      _description = $v.description;
      _poolAddressRanges = $v.poolAddressRanges?.toBuilder();
      _totalAddressCount = $v.totalAddressCount;
      _totalAvailableAddressCount = $v.totalAvailableAddressCount;
      _networkBorderGroup = $v.networkBorderGroup;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PublicIpv4Pool other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PublicIpv4Pool;
  }

  @override
  void update(void Function(PublicIpv4PoolBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PublicIpv4Pool build() => _build();

  _$PublicIpv4Pool _build() {
    _$PublicIpv4Pool _$result;
    try {
      _$result = _$v ??
          new _$PublicIpv4Pool._(
              poolId: poolId,
              description: description,
              poolAddressRanges: _poolAddressRanges?.build(),
              totalAddressCount: BuiltValueNullFieldError.checkNotNull(
                  totalAddressCount, r'PublicIpv4Pool', 'totalAddressCount'),
              totalAvailableAddressCount: BuiltValueNullFieldError.checkNotNull(
                  totalAvailableAddressCount,
                  r'PublicIpv4Pool',
                  'totalAvailableAddressCount'),
              networkBorderGroup: networkBorderGroup,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'poolAddressRanges';
        _poolAddressRanges?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PublicIpv4Pool', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
