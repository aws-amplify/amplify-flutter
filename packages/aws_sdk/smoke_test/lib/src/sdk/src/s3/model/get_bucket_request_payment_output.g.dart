// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_bucket_request_payment_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBucketRequestPaymentOutput extends GetBucketRequestPaymentOutput {
  @override
  final _i2.Payer? payer;

  factory _$GetBucketRequestPaymentOutput(
          [void Function(GetBucketRequestPaymentOutputBuilder)? updates]) =>
      (new GetBucketRequestPaymentOutputBuilder()..update(updates))._build();

  _$GetBucketRequestPaymentOutput._({this.payer}) : super._();

  @override
  GetBucketRequestPaymentOutput rebuild(
          void Function(GetBucketRequestPaymentOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketRequestPaymentOutputBuilder toBuilder() =>
      new GetBucketRequestPaymentOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketRequestPaymentOutput && payer == other.payer;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, payer.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetBucketRequestPaymentOutputBuilder
    implements
        Builder<GetBucketRequestPaymentOutput,
            GetBucketRequestPaymentOutputBuilder> {
  _$GetBucketRequestPaymentOutput? _$v;

  _i2.Payer? _payer;
  _i2.Payer? get payer => _$this._payer;
  set payer(_i2.Payer? payer) => _$this._payer = payer;

  GetBucketRequestPaymentOutputBuilder() {
    GetBucketRequestPaymentOutput._init(this);
  }

  GetBucketRequestPaymentOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _payer = $v.payer;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetBucketRequestPaymentOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketRequestPaymentOutput;
  }

  @override
  void update(void Function(GetBucketRequestPaymentOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketRequestPaymentOutput build() => _build();

  _$GetBucketRequestPaymentOutput _build() {
    final _$result = _$v ?? new _$GetBucketRequestPaymentOutput._(payer: payer);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
