// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_bucket_versioning_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBucketVersioningOutput extends GetBucketVersioningOutput {
  @override
  final _i2.BucketVersioningStatus? status;
  @override
  final _i3.MfaDeleteStatus? mfaDelete;

  factory _$GetBucketVersioningOutput(
          [void Function(GetBucketVersioningOutputBuilder)? updates]) =>
      (new GetBucketVersioningOutputBuilder()..update(updates))._build();

  _$GetBucketVersioningOutput._({this.status, this.mfaDelete}) : super._();

  @override
  GetBucketVersioningOutput rebuild(
          void Function(GetBucketVersioningOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketVersioningOutputBuilder toBuilder() =>
      new GetBucketVersioningOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketVersioningOutput &&
        status == other.status &&
        mfaDelete == other.mfaDelete;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, mfaDelete.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetBucketVersioningOutputBuilder
    implements
        Builder<GetBucketVersioningOutput, GetBucketVersioningOutputBuilder> {
  _$GetBucketVersioningOutput? _$v;

  _i2.BucketVersioningStatus? _status;
  _i2.BucketVersioningStatus? get status => _$this._status;
  set status(_i2.BucketVersioningStatus? status) => _$this._status = status;

  _i3.MfaDeleteStatus? _mfaDelete;
  _i3.MfaDeleteStatus? get mfaDelete => _$this._mfaDelete;
  set mfaDelete(_i3.MfaDeleteStatus? mfaDelete) =>
      _$this._mfaDelete = mfaDelete;

  GetBucketVersioningOutputBuilder() {
    GetBucketVersioningOutput._init(this);
  }

  GetBucketVersioningOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _mfaDelete = $v.mfaDelete;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetBucketVersioningOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketVersioningOutput;
  }

  @override
  void update(void Function(GetBucketVersioningOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketVersioningOutput build() => _build();

  _$GetBucketVersioningOutput _build() {
    final _$result = _$v ??
        new _$GetBucketVersioningOutput._(status: status, mfaDelete: mfaDelete);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
