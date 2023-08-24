// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storage_s3_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StorageS3Config extends StorageS3Config {
  @override
  final _i3.BuiltList<_i2.StorageS3Bucket> buckets;

  factory _$StorageS3Config([void Function(StorageS3ConfigBuilder)? updates]) =>
      (new StorageS3ConfigBuilder()..update(updates))._build();

  _$StorageS3Config._({required this.buckets}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        buckets, r'StorageS3Config', 'buckets');
  }

  @override
  StorageS3Config rebuild(void Function(StorageS3ConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StorageS3ConfigBuilder toBuilder() =>
      new StorageS3ConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StorageS3Config && buckets == other.buckets;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, buckets.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StorageS3ConfigBuilder
    implements Builder<StorageS3Config, StorageS3ConfigBuilder> {
  _$StorageS3Config? _$v;

  _i3.ListBuilder<_i2.StorageS3Bucket>? _buckets;
  _i3.ListBuilder<_i2.StorageS3Bucket> get buckets =>
      _$this._buckets ??= new _i3.ListBuilder<_i2.StorageS3Bucket>();
  set buckets(_i3.ListBuilder<_i2.StorageS3Bucket>? buckets) =>
      _$this._buckets = buckets;

  StorageS3ConfigBuilder();

  StorageS3ConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _buckets = $v.buckets.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StorageS3Config other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StorageS3Config;
  }

  @override
  void update(void Function(StorageS3ConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StorageS3Config build() => _build();

  _$StorageS3Config _build() {
    _$StorageS3Config _$result;
    try {
      _$result = _$v ?? new _$StorageS3Config._(buckets: buckets.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'buckets';
        buckets.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StorageS3Config', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
