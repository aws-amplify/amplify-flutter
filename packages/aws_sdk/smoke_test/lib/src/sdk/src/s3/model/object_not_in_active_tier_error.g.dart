// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.object_not_in_active_tier_error;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ObjectNotInActiveTierError extends ObjectNotInActiveTierError {
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$ObjectNotInActiveTierError(
          [void Function(ObjectNotInActiveTierErrorBuilder)? updates]) =>
      (new ObjectNotInActiveTierErrorBuilder()..update(updates))._build();

  _$ObjectNotInActiveTierError._({this.statusCode, this.headers}) : super._();

  @override
  ObjectNotInActiveTierError rebuild(
          void Function(ObjectNotInActiveTierErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ObjectNotInActiveTierErrorBuilder toBuilder() =>
      new ObjectNotInActiveTierErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ObjectNotInActiveTierError;
  }

  @override
  int get hashCode {
    return 1024667419;
  }
}

class ObjectNotInActiveTierErrorBuilder
    implements
        Builder<ObjectNotInActiveTierError, ObjectNotInActiveTierErrorBuilder> {
  _$ObjectNotInActiveTierError? _$v;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  ObjectNotInActiveTierErrorBuilder() {
    ObjectNotInActiveTierError._init(this);
  }

  ObjectNotInActiveTierErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _statusCode = $v.statusCode;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ObjectNotInActiveTierError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ObjectNotInActiveTierError;
  }

  @override
  void update(void Function(ObjectNotInActiveTierErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ObjectNotInActiveTierError build() => _build();

  _$ObjectNotInActiveTierError _build() {
    final _$result = _$v ??
        new _$ObjectNotInActiveTierError._(
            statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
