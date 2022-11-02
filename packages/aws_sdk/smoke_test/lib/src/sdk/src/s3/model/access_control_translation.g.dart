// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.access_control_translation;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccessControlTranslation extends AccessControlTranslation {
  @override
  final _i2.OwnerOverride owner;

  factory _$AccessControlTranslation(
          [void Function(AccessControlTranslationBuilder)? updates]) =>
      (new AccessControlTranslationBuilder()..update(updates))._build();

  _$AccessControlTranslation._({required this.owner}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        owner, r'AccessControlTranslation', 'owner');
  }

  @override
  AccessControlTranslation rebuild(
          void Function(AccessControlTranslationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccessControlTranslationBuilder toBuilder() =>
      new AccessControlTranslationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccessControlTranslation && owner == other.owner;
  }

  @override
  int get hashCode {
    return $jf($jc(0, owner.hashCode));
  }
}

class AccessControlTranslationBuilder
    implements
        Builder<AccessControlTranslation, AccessControlTranslationBuilder> {
  _$AccessControlTranslation? _$v;

  _i2.OwnerOverride? _owner;
  _i2.OwnerOverride? get owner => _$this._owner;
  set owner(_i2.OwnerOverride? owner) => _$this._owner = owner;

  AccessControlTranslationBuilder() {
    AccessControlTranslation._init(this);
  }

  AccessControlTranslationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _owner = $v.owner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccessControlTranslation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccessControlTranslation;
  }

  @override
  void update(void Function(AccessControlTranslationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccessControlTranslation build() => _build();

  _$AccessControlTranslation _build() {
    final _$result = _$v ??
        new _$AccessControlTranslation._(
            owner: BuiltValueNullFieldError.checkNotNull(
                owner, r'AccessControlTranslation', 'owner'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
