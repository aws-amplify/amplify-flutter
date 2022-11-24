// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_bucket_accelerate_configuration_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBucketAccelerateConfigurationOutput
    extends GetBucketAccelerateConfigurationOutput {
  @override
  final _i2.BucketAccelerateStatus? status;

  factory _$GetBucketAccelerateConfigurationOutput(
          [void Function(GetBucketAccelerateConfigurationOutputBuilder)?
              updates]) =>
      (new GetBucketAccelerateConfigurationOutputBuilder()..update(updates))
          ._build();

  _$GetBucketAccelerateConfigurationOutput._({this.status}) : super._();

  @override
  GetBucketAccelerateConfigurationOutput rebuild(
          void Function(GetBucketAccelerateConfigurationOutputBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketAccelerateConfigurationOutputBuilder toBuilder() =>
      new GetBucketAccelerateConfigurationOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketAccelerateConfigurationOutput &&
        status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc(0, status.hashCode));
  }
}

class GetBucketAccelerateConfigurationOutputBuilder
    implements
        Builder<GetBucketAccelerateConfigurationOutput,
            GetBucketAccelerateConfigurationOutputBuilder> {
  _$GetBucketAccelerateConfigurationOutput? _$v;

  _i2.BucketAccelerateStatus? _status;
  _i2.BucketAccelerateStatus? get status => _$this._status;
  set status(_i2.BucketAccelerateStatus? status) => _$this._status = status;

  GetBucketAccelerateConfigurationOutputBuilder() {
    GetBucketAccelerateConfigurationOutput._init(this);
  }

  GetBucketAccelerateConfigurationOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetBucketAccelerateConfigurationOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketAccelerateConfigurationOutput;
  }

  @override
  void update(
      void Function(GetBucketAccelerateConfigurationOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketAccelerateConfigurationOutput build() => _build();

  _$GetBucketAccelerateConfigurationOutput _build() {
    final _$result =
        _$v ?? new _$GetBucketAccelerateConfigurationOutput._(status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
