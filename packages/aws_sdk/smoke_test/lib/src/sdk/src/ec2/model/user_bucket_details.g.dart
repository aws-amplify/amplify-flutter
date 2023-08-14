// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_bucket_details.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserBucketDetails extends UserBucketDetails {
  @override
  final String? s3Bucket;
  @override
  final String? s3Key;

  factory _$UserBucketDetails(
          [void Function(UserBucketDetailsBuilder)? updates]) =>
      (new UserBucketDetailsBuilder()..update(updates))._build();

  _$UserBucketDetails._({this.s3Bucket, this.s3Key}) : super._();

  @override
  UserBucketDetails rebuild(void Function(UserBucketDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBucketDetailsBuilder toBuilder() =>
      new UserBucketDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserBucketDetails &&
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

class UserBucketDetailsBuilder
    implements Builder<UserBucketDetails, UserBucketDetailsBuilder> {
  _$UserBucketDetails? _$v;

  String? _s3Bucket;
  String? get s3Bucket => _$this._s3Bucket;
  set s3Bucket(String? s3Bucket) => _$this._s3Bucket = s3Bucket;

  String? _s3Key;
  String? get s3Key => _$this._s3Key;
  set s3Key(String? s3Key) => _$this._s3Key = s3Key;

  UserBucketDetailsBuilder();

  UserBucketDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _s3Bucket = $v.s3Bucket;
      _s3Key = $v.s3Key;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserBucketDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserBucketDetails;
  }

  @override
  void update(void Function(UserBucketDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserBucketDetails build() => _build();

  _$UserBucketDetails _build() {
    final _$result =
        _$v ?? new _$UserBucketDetails._(s3Bucket: s3Bucket, s3Key: s3Key);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
