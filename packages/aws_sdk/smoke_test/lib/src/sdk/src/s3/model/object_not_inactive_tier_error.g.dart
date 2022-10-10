// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.object_not_inactive_tier_error;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ObjectNotInactiveTierError extends ObjectNotInactiveTierError {
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$ObjectNotInactiveTierError(
          [void Function(ObjectNotInactiveTierErrorBuilder)? updates]) =>
      (new ObjectNotInactiveTierErrorBuilder()..update(updates))._build();

  _$ObjectNotInactiveTierError._({this.statusCode, this.headers}) : super._();

  @override
  ObjectNotInactiveTierError rebuild(
          void Function(ObjectNotInactiveTierErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ObjectNotInactiveTierErrorBuilder toBuilder() =>
      new ObjectNotInactiveTierErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ObjectNotInactiveTierError;
  }

  @override
  int get hashCode {
    return 755031928;
  }
}

class ObjectNotInactiveTierErrorBuilder
    implements
        Builder<ObjectNotInactiveTierError, ObjectNotInactiveTierErrorBuilder> {
  _$ObjectNotInactiveTierError? _$v;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  ObjectNotInactiveTierErrorBuilder() {
    ObjectNotInactiveTierError._init(this);
  }

  ObjectNotInactiveTierErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _statusCode = $v.statusCode;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ObjectNotInactiveTierError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ObjectNotInactiveTierError;
  }

  @override
  void update(void Function(ObjectNotInactiveTierErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ObjectNotInactiveTierError build() => _build();

  _$ObjectNotInactiveTierError _build() {
    final _$result = _$v ??
        new _$ObjectNotInactiveTierError._(
            statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
