// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_code.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProductCode extends ProductCode {
  @override
  final String? productCodeId;
  @override
  final ProductCodeValues? productCodeType;

  factory _$ProductCode([void Function(ProductCodeBuilder)? updates]) =>
      (new ProductCodeBuilder()..update(updates))._build();

  _$ProductCode._({this.productCodeId, this.productCodeType}) : super._();

  @override
  ProductCode rebuild(void Function(ProductCodeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductCodeBuilder toBuilder() => new ProductCodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductCode &&
        productCodeId == other.productCodeId &&
        productCodeType == other.productCodeType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, productCodeId.hashCode);
    _$hash = $jc(_$hash, productCodeType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ProductCodeBuilder implements Builder<ProductCode, ProductCodeBuilder> {
  _$ProductCode? _$v;

  String? _productCodeId;
  String? get productCodeId => _$this._productCodeId;
  set productCodeId(String? productCodeId) =>
      _$this._productCodeId = productCodeId;

  ProductCodeValues? _productCodeType;
  ProductCodeValues? get productCodeType => _$this._productCodeType;
  set productCodeType(ProductCodeValues? productCodeType) =>
      _$this._productCodeType = productCodeType;

  ProductCodeBuilder();

  ProductCodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _productCodeId = $v.productCodeId;
      _productCodeType = $v.productCodeType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductCode other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProductCode;
  }

  @override
  void update(void Function(ProductCodeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductCode build() => _build();

  _$ProductCode _build() {
    final _$result = _$v ??
        new _$ProductCode._(
            productCodeId: productCodeId, productCodeType: productCodeType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
