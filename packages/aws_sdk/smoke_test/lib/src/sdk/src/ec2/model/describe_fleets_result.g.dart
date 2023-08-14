// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_fleets_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeFleetsResult extends DescribeFleetsResult {
  @override
  final String? nextToken;
  @override
  final _i2.BuiltList<FleetData>? fleets;

  factory _$DescribeFleetsResult(
          [void Function(DescribeFleetsResultBuilder)? updates]) =>
      (new DescribeFleetsResultBuilder()..update(updates))._build();

  _$DescribeFleetsResult._({this.nextToken, this.fleets}) : super._();

  @override
  DescribeFleetsResult rebuild(
          void Function(DescribeFleetsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeFleetsResultBuilder toBuilder() =>
      new DescribeFleetsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeFleetsResult &&
        nextToken == other.nextToken &&
        fleets == other.fleets;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, fleets.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeFleetsResultBuilder
    implements Builder<DescribeFleetsResult, DescribeFleetsResultBuilder> {
  _$DescribeFleetsResult? _$v;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i2.ListBuilder<FleetData>? _fleets;
  _i2.ListBuilder<FleetData> get fleets =>
      _$this._fleets ??= new _i2.ListBuilder<FleetData>();
  set fleets(_i2.ListBuilder<FleetData>? fleets) => _$this._fleets = fleets;

  DescribeFleetsResultBuilder();

  DescribeFleetsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextToken = $v.nextToken;
      _fleets = $v.fleets?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeFleetsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeFleetsResult;
  }

  @override
  void update(void Function(DescribeFleetsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeFleetsResult build() => _build();

  _$DescribeFleetsResult _build() {
    _$DescribeFleetsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeFleetsResult._(
              nextToken: nextToken, fleets: _fleets?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fleets';
        _fleets?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeFleetsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
