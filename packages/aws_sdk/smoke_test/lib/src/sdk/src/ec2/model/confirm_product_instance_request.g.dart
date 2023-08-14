// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_product_instance_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConfirmProductInstanceRequest extends ConfirmProductInstanceRequest {
  @override
  final String? instanceId;
  @override
  final String? productCode;
  @override
  final bool dryRun;

  factory _$ConfirmProductInstanceRequest(
          [void Function(ConfirmProductInstanceRequestBuilder)? updates]) =>
      (new ConfirmProductInstanceRequestBuilder()..update(updates))._build();

  _$ConfirmProductInstanceRequest._(
      {this.instanceId, this.productCode, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ConfirmProductInstanceRequest', 'dryRun');
  }

  @override
  ConfirmProductInstanceRequest rebuild(
          void Function(ConfirmProductInstanceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConfirmProductInstanceRequestBuilder toBuilder() =>
      new ConfirmProductInstanceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConfirmProductInstanceRequest &&
        instanceId == other.instanceId &&
        productCode == other.productCode &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, productCode.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ConfirmProductInstanceRequestBuilder
    implements
        Builder<ConfirmProductInstanceRequest,
            ConfirmProductInstanceRequestBuilder> {
  _$ConfirmProductInstanceRequest? _$v;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  String? _productCode;
  String? get productCode => _$this._productCode;
  set productCode(String? productCode) => _$this._productCode = productCode;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  ConfirmProductInstanceRequestBuilder() {
    ConfirmProductInstanceRequest._init(this);
  }

  ConfirmProductInstanceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceId = $v.instanceId;
      _productCode = $v.productCode;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConfirmProductInstanceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConfirmProductInstanceRequest;
  }

  @override
  void update(void Function(ConfirmProductInstanceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConfirmProductInstanceRequest build() => _build();

  _$ConfirmProductInstanceRequest _build() {
    final _$result = _$v ??
        new _$ConfirmProductInstanceRequest._(
            instanceId: instanceId,
            productCode: productCode,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'ConfirmProductInstanceRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
