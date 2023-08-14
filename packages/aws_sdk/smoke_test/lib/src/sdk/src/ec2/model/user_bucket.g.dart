// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_bucket.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserBucket extends UserBucket {
  @override
  final String? s3Bucket;
  @override
  final String? s3Key;

  factory _$UserBucket([void Function(UserBucketBuilder)? updates]) =>
      (new UserBucketBuilder()..update(updates))._build();

  _$UserBucket._({this.s3Bucket, this.s3Key}) : super._();

  @override
  UserBucket rebuild(void Function(UserBucketBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBucketBuilder toBuilder() => new UserBucketBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserBucket &&
        s3Bucket == other.s3Bucket &&
        s3Key == other.s3Key;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, s3Bucket.hashCode);
    _$hash = $jc(_$hash, s3Key.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UserBucketBuilder implements Builder<UserBucket, UserBucketBuilder> {
  _$UserBucket? _$v;

  String? _s3Bucket;
  String? get s3Bucket => _$this._s3Bucket;
  set s3Bucket(String? s3Bucket) => _$this._s3Bucket = s3Bucket;

  String? _s3Key;
  String? get s3Key => _$this._s3Key;
  set s3Key(String? s3Key) => _$this._s3Key = s3Key;

  UserBucketBuilder();

  UserBucketBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _s3Bucket = $v.s3Bucket;
      _s3Key = $v.s3Key;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserBucket other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserBucket;
  }

  @override
  void update(void Function(UserBucketBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserBucket build() => _build();

  _$UserBucket _build() {
    final _$result =
        _$v ?? new _$UserBucket._(s3Bucket: s3Bucket, s3Key: s3Key);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
