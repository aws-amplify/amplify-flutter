// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.put_user_events_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutUserEventsResponse extends PutUserEventsResponse {
  @override
  final _i3.UserEventsResponse userEventsResponse;

  factory _$PutUserEventsResponse(
          [void Function(PutUserEventsResponseBuilder)? updates]) =>
      (new PutUserEventsResponseBuilder()..update(updates))._build();

  _$PutUserEventsResponse._({required this.userEventsResponse}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userEventsResponse, r'PutUserEventsResponse', 'userEventsResponse');
  }

  @override
  PutUserEventsResponse rebuild(
          void Function(PutUserEventsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutUserEventsResponseBuilder toBuilder() =>
      new PutUserEventsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutUserEventsResponse &&
        userEventsResponse == other.userEventsResponse;
  }

  @override
  int get hashCode {
    return $jf($jc(0, userEventsResponse.hashCode));
  }
}

class PutUserEventsResponseBuilder
    implements Builder<PutUserEventsResponse, PutUserEventsResponseBuilder> {
  _$PutUserEventsResponse? _$v;

  _i3.UserEventsResponseBuilder? _userEventsResponse;
  _i3.UserEventsResponseBuilder get userEventsResponse =>
      _$this._userEventsResponse ??= new _i3.UserEventsResponseBuilder();
  set userEventsResponse(_i3.UserEventsResponseBuilder? userEventsResponse) =>
      _$this._userEventsResponse = userEventsResponse;

  PutUserEventsResponseBuilder() {
    PutUserEventsResponse._init(this);
  }

  PutUserEventsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userEventsResponse = $v.userEventsResponse.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutUserEventsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutUserEventsResponse;
  }

  @override
  void update(void Function(PutUserEventsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutUserEventsResponse build() => _build();

  _$PutUserEventsResponse _build() {
    _$PutUserEventsResponse _$result;
    try {
      _$result = _$v ??
          new _$PutUserEventsResponse._(
              userEventsResponse: userEventsResponse.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userEventsResponse';
        userEventsResponse.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutUserEventsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
