// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aws_storage_s3_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AWSStorageS3Config extends AWSStorageS3Config {
  @override
  final _i3.BuiltMap<String, _i2.AWSStorageS3Bucket> buckets;

  factory _$AWSStorageS3Config(
          [void Function(AWSStorageS3ConfigBuilder)? updates]) =>
      (new AWSStorageS3ConfigBuilder()..update(updates))._build();

  _$AWSStorageS3Config._({required this.buckets}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        buckets, r'AWSStorageS3Config', 'buckets');
  }

  @override
  AWSStorageS3Config rebuild(
          void Function(AWSStorageS3ConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AWSStorageS3ConfigBuilder toBuilder() =>
      new AWSStorageS3ConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AWSStorageS3Config && buckets == other.buckets;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, buckets.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AWSStorageS3ConfigBuilder
    implements Builder<AWSStorageS3Config, AWSStorageS3ConfigBuilder> {
  _$AWSStorageS3Config? _$v;

  _i3.MapBuilder<String, _i2.AWSStorageS3Bucket>? _buckets;
  _i3.MapBuilder<String, _i2.AWSStorageS3Bucket> get buckets =>
      _$this._buckets ??= new _i3.MapBuilder<String, _i2.AWSStorageS3Bucket>();
  set buckets(_i3.MapBuilder<String, _i2.AWSStorageS3Bucket>? buckets) =>
      _$this._buckets = buckets;

  AWSStorageS3ConfigBuilder() {
    AWSStorageS3Config._init(this);
  }

  AWSStorageS3ConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _buckets = $v.buckets.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AWSStorageS3Config other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AWSStorageS3Config;
  }

  @override
  void update(void Function(AWSStorageS3ConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AWSStorageS3Config build() => _build();

  _$AWSStorageS3Config _build() {
    _$AWSStorageS3Config _$result;
    try {
      _$result = _$v ?? new _$AWSStorageS3Config._(buckets: buckets.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'buckets';
        buckets.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AWSStorageS3Config', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
