// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.create_bucket_configuration;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateBucketConfiguration extends CreateBucketConfiguration {
  @override
  final _i2.BucketLocationConstraint? locationConstraint;

  factory _$CreateBucketConfiguration(
          [void Function(CreateBucketConfigurationBuilder)? updates]) =>
      (new CreateBucketConfigurationBuilder()..update(updates))._build();

  _$CreateBucketConfiguration._({this.locationConstraint}) : super._();

  @override
  CreateBucketConfiguration rebuild(
          void Function(CreateBucketConfigurationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateBucketConfigurationBuilder toBuilder() =>
      new CreateBucketConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateBucketConfiguration &&
        locationConstraint == other.locationConstraint;
  }

  @override
  int get hashCode {
    return $jf($jc(0, locationConstraint.hashCode));
  }
}

class CreateBucketConfigurationBuilder
    implements
        Builder<CreateBucketConfiguration, CreateBucketConfigurationBuilder> {
  _$CreateBucketConfiguration? _$v;

  _i2.BucketLocationConstraint? _locationConstraint;
  _i2.BucketLocationConstraint? get locationConstraint =>
      _$this._locationConstraint;
  set locationConstraint(_i2.BucketLocationConstraint? locationConstraint) =>
      _$this._locationConstraint = locationConstraint;

  CreateBucketConfigurationBuilder() {
    CreateBucketConfiguration._init(this);
  }

  CreateBucketConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _locationConstraint = $v.locationConstraint;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateBucketConfiguration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateBucketConfiguration;
  }

  @override
  void update(void Function(CreateBucketConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateBucketConfiguration build() => _build();

  _$CreateBucketConfiguration _build() {
    final _$result = _$v ??
        new _$CreateBucketConfiguration._(
            locationConstraint: locationConstraint);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
