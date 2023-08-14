// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PurchaseRequest extends PurchaseRequest {
  @override
  final int instanceCount;
  @override
  final String? purchaseToken;

  factory _$PurchaseRequest([void Function(PurchaseRequestBuilder)? updates]) =>
      (new PurchaseRequestBuilder()..update(updates))._build();

  _$PurchaseRequest._({required this.instanceCount, this.purchaseToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        instanceCount, r'PurchaseRequest', 'instanceCount');
  }

  @override
  PurchaseRequest rebuild(void Function(PurchaseRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PurchaseRequestBuilder toBuilder() =>
      new PurchaseRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PurchaseRequest &&
        instanceCount == other.instanceCount &&
        purchaseToken == other.purchaseToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceCount.hashCode);
    _$hash = $jc(_$hash, purchaseToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PurchaseRequestBuilder
    implements Builder<PurchaseRequest, PurchaseRequestBuilder> {
  _$PurchaseRequest? _$v;

  int? _instanceCount;
  int? get instanceCount => _$this._instanceCount;
  set instanceCount(int? instanceCount) =>
      _$this._instanceCount = instanceCount;

  String? _purchaseToken;
  String? get purchaseToken => _$this._purchaseToken;
  set purchaseToken(String? purchaseToken) =>
      _$this._purchaseToken = purchaseToken;

  PurchaseRequestBuilder() {
    PurchaseRequest._init(this);
  }

  PurchaseRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceCount = $v.instanceCount;
      _purchaseToken = $v.purchaseToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PurchaseRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PurchaseRequest;
  }

  @override
  void update(void Function(PurchaseRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PurchaseRequest build() => _build();

  _$PurchaseRequest _build() {
    final _$result = _$v ??
        new _$PurchaseRequest._(
            instanceCount: BuiltValueNullFieldError.checkNotNull(
                instanceCount, r'PurchaseRequest', 'instanceCount'),
            purchaseToken: purchaseToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
