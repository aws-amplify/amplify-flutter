// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.user_batch_failure;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserBatchFailure extends UserBatchFailure {
  @override
  final String? message;
  @override
  final String? status;
  @override
  final String? userId;

  factory _$UserBatchFailure(
          [void Function(UserBatchFailureBuilder)? updates]) =>
      (new UserBatchFailureBuilder()..update(updates))._build();

  _$UserBatchFailure._({this.message, this.status, this.userId}) : super._();

  @override
  UserBatchFailure rebuild(void Function(UserBatchFailureBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBatchFailureBuilder toBuilder() =>
      new UserBatchFailureBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserBatchFailure &&
        message == other.message &&
        status == other.status &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, message.hashCode), status.hashCode), userId.hashCode));
  }
}

class UserBatchFailureBuilder
    implements Builder<UserBatchFailure, UserBatchFailureBuilder> {
  _$UserBatchFailure? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  UserBatchFailureBuilder() {
    UserBatchFailure._init(this);
  }

  UserBatchFailureBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _status = $v.status;
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserBatchFailure other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserBatchFailure;
  }

  @override
  void update(void Function(UserBatchFailureBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserBatchFailure build() => _build();

  _$UserBatchFailure _build() {
    final _$result = _$v ??
        new _$UserBatchFailure._(
            message: message, status: status, userId: userId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
