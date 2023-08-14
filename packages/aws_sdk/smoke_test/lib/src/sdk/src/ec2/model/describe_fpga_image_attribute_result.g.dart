// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_fpga_image_attribute_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeFpgaImageAttributeResult
    extends DescribeFpgaImageAttributeResult {
  @override
  final FpgaImageAttribute? fpgaImageAttribute;

  factory _$DescribeFpgaImageAttributeResult(
          [void Function(DescribeFpgaImageAttributeResultBuilder)? updates]) =>
      (new DescribeFpgaImageAttributeResultBuilder()..update(updates))._build();

  _$DescribeFpgaImageAttributeResult._({this.fpgaImageAttribute}) : super._();

  @override
  DescribeFpgaImageAttributeResult rebuild(
          void Function(DescribeFpgaImageAttributeResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeFpgaImageAttributeResultBuilder toBuilder() =>
      new DescribeFpgaImageAttributeResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeFpgaImageAttributeResult &&
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

class DescribeFpgaImageAttributeResultBuilder
    implements
        Builder<DescribeFpgaImageAttributeResult,
            DescribeFpgaImageAttributeResultBuilder> {
  _$DescribeFpgaImageAttributeResult? _$v;

  FpgaImageAttributeBuilder? _fpgaImageAttribute;
  FpgaImageAttributeBuilder get fpgaImageAttribute =>
      _$this._fpgaImageAttribute ??= new FpgaImageAttributeBuilder();
  set fpgaImageAttribute(FpgaImageAttributeBuilder? fpgaImageAttribute) =>
      _$this._fpgaImageAttribute = fpgaImageAttribute;

  DescribeFpgaImageAttributeResultBuilder();

  DescribeFpgaImageAttributeResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fpgaImageAttribute = $v.fpgaImageAttribute?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeFpgaImageAttributeResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeFpgaImageAttributeResult;
  }

  @override
  void update(void Function(DescribeFpgaImageAttributeResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeFpgaImageAttributeResult build() => _build();

  _$DescribeFpgaImageAttributeResult _build() {
    _$DescribeFpgaImageAttributeResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeFpgaImageAttributeResult._(
              fpgaImageAttribute: _fpgaImageAttribute?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fpgaImageAttribute';
        _fpgaImageAttribute?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeFpgaImageAttributeResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
