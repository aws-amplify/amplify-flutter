// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'path_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PathFilter extends PathFilter {
  @override
  final String? sourceAddress;
  @override
  final FilterPortRange? sourcePortRange;
  @override
  final String? destinationAddress;
  @override
  final FilterPortRange? destinationPortRange;

  factory _$PathFilter([void Function(PathFilterBuilder)? updates]) =>
      (new PathFilterBuilder()..update(updates))._build();

  _$PathFilter._(
      {this.sourceAddress,
      this.sourcePortRange,
      this.destinationAddress,
      this.destinationPortRange})
      : super._();

  @override
  PathFilter rebuild(void Function(PathFilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PathFilterBuilder toBuilder() => new PathFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PathFilter &&
        sourceAddress == other.sourceAddress &&
        sourcePortRange == other.sourcePortRange &&
        destinationAddress == other.destinationAddress &&
        destinationPortRange == other.destinationPortRange;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sourceAddress.hashCode);
    _$hash = $jc(_$hash, sourcePortRange.hashCode);
    _$hash = $jc(_$hash, destinationAddress.hashCode);
    _$hash = $jc(_$hash, destinationPortRange.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PathFilterBuilder implements Builder<PathFilter, PathFilterBuilder> {
  _$PathFilter? _$v;

  String? _sourceAddress;
  String? get sourceAddress => _$this._sourceAddress;
  set sourceAddress(String? sourceAddress) =>
      _$this._sourceAddress = sourceAddress;

  FilterPortRangeBuilder? _sourcePortRange;
  FilterPortRangeBuilder get sourcePortRange =>
      _$this._sourcePortRange ??= new FilterPortRangeBuilder();
  set sourcePortRange(FilterPortRangeBuilder? sourcePortRange) =>
      _$this._sourcePortRange = sourcePortRange;

  String? _destinationAddress;
  String? get destinationAddress => _$this._destinationAddress;
  set destinationAddress(String? destinationAddress) =>
      _$this._destinationAddress = destinationAddress;

  FilterPortRangeBuilder? _destinationPortRange;
  FilterPortRangeBuilder get destinationPortRange =>
      _$this._destinationPortRange ??= new FilterPortRangeBuilder();
  set destinationPortRange(FilterPortRangeBuilder? destinationPortRange) =>
      _$this._destinationPortRange = destinationPortRange;

  PathFilterBuilder();

  PathFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sourceAddress = $v.sourceAddress;
      _sourcePortRange = $v.sourcePortRange?.toBuilder();
      _destinationAddress = $v.destinationAddress;
      _destinationPortRange = $v.destinationPortRange?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PathFilter other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PathFilter;
  }

  @override
  void update(void Function(PathFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PathFilter build() => _build();

  _$PathFilter _build() {
    _$PathFilter _$result;
    try {
      _$result = _$v ??
          new _$PathFilter._(
              sourceAddress: sourceAddress,
              sourcePortRange: _sourcePortRange?.build(),
              destinationAddress: destinationAddress,
              destinationPortRange: _destinationPortRange?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sourcePortRange';
        _sourcePortRange?.build();

        _$failedField = 'destinationPortRange';
        _destinationPortRange?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PathFilter', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
