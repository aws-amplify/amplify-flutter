// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_bucket_location_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBucketLocationOutput extends GetBucketLocationOutput {
  @override
  final BucketLocationConstraint? locationConstraint;

  factory _$GetBucketLocationOutput(
          [void Function(GetBucketLocationOutputBuilder)? updates]) =>
      (new GetBucketLocationOutputBuilder()..update(updates))._build();

  _$GetBucketLocationOutput._({this.locationConstraint}) : super._();

  @override
  GetBucketLocationOutput rebuild(
          void Function(GetBucketLocationOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketLocationOutputBuilder toBuilder() =>
      new GetBucketLocationOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketLocationOutput &&
        locationConstraint == other.locationConstraint;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, locationConstraint.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetBucketLocationOutputBuilder
    implements
        Builder<GetBucketLocationOutput, GetBucketLocationOutputBuilder> {
  _$GetBucketLocationOutput? _$v;

  BucketLocationConstraint? _locationConstraint;
  BucketLocationConstraint? get locationConstraint =>
      _$this._locationConstraint;
  set locationConstraint(BucketLocationConstraint? locationConstraint) =>
      _$this._locationConstraint = locationConstraint;

  GetBucketLocationOutputBuilder();

  GetBucketLocationOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _locationConstraint = $v.locationConstraint;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetBucketLocationOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketLocationOutput;
  }

  @override
  void update(void Function(GetBucketLocationOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketLocationOutput build() => _build();

  _$GetBucketLocationOutput _build() {
    final _$result = _$v ??
        new _$GetBucketLocationOutput._(locationConstraint: locationConstraint);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
