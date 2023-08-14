// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_regions_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeRegionsResult extends DescribeRegionsResult {
  @override
  final _i2.BuiltList<Region>? regions;

  factory _$DescribeRegionsResult(
          [void Function(DescribeRegionsResultBuilder)? updates]) =>
      (new DescribeRegionsResultBuilder()..update(updates))._build();

  _$DescribeRegionsResult._({this.regions}) : super._();

  @override
  DescribeRegionsResult rebuild(
          void Function(DescribeRegionsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeRegionsResultBuilder toBuilder() =>
      new DescribeRegionsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeRegionsResult && regions == other.regions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, regions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeRegionsResultBuilder
    implements Builder<DescribeRegionsResult, DescribeRegionsResultBuilder> {
  _$DescribeRegionsResult? _$v;

  _i2.ListBuilder<Region>? _regions;
  _i2.ListBuilder<Region> get regions =>
      _$this._regions ??= new _i2.ListBuilder<Region>();
  set regions(_i2.ListBuilder<Region>? regions) => _$this._regions = regions;

  DescribeRegionsResultBuilder();

  DescribeRegionsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _regions = $v.regions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeRegionsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeRegionsResult;
  }

  @override
  void update(void Function(DescribeRegionsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeRegionsResult build() => _build();

  _$DescribeRegionsResult _build() {
    _$DescribeRegionsResult _$result;
    try {
      _$result =
          _$v ?? new _$DescribeRegionsResult._(regions: _regions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'regions';
        _regions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeRegionsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
