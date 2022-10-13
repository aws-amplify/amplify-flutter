// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_1_v1.json_protocol.model.error_without_members;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ErrorWithoutMembers extends ErrorWithoutMembers {
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$ErrorWithoutMembers(
          [void Function(ErrorWithoutMembersBuilder)? updates]) =>
      (new ErrorWithoutMembersBuilder()..update(updates))._build();

  _$ErrorWithoutMembers._({this.statusCode, this.headers}) : super._();

  @override
  ErrorWithoutMembers rebuild(
          void Function(ErrorWithoutMembersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ErrorWithoutMembersBuilder toBuilder() =>
      new ErrorWithoutMembersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ErrorWithoutMembers;
  }

  @override
  int get hashCode {
    return 496951678;
  }
}

class ErrorWithoutMembersBuilder
    implements Builder<ErrorWithoutMembers, ErrorWithoutMembersBuilder> {
  _$ErrorWithoutMembers? _$v;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  ErrorWithoutMembersBuilder() {
    ErrorWithoutMembers._init(this);
  }

  ErrorWithoutMembersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _statusCode = $v.statusCode;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ErrorWithoutMembers other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ErrorWithoutMembers;
  }

  @override
  void update(void Function(ErrorWithoutMembersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ErrorWithoutMembers build() => _build();

  _$ErrorWithoutMembers _build() {
    final _$result = _$v ??
        new _$ErrorWithoutMembers._(statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
