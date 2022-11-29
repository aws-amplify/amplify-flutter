// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.endpoint_user;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EndpointUser extends EndpointUser {
  @override
  final _i2.BuiltListMultimap<String, String>? userAttributes;
  @override
  final String? userId;

  factory _$EndpointUser([void Function(EndpointUserBuilder)? updates]) =>
      (new EndpointUserBuilder()..update(updates))._build();

  _$EndpointUser._({this.userAttributes, this.userId}) : super._();

  @override
  EndpointUser rebuild(void Function(EndpointUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EndpointUserBuilder toBuilder() => new EndpointUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EndpointUser &&
        userAttributes == other.userAttributes &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, userAttributes.hashCode), userId.hashCode));
  }
}

class EndpointUserBuilder
    implements Builder<EndpointUser, EndpointUserBuilder> {
  _$EndpointUser? _$v;

  _i2.ListMultimapBuilder<String, String>? _userAttributes;
  _i2.ListMultimapBuilder<String, String> get userAttributes =>
      _$this._userAttributes ??= new _i2.ListMultimapBuilder<String, String>();
  set userAttributes(_i2.ListMultimapBuilder<String, String>? userAttributes) =>
      _$this._userAttributes = userAttributes;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  EndpointUserBuilder() {
    EndpointUser._init(this);
  }

  EndpointUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userAttributes = $v.userAttributes?.toBuilder();
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EndpointUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EndpointUser;
  }

  @override
  void update(void Function(EndpointUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EndpointUser build() => _build();

  _$EndpointUser _build() {
    _$EndpointUser _$result;
    try {
      _$result = _$v ??
          new _$EndpointUser._(
              userAttributes: _userAttributes?.build(), userId: userId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userAttributes';
        _userAttributes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EndpointUser', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
