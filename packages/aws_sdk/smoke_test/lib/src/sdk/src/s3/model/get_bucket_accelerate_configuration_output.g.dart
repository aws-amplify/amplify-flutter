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
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
