// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'path_request_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PathRequestFilter extends PathRequestFilter {
  @override
  final String? sourceAddress;
  @override
  final RequestFilterPortRange? sourcePortRange;
  @override
  final String? destinationAddress;
  @override
  final RequestFilterPortRange? destinationPortRange;

  factory _$PathRequestFilter(
          [void Function(PathRequestFilterBuilder)? updates]) =>
      (new PathRequestFilterBuilder()..update(updates))._build();

  _$PathRequestFilter._(
      {this.sourceAddress,
      this.sourcePortRange,
      this.destinationAddress,
      this.destinationPortRange})
      : super._();

  @override
  PathRequestFilter rebuild(void Function(PathRequestFilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PathRequestFilterBuilder toBuilder() =>
      new PathRequestFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PathRequestFilter &&
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

class PathRequestFilterBuilder
    implements Builder<PathRequestFilter, PathRequestFilterBuilder> {
  _$PathRequestFilter? _$v;

  String? _sourceAddress;
  String? get sourceAddress => _$this._sourceAddress;
  set sourceAddress(String? sourceAddress) =>
      _$this._sourceAddress = sourceAddress;

  RequestFilterPortRangeBuilder? _sourcePortRange;
  RequestFilterPortRangeBuilder get sourcePortRange =>
      _$this._sourcePortRange ??= new RequestFilterPortRangeBuilder();
  set sourcePortRange(RequestFilterPortRangeBuilder? sourcePortRange) =>
      _$this._sourcePortRange = sourcePortRange;

  String? _destinationAddress;
  String? get destinationAddress => _$this._destinationAddress;
  set destinationAddress(String? destinationAddress) =>
      _$this._destinationAddress = destinationAddress;

  RequestFilterPortRangeBuilder? _destinationPortRange;
  RequestFilterPortRangeBuilder get destinationPortRange =>
      _$this._destinationPortRange ??= new RequestFilterPortRangeBuilder();
  set destinationPortRange(
          RequestFilterPortRangeBuilder? destinationPortRange) =>
      _$this._destinationPortRange = destinationPortRange;

  PathRequestFilterBuilder();

  PathRequestFilterBuilder get _$this {
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
  void replace(PathRequestFilter other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PathRequestFilter;
  }

  @override
  void update(void Function(PathRequestFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PathRequestFilter build() => _build();

  _$PathRequestFilter _build() {
    _$PathRequestFilter _$result;
    try {
      _$result = _$v ??
          new _$PathRequestFilter._(
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
            r'PathRequestFilter', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
