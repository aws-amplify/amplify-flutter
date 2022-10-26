// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.user_events_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserEventsRequest extends UserEventsRequest {
  @override
  final _i2.BuiltMap<String, _i3.UserEventsBatch> userEventsBatchItem;

  factory _$UserEventsRequest(
          [void Function(UserEventsRequestBuilder)? updates]) =>
      (new UserEventsRequestBuilder()..update(updates))._build();

  _$UserEventsRequest._({required this.userEventsBatchItem}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userEventsBatchItem, r'UserEventsRequest', 'userEventsBatchItem');
  }

  @override
  UserEventsRequest rebuild(void Function(UserEventsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserEventsRequestBuilder toBuilder() =>
      new UserEventsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserEventsRequest &&
        userEventsBatchItem == other.userEventsBatchItem;
  }

  @override
  int get hashCode {
    return $jf($jc(0, userEventsBatchItem.hashCode));
  }
}

class UserEventsRequestBuilder
    implements Builder<UserEventsRequest, UserEventsRequestBuilder> {
  _$UserEventsRequest? _$v;

  _i2.MapBuilder<String, _i3.UserEventsBatch>? _userEventsBatchItem;
  _i2.MapBuilder<String, _i3.UserEventsBatch> get userEventsBatchItem =>
      _$this._userEventsBatchItem ??=
          new _i2.MapBuilder<String, _i3.UserEventsBatch>();
  set userEventsBatchItem(
          _i2.MapBuilder<String, _i3.UserEventsBatch>? userEventsBatchItem) =>
      _$this._userEventsBatchItem = userEventsBatchItem;

  UserEventsRequestBuilder() {
    UserEventsRequest._init(this);
  }

  UserEventsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userEventsBatchItem = $v.userEventsBatchItem.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserEventsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserEventsRequest;
  }

  @override
  void update(void Function(UserEventsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserEventsRequest build() => _build();

  _$UserEventsRequest _build() {
    _$UserEventsRequest _$result;
    try {
      _$result = _$v ??
          new _$UserEventsRequest._(
              userEventsBatchItem: userEventsBatchItem.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userEventsBatchItem';
        userEventsBatchItem.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UserEventsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
