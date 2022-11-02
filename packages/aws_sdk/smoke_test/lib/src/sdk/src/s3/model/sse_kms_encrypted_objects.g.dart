// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.sse_kms_encrypted_objects;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SseKmsEncryptedObjects extends SseKmsEncryptedObjects {
  @override
  final _i2.SseKmsEncryptedObjectsStatus status;

  factory _$SseKmsEncryptedObjects(
          [void Function(SseKmsEncryptedObjectsBuilder)? updates]) =>
      (new SseKmsEncryptedObjectsBuilder()..update(updates))._build();

  _$SseKmsEncryptedObjects._({required this.status}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        status, r'SseKmsEncryptedObjects', 'status');
  }

  @override
  SseKmsEncryptedObjects rebuild(
          void Function(SseKmsEncryptedObjectsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SseKmsEncryptedObjectsBuilder toBuilder() =>
      new SseKmsEncryptedObjectsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SseKmsEncryptedObjects && status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc(0, status.hashCode));
  }
}

class SseKmsEncryptedObjectsBuilder
    implements Builder<SseKmsEncryptedObjects, SseKmsEncryptedObjectsBuilder> {
  _$SseKmsEncryptedObjects? _$v;

  _i2.SseKmsEncryptedObjectsStatus? _status;
  _i2.SseKmsEncryptedObjectsStatus? get status => _$this._status;
  set status(_i2.SseKmsEncryptedObjectsStatus? status) =>
      _$this._status = status;

  SseKmsEncryptedObjectsBuilder() {
    SseKmsEncryptedObjects._init(this);
  }

  SseKmsEncryptedObjectsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SseKmsEncryptedObjects other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SseKmsEncryptedObjects;
  }

  @override
  void update(void Function(SseKmsEncryptedObjectsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SseKmsEncryptedObjects build() => _build();

  _$SseKmsEncryptedObjects _build() {
    final _$result = _$v ??
        new _$SseKmsEncryptedObjects._(
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'SseKmsEncryptedObjects', 'status'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
