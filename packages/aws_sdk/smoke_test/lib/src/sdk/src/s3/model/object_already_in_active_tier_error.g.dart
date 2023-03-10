// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.object_already_in_active_tier_error;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ObjectAlreadyInActiveTierError extends ObjectAlreadyInActiveTierError {
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$ObjectAlreadyInActiveTierError(
          [void Function(ObjectAlreadyInActiveTierErrorBuilder)? updates]) =>
      (new ObjectAlreadyInActiveTierErrorBuilder()..update(updates))._build();

  _$ObjectAlreadyInActiveTierError._({this.statusCode, this.headers})
      : super._();

  @override
  ObjectAlreadyInActiveTierError rebuild(
          void Function(ObjectAlreadyInActiveTierErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ObjectAlreadyInActiveTierErrorBuilder toBuilder() =>
      new ObjectAlreadyInActiveTierErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ObjectAlreadyInActiveTierError;
  }

  @override
  int get hashCode {
    return 1047936826;
  }
}

class ObjectAlreadyInActiveTierErrorBuilder
    implements
        Builder<ObjectAlreadyInActiveTierError,
            ObjectAlreadyInActiveTierErrorBuilder> {
  _$ObjectAlreadyInActiveTierError? _$v;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  ObjectAlreadyInActiveTierErrorBuilder() {
    ObjectAlreadyInActiveTierError._init(this);
  }

  ObjectAlreadyInActiveTierErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _statusCode = $v.statusCode;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ObjectAlreadyInActiveTierError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ObjectAlreadyInActiveTierError;
  }

  @override
  void update(void Function(ObjectAlreadyInActiveTierErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ObjectAlreadyInActiveTierError build() => _build();

  _$ObjectAlreadyInActiveTierError _build() {
    final _$result = _$v ??
        new _$ObjectAlreadyInActiveTierError._(
            statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
