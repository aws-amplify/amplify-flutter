// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.user_events_item_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserEventsItemResponse extends UserEventsItemResponse {
  @override
  final _i2.BuiltMap<String, _i3.EventItemResponse>? userEventsItemResponse;

  factory _$UserEventsItemResponse(
          [void Function(UserEventsItemResponseBuilder)? updates]) =>
      (new UserEventsItemResponseBuilder()..update(updates))._build();

  _$UserEventsItemResponse._({this.userEventsItemResponse}) : super._();

  @override
  UserEventsItemResponse rebuild(
          void Function(UserEventsItemResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserEventsItemResponseBuilder toBuilder() =>
      new UserEventsItemResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserEventsItemResponse &&
        userEventsItemResponse == other.userEventsItemResponse;
  }

  @override
  int get hashCode {
    return $jf($jc(0, userEventsItemResponse.hashCode));
  }
}

class UserEventsItemResponseBuilder
    implements Builder<UserEventsItemResponse, UserEventsItemResponseBuilder> {
  _$UserEventsItemResponse? _$v;

  _i2.MapBuilder<String, _i3.EventItemResponse>? _userEventsItemResponse;
  _i2.MapBuilder<String, _i3.EventItemResponse> get userEventsItemResponse =>
      _$this._userEventsItemResponse ??=
          new _i2.MapBuilder<String, _i3.EventItemResponse>();
  set userEventsItemResponse(
          _i2.MapBuilder<String, _i3.EventItemResponse>?
              userEventsItemResponse) =>
      _$this._userEventsItemResponse = userEventsItemResponse;

  UserEventsItemResponseBuilder() {
    UserEventsItemResponse._init(this);
  }

  UserEventsItemResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userEventsItemResponse = $v.userEventsItemResponse?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserEventsItemResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserEventsItemResponse;
  }

  @override
  void update(void Function(UserEventsItemResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserEventsItemResponse build() => _build();

  _$UserEventsItemResponse _build() {
    _$UserEventsItemResponse _$result;
    try {
      _$result = _$v ??
          new _$UserEventsItemResponse._(
              userEventsItemResponse: _userEventsItemResponse?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userEventsItemResponse';
        _userEventsItemResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UserEventsItemResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
