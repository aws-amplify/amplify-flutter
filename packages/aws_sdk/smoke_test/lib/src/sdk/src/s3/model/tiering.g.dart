// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tiering.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Tiering extends Tiering {
  @override
  final int? days;
  @override
  final _i2.IntelligentTieringAccessTier accessTier;

  factory _$Tiering([void Function(TieringBuilder)? updates]) =>
      (new TieringBuilder()..update(updates))._build();

  _$Tiering._({this.days, required this.accessTier}) : super._() {
    BuiltValueNullFieldError.checkNotNull(accessTier, r'Tiering', 'accessTier');
  }

  @override
  Tiering rebuild(void Function(TieringBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TieringBuilder toBuilder() => new TieringBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Tiering &&
        days == other.days &&
        accessTier == other.accessTier;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, days.hashCode);
    _$hash = $jc(_$hash, accessTier.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TieringBuilder implements Builder<Tiering, TieringBuilder> {
  _$Tiering? _$v;

  int? _days;
  int? get days => _$this._days;
  set days(int? days) => _$this._days = days;

  _i2.IntelligentTieringAccessTier? _accessTier;
  _i2.IntelligentTieringAccessTier? get accessTier => _$this._accessTier;
  set accessTier(_i2.IntelligentTieringAccessTier? accessTier) =>
      _$this._accessTier = accessTier;

  TieringBuilder() {
    Tiering._init(this);
  }

  TieringBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _days = $v.days;
      _accessTier = $v.accessTier;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Tiering other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Tiering;
  }

  @override
  void update(void Function(TieringBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Tiering build() => _build();

  _$Tiering _build() {
    final _$result = _$v ??
        new _$Tiering._(
            days: days,
            accessTier: BuiltValueNullFieldError.checkNotNull(
                accessTier, r'Tiering', 'accessTier'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
