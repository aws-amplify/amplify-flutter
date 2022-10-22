// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.user_events_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserEventsResponse extends UserEventsResponse {
  @override
  final _i2.BuiltMap<String, _i3.UserEventsItemResponse>? results;

  factory _$UserEventsResponse(
          [void Function(UserEventsResponseBuilder)? updates]) =>
      (new UserEventsResponseBuilder()..update(updates))._build();

  _$UserEventsResponse._({this.results}) : super._();

  @override
  UserEventsResponse rebuild(
          void Function(UserEventsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserEventsResponseBuilder toBuilder() =>
      new UserEventsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserEventsResponse && results == other.results;
  }

  @override
  int get hashCode {
    return $jf($jc(0, results.hashCode));
  }
}

class UserEventsResponseBuilder
    implements Builder<UserEventsResponse, UserEventsResponseBuilder> {
  _$UserEventsResponse? _$v;

  _i2.MapBuilder<String, _i3.UserEventsItemResponse>? _results;
  _i2.MapBuilder<String, _i3.UserEventsItemResponse> get results =>
      _$this._results ??=
          new _i2.MapBuilder<String, _i3.UserEventsItemResponse>();
  set results(_i2.MapBuilder<String, _i3.UserEventsItemResponse>? results) =>
      _$this._results = results;

  UserEventsResponseBuilder() {
    UserEventsResponse._init(this);
  }

  UserEventsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _results = $v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserEventsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserEventsResponse;
  }

  @override
  void update(void Function(UserEventsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserEventsResponse build() => _build();

  _$UserEventsResponse _build() {
    _$UserEventsResponse _$result;
    try {
      _$result = _$v ?? new _$UserEventsResponse._(results: _results?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UserEventsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
