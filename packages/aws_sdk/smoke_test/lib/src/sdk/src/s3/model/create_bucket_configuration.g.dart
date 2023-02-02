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
    var _$hash = 0;
    _$hash = $jc(_$hash, locationConstraint.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
