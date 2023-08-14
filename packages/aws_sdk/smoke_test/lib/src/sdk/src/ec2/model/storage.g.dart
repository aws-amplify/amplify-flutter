// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storage.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Storage extends Storage {
  @override
  final S3Storage? s3;

  factory _$Storage([void Function(StorageBuilder)? updates]) =>
      (new StorageBuilder()..update(updates))._build();

  _$Storage._({this.s3}) : super._();

  @override
  Storage rebuild(void Function(StorageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StorageBuilder toBuilder() => new StorageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Storage && s3 == other.s3;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, s3.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StorageBuilder implements Builder<Storage, StorageBuilder> {
  _$Storage? _$v;

  S3StorageBuilder? _s3;
  S3StorageBuilder get s3 => _$this._s3 ??= new S3StorageBuilder();
  set s3(S3StorageBuilder? s3) => _$this._s3 = s3;

  StorageBuilder();

  StorageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _s3 = $v.s3?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Storage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Storage;
  }

  @override
  void update(void Function(StorageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Storage build() => _build();

  _$Storage _build() {
    _$Storage _$result;
    try {
      _$result = _$v ?? new _$Storage._(s3: _s3?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 's3';
        _s3?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Storage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
