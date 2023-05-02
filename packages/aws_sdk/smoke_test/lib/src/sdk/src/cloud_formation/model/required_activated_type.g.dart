// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.required_activated_type;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RequiredActivatedType extends RequiredActivatedType {
  @override
  final String? typeNameAlias;
  @override
  final String? originalTypeName;
  @override
  final String? publisherId;
  @override
  final _i2.BuiltList<int>? supportedMajorVersions;

  factory _$RequiredActivatedType(
          [void Function(RequiredActivatedTypeBuilder)? updates]) =>
      (new RequiredActivatedTypeBuilder()..update(updates))._build();

  _$RequiredActivatedType._(
      {this.typeNameAlias,
      this.originalTypeName,
      this.publisherId,
      this.supportedMajorVersions})
      : super._();

  @override
  RequiredActivatedType rebuild(
          void Function(RequiredActivatedTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RequiredActivatedTypeBuilder toBuilder() =>
      new RequiredActivatedTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RequiredActivatedType &&
        typeNameAlias == other.typeNameAlias &&
        originalTypeName == other.originalTypeName &&
        publisherId == other.publisherId &&
        supportedMajorVersions == other.supportedMajorVersions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, typeNameAlias.hashCode);
    _$hash = $jc(_$hash, originalTypeName.hashCode);
    _$hash = $jc(_$hash, publisherId.hashCode);
    _$hash = $jc(_$hash, supportedMajorVersions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RequiredActivatedTypeBuilder
    implements Builder<RequiredActivatedType, RequiredActivatedTypeBuilder> {
  _$RequiredActivatedType? _$v;

  String? _typeNameAlias;
  String? get typeNameAlias => _$this._typeNameAlias;
  set typeNameAlias(String? typeNameAlias) =>
      _$this._typeNameAlias = typeNameAlias;

  String? _originalTypeName;
  String? get originalTypeName => _$this._originalTypeName;
  set originalTypeName(String? originalTypeName) =>
      _$this._originalTypeName = originalTypeName;

  String? _publisherId;
  String? get publisherId => _$this._publisherId;
  set publisherId(String? publisherId) => _$this._publisherId = publisherId;

  _i2.ListBuilder<int>? _supportedMajorVersions;
  _i2.ListBuilder<int> get supportedMajorVersions =>
      _$this._supportedMajorVersions ??= new _i2.ListBuilder<int>();
  set supportedMajorVersions(_i2.ListBuilder<int>? supportedMajorVersions) =>
      _$this._supportedMajorVersions = supportedMajorVersions;

  RequiredActivatedTypeBuilder() {
    RequiredActivatedType._init(this);
  }

  RequiredActivatedTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _typeNameAlias = $v.typeNameAlias;
      _originalTypeName = $v.originalTypeName;
      _publisherId = $v.publisherId;
      _supportedMajorVersions = $v.supportedMajorVersions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RequiredActivatedType other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RequiredActivatedType;
  }

  @override
  void update(void Function(RequiredActivatedTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RequiredActivatedType build() => _build();

  _$RequiredActivatedType _build() {
    _$RequiredActivatedType _$result;
    try {
      _$result = _$v ??
          new _$RequiredActivatedType._(
              typeNameAlias: typeNameAlias,
              originalTypeName: originalTypeName,
              publisherId: publisherId,
              supportedMajorVersions: _supportedMajorVersions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'supportedMajorVersions';
        _supportedMajorVersions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RequiredActivatedType', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
