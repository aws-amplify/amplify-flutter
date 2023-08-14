// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fpga_image_attribute.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FpgaImageAttribute extends FpgaImageAttribute {
  @override
  final String? fpgaImageId;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final _i2.BuiltList<LoadPermission>? loadPermissions;
  @override
  final _i2.BuiltList<ProductCode>? productCodes;

  factory _$FpgaImageAttribute(
          [void Function(FpgaImageAttributeBuilder)? updates]) =>
      (new FpgaImageAttributeBuilder()..update(updates))._build();

  _$FpgaImageAttribute._(
      {this.fpgaImageId,
      this.name,
      this.description,
      this.loadPermissions,
      this.productCodes})
      : super._();

  @override
  FpgaImageAttribute rebuild(
          void Function(FpgaImageAttributeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FpgaImageAttributeBuilder toBuilder() =>
      new FpgaImageAttributeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FpgaImageAttribute &&
        fpgaImageId == other.fpgaImageId &&
        name == other.name &&
        description == other.description &&
        loadPermissions == other.loadPermissions &&
        productCodes == other.productCodes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fpgaImageId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, loadPermissions.hashCode);
    _$hash = $jc(_$hash, productCodes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class FpgaImageAttributeBuilder
    implements Builder<FpgaImageAttribute, FpgaImageAttributeBuilder> {
  _$FpgaImageAttribute? _$v;

  String? _fpgaImageId;
  String? get fpgaImageId => _$this._fpgaImageId;
  set fpgaImageId(String? fpgaImageId) => _$this._fpgaImageId = fpgaImageId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i2.ListBuilder<LoadPermission>? _loadPermissions;
  _i2.ListBuilder<LoadPermission> get loadPermissions =>
      _$this._loadPermissions ??= new _i2.ListBuilder<LoadPermission>();
  set loadPermissions(_i2.ListBuilder<LoadPermission>? loadPermissions) =>
      _$this._loadPermissions = loadPermissions;

  _i2.ListBuilder<ProductCode>? _productCodes;
  _i2.ListBuilder<ProductCode> get productCodes =>
      _$this._productCodes ??= new _i2.ListBuilder<ProductCode>();
  set productCodes(_i2.ListBuilder<ProductCode>? productCodes) =>
      _$this._productCodes = productCodes;

  FpgaImageAttributeBuilder();

  FpgaImageAttributeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fpgaImageId = $v.fpgaImageId;
      _name = $v.name;
      _description = $v.description;
      _loadPermissions = $v.loadPermissions?.toBuilder();
      _productCodes = $v.productCodes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FpgaImageAttribute other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FpgaImageAttribute;
  }

  @override
  void update(void Function(FpgaImageAttributeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FpgaImageAttribute build() => _build();

  _$FpgaImageAttribute _build() {
    _$FpgaImageAttribute _$result;
    try {
      _$result = _$v ??
          new _$FpgaImageAttribute._(
              fpgaImageId: fpgaImageId,
              name: name,
              description: description,
              loadPermissions: _loadPermissions?.build(),
              productCodes: _productCodes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'loadPermissions';
        _loadPermissions?.build();
        _$failedField = 'productCodes';
        _productCodes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FpgaImageAttribute', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
