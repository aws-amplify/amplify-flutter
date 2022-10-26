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
    return $jf($jc(0, status.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
