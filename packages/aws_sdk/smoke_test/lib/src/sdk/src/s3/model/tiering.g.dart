// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.tiering;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Tiering extends Tiering {
  @override
  final _i2.IntelligentTieringAccessTier accessTier;
  @override
  final int days;

  factory _$Tiering([void Function(TieringBuilder)? updates]) =>
      (new TieringBuilder()..update(updates))._build();

  _$Tiering._({required this.accessTier, required this.days}) : super._() {
    BuiltValueNullFieldError.checkNotNull(accessTier, r'Tiering', 'accessTier');
    BuiltValueNullFieldError.checkNotNull(days, r'Tiering', 'days');
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
        accessTier == other.accessTier &&
        days == other.days;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, accessTier.hashCode), days.hashCode));
  }
}

class TieringBuilder implements Builder<Tiering, TieringBuilder> {
  _$Tiering? _$v;

  _i2.IntelligentTieringAccessTier? _accessTier;
  _i2.IntelligentTieringAccessTier? get accessTier => _$this._accessTier;
  set accessTier(_i2.IntelligentTieringAccessTier? accessTier) =>
      _$this._accessTier = accessTier;

  int? _days;
  int? get days => _$this._days;
  set days(int? days) => _$this._days = days;

  TieringBuilder() {
    Tiering._init(this);
  }

  TieringBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessTier = $v.accessTier;
      _days = $v.days;
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
            accessTier: BuiltValueNullFieldError.checkNotNull(
                accessTier, r'Tiering', 'accessTier'),
            days: BuiltValueNullFieldError.checkNotNull(
                days, r'Tiering', 'days'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
