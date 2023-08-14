// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_coip_pools_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeCoipPoolsResult extends DescribeCoipPoolsResult {
  @override
  final _i2.BuiltList<CoipPool>? coipPools;
  @override
  final String? nextToken;

  factory _$DescribeCoipPoolsResult(
          [void Function(DescribeCoipPoolsResultBuilder)? updates]) =>
      (new DescribeCoipPoolsResultBuilder()..update(updates))._build();

  _$DescribeCoipPoolsResult._({this.coipPools, this.nextToken}) : super._();

  @override
  DescribeCoipPoolsResult rebuild(
          void Function(DescribeCoipPoolsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeCoipPoolsResultBuilder toBuilder() =>
      new DescribeCoipPoolsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeCoipPoolsResult &&
        coipPools == other.coipPools &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, coipPools.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeCoipPoolsResultBuilder
    implements
        Builder<DescribeCoipPoolsResult, DescribeCoipPoolsResultBuilder> {
  _$DescribeCoipPoolsResult? _$v;

  _i2.ListBuilder<CoipPool>? _coipPools;
  _i2.ListBuilder<CoipPool> get coipPools =>
      _$this._coipPools ??= new _i2.ListBuilder<CoipPool>();
  set coipPools(_i2.ListBuilder<CoipPool>? coipPools) =>
      _$this._coipPools = coipPools;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeCoipPoolsResultBuilder();

  DescribeCoipPoolsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _coipPools = $v.coipPools?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeCoipPoolsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeCoipPoolsResult;
  }

  @override
  void update(void Function(DescribeCoipPoolsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeCoipPoolsResult build() => _build();

  _$DescribeCoipPoolsResult _build() {
    _$DescribeCoipPoolsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeCoipPoolsResult._(
              coipPools: _coipPools?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'coipPools';
        _coipPools?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeCoipPoolsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
