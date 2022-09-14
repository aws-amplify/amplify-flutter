// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml.s3.model.get_bucket_location_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBucketLocationOutput extends GetBucketLocationOutput {
  @override
  final _i2.BucketLocationConstraint? locationConstraint;

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
    return $jf($jc(0, locationConstraint.hashCode));
  }
}

class GetBucketLocationOutputBuilder
    implements
        Builder<GetBucketLocationOutput, GetBucketLocationOutputBuilder> {
  _$GetBucketLocationOutput? _$v;

  _i2.BucketLocationConstraint? _locationConstraint;
  _i2.BucketLocationConstraint? get locationConstraint =>
      _$this._locationConstraint;
  set locationConstraint(_i2.BucketLocationConstraint? locationConstraint) =>
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
