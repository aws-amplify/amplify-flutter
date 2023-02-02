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
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
