// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.user;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$User extends User {
  @override
  final String? creationDate;
  @override
  final String? dateOfBirth;
  @override
  final String? gender;
  @override
  final _i2.UserName? name;
  @override
  final _i3.PrimaryLocation? primaryLocation;
  @override
  final _i4.BuiltListMultimap<String, String>? userAttributes;
  @override
  final _i4.BuiltMap<String, double>? userMetrics;
  @override
  final _i5.UserStatus? userStatus;

  factory _$User([void Function(UserBuilder)? updates]) =>
      (new UserBuilder()..update(updates))._build();

  _$User._(
      {this.creationDate,
      this.dateOfBirth,
      this.gender,
      this.name,
      this.primaryLocation,
      this.userAttributes,
      this.userMetrics,
      this.userStatus})
      : super._();

  @override
  User rebuild(void Function(UserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBuilder toBuilder() => new UserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        creationDate == other.creationDate &&
        dateOfBirth == other.dateOfBirth &&
        gender == other.gender &&
        name == other.name &&
        primaryLocation == other.primaryLocation &&
        userAttributes == other.userAttributes &&
        userMetrics == other.userMetrics &&
        userStatus == other.userStatus;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, creationDate.hashCode),
                                dateOfBirth.hashCode),
                            gender.hashCode),
                        name.hashCode),
                    primaryLocation.hashCode),
                userAttributes.hashCode),
            userMetrics.hashCode),
        userStatus.hashCode));
  }
}

class UserBuilder implements Builder<User, UserBuilder> {
  _$User? _$v;

  String? _creationDate;
  String? get creationDate => _$this._creationDate;
  set creationDate(String? creationDate) => _$this._creationDate = creationDate;

  String? _dateOfBirth;
  String? get dateOfBirth => _$this._dateOfBirth;
  set dateOfBirth(String? dateOfBirth) => _$this._dateOfBirth = dateOfBirth;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  _i2.UserNameBuilder? _name;
  _i2.UserNameBuilder get name => _$this._name ??= new _i2.UserNameBuilder();
  set name(_i2.UserNameBuilder? name) => _$this._name = name;

  _i3.PrimaryLocationBuilder? _primaryLocation;
  _i3.PrimaryLocationBuilder get primaryLocation =>
      _$this._primaryLocation ??= new _i3.PrimaryLocationBuilder();
  set primaryLocation(_i3.PrimaryLocationBuilder? primaryLocation) =>
      _$this._primaryLocation = primaryLocation;

  _i4.ListMultimapBuilder<String, String>? _userAttributes;
  _i4.ListMultimapBuilder<String, String> get userAttributes =>
      _$this._userAttributes ??= new _i4.ListMultimapBuilder<String, String>();
  set userAttributes(_i4.ListMultimapBuilder<String, String>? userAttributes) =>
      _$this._userAttributes = userAttributes;

  _i4.MapBuilder<String, double>? _userMetrics;
  _i4.MapBuilder<String, double> get userMetrics =>
      _$this._userMetrics ??= new _i4.MapBuilder<String, double>();
  set userMetrics(_i4.MapBuilder<String, double>? userMetrics) =>
      _$this._userMetrics = userMetrics;

  _i5.UserStatus? _userStatus;
  _i5.UserStatus? get userStatus => _$this._userStatus;
  set userStatus(_i5.UserStatus? userStatus) => _$this._userStatus = userStatus;

  UserBuilder() {
    User._init(this);
  }

  UserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _creationDate = $v.creationDate;
      _dateOfBirth = $v.dateOfBirth;
      _gender = $v.gender;
      _name = $v.name?.toBuilder();
      _primaryLocation = $v.primaryLocation?.toBuilder();
      _userAttributes = $v.userAttributes?.toBuilder();
      _userMetrics = $v.userMetrics?.toBuilder();
      _userStatus = $v.userStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(User other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$User;
  }

  @override
  void update(void Function(UserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  User build() => _build();

  _$User _build() {
    _$User _$result;
    try {
      _$result = _$v ??
          new _$User._(
              creationDate: creationDate,
              dateOfBirth: dateOfBirth,
              gender: gender,
              name: _name?.build(),
              primaryLocation: _primaryLocation?.build(),
              userAttributes: _userAttributes?.build(),
              userMetrics: _userMetrics?.build(),
              userStatus: userStatus);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'name';
        _name?.build();
        _$failedField = 'primaryLocation';
        _primaryLocation?.build();
        _$failedField = 'userAttributes';
        _userAttributes?.build();
        _$failedField = 'userMetrics';
        _userMetrics?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'User', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
