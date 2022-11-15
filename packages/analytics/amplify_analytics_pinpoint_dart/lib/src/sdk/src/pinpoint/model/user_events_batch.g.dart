// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.user_events_batch;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserEventsBatch extends UserEventsBatch {
  @override
  final _i2.BuiltMap<String, _i3.Event> userEvents;

  factory _$UserEventsBatch([void Function(UserEventsBatchBuilder)? updates]) =>
      (new UserEventsBatchBuilder()..update(updates))._build();

  _$UserEventsBatch._({required this.userEvents}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userEvents, r'UserEventsBatch', 'userEvents');
  }

  @override
  UserEventsBatch rebuild(void Function(UserEventsBatchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserEventsBatchBuilder toBuilder() =>
      new UserEventsBatchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserEventsBatch && userEvents == other.userEvents;
  }

  @override
  int get hashCode {
    return $jf($jc(0, userEvents.hashCode));
  }
}

class UserEventsBatchBuilder
    implements Builder<UserEventsBatch, UserEventsBatchBuilder> {
  _$UserEventsBatch? _$v;

  _i2.MapBuilder<String, _i3.Event>? _userEvents;
  _i2.MapBuilder<String, _i3.Event> get userEvents =>
      _$this._userEvents ??= new _i2.MapBuilder<String, _i3.Event>();
  set userEvents(_i2.MapBuilder<String, _i3.Event>? userEvents) =>
      _$this._userEvents = userEvents;

  UserEventsBatchBuilder() {
    UserEventsBatch._init(this);
  }

  UserEventsBatchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userEvents = $v.userEvents.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserEventsBatch other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserEventsBatch;
  }

  @override
  void update(void Function(UserEventsBatchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserEventsBatch build() => _build();

  _$UserEventsBatch _build() {
    _$UserEventsBatch _$result;
    try {
      _$result = _$v ?? new _$UserEventsBatch._(userEvents: userEvents.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userEvents';
        userEvents.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UserEventsBatch', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
