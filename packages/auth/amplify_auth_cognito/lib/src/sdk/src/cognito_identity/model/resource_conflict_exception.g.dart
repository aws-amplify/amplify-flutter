// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito.cognito_identity.model.resource_conflict_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResourceConflictException extends ResourceConflictException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$ResourceConflictException(
          [void Function(ResourceConflictExceptionBuilder)? updates]) =>
      (new ResourceConflictExceptionBuilder()..update(updates))._build();

  _$ResourceConflictException._({this.message, this.headers}) : super._();

  @override
  ResourceConflictException rebuild(
          void Function(ResourceConflictExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResourceConflictExceptionBuilder toBuilder() =>
      new ResourceConflictExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResourceConflictException && message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(0, message.hashCode));
  }
}

class ResourceConflictExceptionBuilder
    implements
        Builder<ResourceConflictException, ResourceConflictExceptionBuilder> {
  _$ResourceConflictException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  ResourceConflictExceptionBuilder() {
    ResourceConflictException._init(this);
  }

  ResourceConflictExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResourceConflictException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResourceConflictException;
  }

  @override
  void update(void Function(ResourceConflictExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResourceConflictException build() => _build();

  _$ResourceConflictException _build() {
    final _$result = _$v ??
        new _$ResourceConflictException._(message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
