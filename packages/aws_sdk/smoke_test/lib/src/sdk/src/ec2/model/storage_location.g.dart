// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storage_location.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StorageLocation extends StorageLocation {
  @override
  final String? bucket;
  @override
  final String? key;

  factory _$StorageLocation([void Function(StorageLocationBuilder)? updates]) =>
      (new StorageLocationBuilder()..update(updates))._build();

  _$StorageLocation._({this.bucket, this.key}) : super._();

  @override
  StorageLocation rebuild(void Function(StorageLocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StorageLocationBuilder toBuilder() =>
      new StorageLocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StorageLocation &&
        bucket == other.bucket &&
        key == other.key;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StorageLocationBuilder
    implements Builder<StorageLocation, StorageLocationBuilder> {
  _$StorageLocation? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  StorageLocationBuilder();

  StorageLocationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _key = $v.key;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StorageLocation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StorageLocation;
  }

  @override
  void update(void Function(StorageLocationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StorageLocation build() => _build();

  _$StorageLocation _build() {
    final _$result = _$v ?? new _$StorageLocation._(bucket: bucket, key: key);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
