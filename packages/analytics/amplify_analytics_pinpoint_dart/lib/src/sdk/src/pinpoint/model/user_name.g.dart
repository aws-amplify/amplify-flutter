// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.user_name;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserName extends UserName {
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? middleName;
  @override
  final String? suffix;
  @override
  final String? title;

  factory _$UserName([void Function(UserNameBuilder)? updates]) =>
      (new UserNameBuilder()..update(updates))._build();

  _$UserName._(
      {this.firstName, this.lastName, this.middleName, this.suffix, this.title})
      : super._();

  @override
  UserName rebuild(void Function(UserNameBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserNameBuilder toBuilder() => new UserNameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserName &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        middleName == other.middleName &&
        suffix == other.suffix &&
        title == other.title;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, firstName.hashCode), lastName.hashCode),
                middleName.hashCode),
            suffix.hashCode),
        title.hashCode));
  }
}

class UserNameBuilder implements Builder<UserName, UserNameBuilder> {
  _$UserName? _$v;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _middleName;
  String? get middleName => _$this._middleName;
  set middleName(String? middleName) => _$this._middleName = middleName;

  String? _suffix;
  String? get suffix => _$this._suffix;
  set suffix(String? suffix) => _$this._suffix = suffix;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  UserNameBuilder() {
    UserName._init(this);
  }

  UserNameBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _middleName = $v.middleName;
      _suffix = $v.suffix;
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserName other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserName;
  }

  @override
  void update(void Function(UserNameBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserName build() => _build();

  _$UserName _build() {
    final _$result = _$v ??
        new _$UserName._(
            firstName: firstName,
            lastName: lastName,
            middleName: middleName,
            suffix: suffix,
            title: title);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
