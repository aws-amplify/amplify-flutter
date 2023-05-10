// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.type_version_summary;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TypeVersionSummary extends TypeVersionSummary {
  @override
  final _i2.RegistryType? type;
  @override
  final String? typeName;
  @override
  final String? versionId;
  @override
  final bool? isDefaultVersion;
  @override
  final String? arn;
  @override
  final DateTime? timeCreated;
  @override
  final String? description;
  @override
  final String? publicVersionNumber;

  factory _$TypeVersionSummary(
          [void Function(TypeVersionSummaryBuilder)? updates]) =>
      (new TypeVersionSummaryBuilder()..update(updates))._build();

  _$TypeVersionSummary._(
      {this.type,
      this.typeName,
      this.versionId,
      this.isDefaultVersion,
      this.arn,
      this.timeCreated,
      this.description,
      this.publicVersionNumber})
      : super._();

  @override
  TypeVersionSummary rebuild(
          void Function(TypeVersionSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TypeVersionSummaryBuilder toBuilder() =>
      new TypeVersionSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TypeVersionSummary &&
        type == other.type &&
        typeName == other.typeName &&
        versionId == other.versionId &&
        isDefaultVersion == other.isDefaultVersion &&
        arn == other.arn &&
        timeCreated == other.timeCreated &&
        description == other.description &&
        publicVersionNumber == other.publicVersionNumber;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, typeName.hashCode);
    _$hash = $jc(_$hash, versionId.hashCode);
    _$hash = $jc(_$hash, isDefaultVersion.hashCode);
    _$hash = $jc(_$hash, arn.hashCode);
    _$hash = $jc(_$hash, timeCreated.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, publicVersionNumber.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TypeVersionSummaryBuilder
    implements Builder<TypeVersionSummary, TypeVersionSummaryBuilder> {
  _$TypeVersionSummary? _$v;

  _i2.RegistryType? _type;
  _i2.RegistryType? get type => _$this._type;
  set type(_i2.RegistryType? type) => _$this._type = type;

  String? _typeName;
  String? get typeName => _$this._typeName;
  set typeName(String? typeName) => _$this._typeName = typeName;

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(String? versionId) => _$this._versionId = versionId;

  bool? _isDefaultVersion;
  bool? get isDefaultVersion => _$this._isDefaultVersion;
  set isDefaultVersion(bool? isDefaultVersion) =>
      _$this._isDefaultVersion = isDefaultVersion;

  String? _arn;
  String? get arn => _$this._arn;
  set arn(String? arn) => _$this._arn = arn;

  DateTime? _timeCreated;
  DateTime? get timeCreated => _$this._timeCreated;
  set timeCreated(DateTime? timeCreated) => _$this._timeCreated = timeCreated;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _publicVersionNumber;
  String? get publicVersionNumber => _$this._publicVersionNumber;
  set publicVersionNumber(String? publicVersionNumber) =>
      _$this._publicVersionNumber = publicVersionNumber;

  TypeVersionSummaryBuilder() {
    TypeVersionSummary._init(this);
  }

  TypeVersionSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _typeName = $v.typeName;
      _versionId = $v.versionId;
      _isDefaultVersion = $v.isDefaultVersion;
      _arn = $v.arn;
      _timeCreated = $v.timeCreated;
      _description = $v.description;
      _publicVersionNumber = $v.publicVersionNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TypeVersionSummary other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TypeVersionSummary;
  }

  @override
  void update(void Function(TypeVersionSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TypeVersionSummary build() => _build();

  _$TypeVersionSummary _build() {
    final _$result = _$v ??
        new _$TypeVersionSummary._(
            type: type,
            typeName: typeName,
            versionId: versionId,
            isDefaultVersion: isDefaultVersion,
            arn: arn,
            timeCreated: timeCreated,
            description: description,
            publicVersionNumber: publicVersionNumber);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
