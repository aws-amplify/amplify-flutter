// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.accelerate_configuration;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccelerateConfiguration extends AccelerateConfiguration {
  @override
  final _i2.BucketAccelerateStatus? status;

  factory _$AccelerateConfiguration(
          [void Function(AccelerateConfigurationBuilder)? updates]) =>
      (new AccelerateConfigurationBuilder()..update(updates))._build();

  _$AccelerateConfiguration._({this.status}) : super._();

  @override
  AccelerateConfiguration rebuild(
          void Function(AccelerateConfigurationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccelerateConfigurationBuilder toBuilder() =>
      new AccelerateConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccelerateConfiguration && status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AccelerateConfigurationBuilder
    implements
        Builder<AccelerateConfiguration, AccelerateConfigurationBuilder> {
  _$AccelerateConfiguration? _$v;

  _i2.BucketAccelerateStatus? _status;
  _i2.BucketAccelerateStatus? get status => _$this._status;
  set status(_i2.BucketAccelerateStatus? status) => _$this._status = status;

  AccelerateConfigurationBuilder() {
    AccelerateConfiguration._init(this);
  }

  AccelerateConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccelerateConfiguration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccelerateConfiguration;
  }

  @override
  void update(void Function(AccelerateConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccelerateConfiguration build() => _build();

  _$AccelerateConfiguration _build() {
    final _$result = _$v ?? new _$AccelerateConfiguration._(status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
