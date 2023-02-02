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
    var _$hash = 0;
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
