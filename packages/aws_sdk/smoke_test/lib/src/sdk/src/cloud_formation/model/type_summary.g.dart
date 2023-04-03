// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.type_summary;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TypeSummary extends TypeSummary {
  @override
  final _i2.RegistryType? type;
  @override
  final String? typeName;
  @override
  final String? defaultVersionId;
  @override
  final String? typeArn;
  @override
  final DateTime? lastUpdated;
  @override
  final String? description;
  @override
  final String? publisherId;
  @override
  final String? originalTypeName;
  @override
  final String? publicVersionNumber;
  @override
  final String? latestPublicVersion;
  @override
  final _i3.IdentityProvider? publisherIdentity;
  @override
  final String? publisherName;
  @override
  final bool? isActivated;

  factory _$TypeSummary([void Function(TypeSummaryBuilder)? updates]) =>
      (new TypeSummaryBuilder()..update(updates))._build();

  _$TypeSummary._(
      {this.type,
      this.typeName,
      this.defaultVersionId,
      this.typeArn,
      this.lastUpdated,
      this.description,
      this.publisherId,
      this.originalTypeName,
      this.publicVersionNumber,
      this.latestPublicVersion,
      this.publisherIdentity,
      this.publisherName,
      this.isActivated})
      : super._();

  @override
  TypeSummary rebuild(void Function(TypeSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TypeSummaryBuilder toBuilder() => new TypeSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TypeSummary &&
        type == other.type &&
        typeName == other.typeName &&
        defaultVersionId == other.defaultVersionId &&
        typeArn == other.typeArn &&
        lastUpdated == other.lastUpdated &&
        description == other.description &&
        publisherId == other.publisherId &&
        originalTypeName == other.originalTypeName &&
        publicVersionNumber == other.publicVersionNumber &&
        latestPublicVersion == other.latestPublicVersion &&
        publisherIdentity == other.publisherIdentity &&
        publisherName == other.publisherName &&
        isActivated == other.isActivated;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, typeName.hashCode);
    _$hash = $jc(_$hash, defaultVersionId.hashCode);
    _$hash = $jc(_$hash, typeArn.hashCode);
    _$hash = $jc(_$hash, lastUpdated.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, publisherId.hashCode);
    _$hash = $jc(_$hash, originalTypeName.hashCode);
    _$hash = $jc(_$hash, publicVersionNumber.hashCode);
    _$hash = $jc(_$hash, latestPublicVersion.hashCode);
    _$hash = $jc(_$hash, publisherIdentity.hashCode);
    _$hash = $jc(_$hash, publisherName.hashCode);
    _$hash = $jc(_$hash, isActivated.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TypeSummaryBuilder implements Builder<TypeSummary, TypeSummaryBuilder> {
  _$TypeSummary? _$v;

  _i2.RegistryType? _type;
  _i2.RegistryType? get type => _$this._type;
  set type(_i2.RegistryType? type) => _$this._type = type;

  String? _typeName;
  String? get typeName => _$this._typeName;
  set typeName(String? typeName) => _$this._typeName = typeName;

  String? _defaultVersionId;
  String? get defaultVersionId => _$this._defaultVersionId;
  set defaultVersionId(String? defaultVersionId) =>
      _$this._defaultVersionId = defaultVersionId;

  String? _typeArn;
  String? get typeArn => _$this._typeArn;
  set typeArn(String? typeArn) => _$this._typeArn = typeArn;

  DateTime? _lastUpdated;
  DateTime? get lastUpdated => _$this._lastUpdated;
  set lastUpdated(DateTime? lastUpdated) => _$this._lastUpdated = lastUpdated;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _publisherId;
  String? get publisherId => _$this._publisherId;
  set publisherId(String? publisherId) => _$this._publisherId = publisherId;

  String? _originalTypeName;
  String? get originalTypeName => _$this._originalTypeName;
  set originalTypeName(String? originalTypeName) =>
      _$this._originalTypeName = originalTypeName;

  String? _publicVersionNumber;
  String? get publicVersionNumber => _$this._publicVersionNumber;
  set publicVersionNumber(String? publicVersionNumber) =>
      _$this._publicVersionNumber = publicVersionNumber;

  String? _latestPublicVersion;
  String? get latestPublicVersion => _$this._latestPublicVersion;
  set latestPublicVersion(String? latestPublicVersion) =>
      _$this._latestPublicVersion = latestPublicVersion;

  _i3.IdentityProvider? _publisherIdentity;
  _i3.IdentityProvider? get publisherIdentity => _$this._publisherIdentity;
  set publisherIdentity(_i3.IdentityProvider? publisherIdentity) =>
      _$this._publisherIdentity = publisherIdentity;

  String? _publisherName;
  String? get publisherName => _$this._publisherName;
  set publisherName(String? publisherName) =>
      _$this._publisherName = publisherName;

  bool? _isActivated;
  bool? get isActivated => _$this._isActivated;
  set isActivated(bool? isActivated) => _$this._isActivated = isActivated;

  TypeSummaryBuilder() {
    TypeSummary._init(this);
  }

  TypeSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _typeName = $v.typeName;
      _defaultVersionId = $v.defaultVersionId;
      _typeArn = $v.typeArn;
      _lastUpdated = $v.lastUpdated;
      _description = $v.description;
      _publisherId = $v.publisherId;
      _originalTypeName = $v.originalTypeName;
      _publicVersionNumber = $v.publicVersionNumber;
      _latestPublicVersion = $v.latestPublicVersion;
      _publisherIdentity = $v.publisherIdentity;
      _publisherName = $v.publisherName;
      _isActivated = $v.isActivated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TypeSummary other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TypeSummary;
  }

  @override
  void update(void Function(TypeSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TypeSummary build() => _build();

  _$TypeSummary _build() {
    final _$result = _$v ??
        new _$TypeSummary._(
            type: type,
            typeName: typeName,
            defaultVersionId: defaultVersionId,
            typeArn: typeArn,
            lastUpdated: lastUpdated,
            description: description,
            publisherId: publisherId,
            originalTypeName: originalTypeName,
            publicVersionNumber: publicVersionNumber,
            latestPublicVersion: latestPublicVersion,
            publisherIdentity: publisherIdentity,
            publisherName: publisherName,
            isActivated: isActivated);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
