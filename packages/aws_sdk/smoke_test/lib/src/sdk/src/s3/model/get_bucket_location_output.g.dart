// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_bucket_location_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBucketLocationOutput extends GetBucketLocationOutput {
  @override
  final _i3.BucketLocationConstraint? locationConstraint;

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

  _i3.BucketLocationConstraint? _locationConstraint;
  _i3.BucketLocationConstraint? get locationConstraint =>
      _$this._locationConstraint;
  set locationConstraint(_i3.BucketLocationConstraint? locationConstraint) =>
      _$this._locationConstraint = locationConstraint;

  GetBucketLocationOutputBuilder() {
    GetBucketLocationOutput._init(this);
  }

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
