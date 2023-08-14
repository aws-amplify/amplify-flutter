// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_fpga_image_attribute_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyFpgaImageAttributeResult extends ModifyFpgaImageAttributeResult {
  @override
  final FpgaImageAttribute? fpgaImageAttribute;

  factory _$ModifyFpgaImageAttributeResult(
          [void Function(ModifyFpgaImageAttributeResultBuilder)? updates]) =>
      (new ModifyFpgaImageAttributeResultBuilder()..update(updates))._build();

  _$ModifyFpgaImageAttributeResult._({this.fpgaImageAttribute}) : super._();

  @override
  ModifyFpgaImageAttributeResult rebuild(
          void Function(ModifyFpgaImageAttributeResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyFpgaImageAttributeResultBuilder toBuilder() =>
      new ModifyFpgaImageAttributeResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyFpgaImageAttributeResult &&
        fpgaImageAttribute == other.fpgaImageAttribute;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fpgaImageAttribute.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyFpgaImageAttributeResultBuilder
    implements
        Builder<ModifyFpgaImageAttributeResult,
            ModifyFpgaImageAttributeResultBuilder> {
  _$ModifyFpgaImageAttributeResult? _$v;

  FpgaImageAttributeBuilder? _fpgaImageAttribute;
  FpgaImageAttributeBuilder get fpgaImageAttribute =>
      _$this._fpgaImageAttribute ??= new FpgaImageAttributeBuilder();
  set fpgaImageAttribute(FpgaImageAttributeBuilder? fpgaImageAttribute) =>
      _$this._fpgaImageAttribute = fpgaImageAttribute;

  ModifyFpgaImageAttributeResultBuilder();

  ModifyFpgaImageAttributeResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fpgaImageAttribute = $v.fpgaImageAttribute?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyFpgaImageAttributeResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyFpgaImageAttributeResult;
  }

  @override
  void update(void Function(ModifyFpgaImageAttributeResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyFpgaImageAttributeResult build() => _build();

  _$ModifyFpgaImageAttributeResult _build() {
    _$ModifyFpgaImageAttributeResult _$result;
    try {
      _$result = _$v ??
          new _$ModifyFpgaImageAttributeResult._(
              fpgaImageAttribute: _fpgaImageAttribute?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fpgaImageAttribute';
        _fpgaImageAttribute?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyFpgaImageAttributeResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
