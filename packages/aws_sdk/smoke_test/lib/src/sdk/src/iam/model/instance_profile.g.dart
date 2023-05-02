// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.instance_profile;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceProfile extends InstanceProfile {
  @override
  final String path;
  @override
  final String instanceProfileName;
  @override
  final String instanceProfileId;
  @override
  final String arn;
  @override
  final DateTime createDate;
  @override
  final _i4.BuiltList<_i2.Role> roles;
  @override
  final _i4.BuiltList<_i3.Tag>? tags;

  factory _$InstanceProfile([void Function(InstanceProfileBuilder)? updates]) =>
      (new InstanceProfileBuilder()..update(updates))._build();

  _$InstanceProfile._(
      {required this.path,
      required this.instanceProfileName,
      required this.instanceProfileId,
      required this.arn,
      required this.createDate,
      required this.roles,
      this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(path, r'InstanceProfile', 'path');
    BuiltValueNullFieldError.checkNotNull(
        instanceProfileName, r'InstanceProfile', 'instanceProfileName');
    BuiltValueNullFieldError.checkNotNull(
        instanceProfileId, r'InstanceProfile', 'instanceProfileId');
    BuiltValueNullFieldError.checkNotNull(arn, r'InstanceProfile', 'arn');
    BuiltValueNullFieldError.checkNotNull(
        createDate, r'InstanceProfile', 'createDate');
    BuiltValueNullFieldError.checkNotNull(roles, r'InstanceProfile', 'roles');
  }

  @override
  InstanceProfile rebuild(void Function(InstanceProfileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceProfileBuilder toBuilder() =>
      new InstanceProfileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceProfile &&
        path == other.path &&
        instanceProfileName == other.instanceProfileName &&
        instanceProfileId == other.instanceProfileId &&
        arn == other.arn &&
        createDate == other.createDate &&
        roles == other.roles &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, instanceProfileName.hashCode);
    _$hash = $jc(_$hash, instanceProfileId.hashCode);
    _$hash = $jc(_$hash, arn.hashCode);
    _$hash = $jc(_$hash, createDate.hashCode);
    _$hash = $jc(_$hash, roles.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceProfileBuilder
    implements Builder<InstanceProfile, InstanceProfileBuilder> {
  _$InstanceProfile? _$v;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  String? _instanceProfileName;
  String? get instanceProfileName => _$this._instanceProfileName;
  set instanceProfileName(String? instanceProfileName) =>
      _$this._instanceProfileName = instanceProfileName;

  String? _instanceProfileId;
  String? get instanceProfileId => _$this._instanceProfileId;
  set instanceProfileId(String? instanceProfileId) =>
      _$this._instanceProfileId = instanceProfileId;

  String? _arn;
  String? get arn => _$this._arn;
  set arn(String? arn) => _$this._arn = arn;

  DateTime? _createDate;
  DateTime? get createDate => _$this._createDate;
  set createDate(DateTime? createDate) => _$this._createDate = createDate;

  _i4.ListBuilder<_i2.Role>? _roles;
  _i4.ListBuilder<_i2.Role> get roles =>
      _$this._roles ??= new _i4.ListBuilder<_i2.Role>();
  set roles(_i4.ListBuilder<_i2.Role>? roles) => _$this._roles = roles;

  _i4.ListBuilder<_i3.Tag>? _tags;
  _i4.ListBuilder<_i3.Tag> get tags =>
      _$this._tags ??= new _i4.ListBuilder<_i3.Tag>();
  set tags(_i4.ListBuilder<_i3.Tag>? tags) => _$this._tags = tags;

  InstanceProfileBuilder() {
    InstanceProfile._init(this);
  }

  InstanceProfileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _path = $v.path;
      _instanceProfileName = $v.instanceProfileName;
      _instanceProfileId = $v.instanceProfileId;
      _arn = $v.arn;
      _createDate = $v.createDate;
      _roles = $v.roles.toBuilder();
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceProfile other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceProfile;
  }

  @override
  void update(void Function(InstanceProfileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceProfile build() => _build();

  _$InstanceProfile _build() {
    _$InstanceProfile _$result;
    try {
      _$result = _$v ??
          new _$InstanceProfile._(
              path: BuiltValueNullFieldError.checkNotNull(
                  path, r'InstanceProfile', 'path'),
              instanceProfileName: BuiltValueNullFieldError.checkNotNull(
                  instanceProfileName,
                  r'InstanceProfile',
                  'instanceProfileName'),
              instanceProfileId: BuiltValueNullFieldError.checkNotNull(
                  instanceProfileId, r'InstanceProfile', 'instanceProfileId'),
              arn: BuiltValueNullFieldError.checkNotNull(
                  arn, r'InstanceProfile', 'arn'),
              createDate: BuiltValueNullFieldError.checkNotNull(
                  createDate, r'InstanceProfile', 'createDate'),
              roles: roles.build(),
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'roles';
        roles.build();
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InstanceProfile', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
