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
    return $jf($jc(0, payer.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
