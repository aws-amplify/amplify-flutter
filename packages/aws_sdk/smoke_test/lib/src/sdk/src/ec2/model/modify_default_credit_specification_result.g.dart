// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_default_credit_specification_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyDefaultCreditSpecificationResult
    extends ModifyDefaultCreditSpecificationResult {
  @override
  final InstanceFamilyCreditSpecification? instanceFamilyCreditSpecification;

  factory _$ModifyDefaultCreditSpecificationResult(
          [void Function(ModifyDefaultCreditSpecificationResultBuilder)?
              updates]) =>
      (new ModifyDefaultCreditSpecificationResultBuilder()..update(updates))
          ._build();

  _$ModifyDefaultCreditSpecificationResult._(
      {this.instanceFamilyCreditSpecification})
      : super._();

  @override
  ModifyDefaultCreditSpecificationResult rebuild(
          void Function(ModifyDefaultCreditSpecificationResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyDefaultCreditSpecificationResultBuilder toBuilder() =>
      new ModifyDefaultCreditSpecificationResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyDefaultCreditSpecificationResult &&
        instanceFamilyCreditSpecification ==
            other.instanceFamilyCreditSpecification;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceFamilyCreditSpecification.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyDefaultCreditSpecificationResultBuilder
    implements
        Builder<ModifyDefaultCreditSpecificationResult,
            ModifyDefaultCreditSpecificationResultBuilder> {
  _$ModifyDefaultCreditSpecificationResult? _$v;

  InstanceFamilyCreditSpecificationBuilder? _instanceFamilyCreditSpecification;
  InstanceFamilyCreditSpecificationBuilder
      get instanceFamilyCreditSpecification =>
          _$this._instanceFamilyCreditSpecification ??=
              new InstanceFamilyCreditSpecificationBuilder();
  set instanceFamilyCreditSpecification(
          InstanceFamilyCreditSpecificationBuilder?
              instanceFamilyCreditSpecification) =>
      _$this._instanceFamilyCreditSpecification =
          instanceFamilyCreditSpecification;

  ModifyDefaultCreditSpecificationResultBuilder();

  ModifyDefaultCreditSpecificationResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceFamilyCreditSpecification =
          $v.instanceFamilyCreditSpecification?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyDefaultCreditSpecificationResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyDefaultCreditSpecificationResult;
  }

  @override
  void update(
      void Function(ModifyDefaultCreditSpecificationResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyDefaultCreditSpecificationResult build() => _build();

  _$ModifyDefaultCreditSpecificationResult _build() {
    _$ModifyDefaultCreditSpecificationResult _$result;
    try {
      _$result = _$v ??
          new _$ModifyDefaultCreditSpecificationResult._(
              instanceFamilyCreditSpecification:
                  _instanceFamilyCreditSpecification?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceFamilyCreditSpecification';
        _instanceFamilyCreditSpecification?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyDefaultCreditSpecificationResult',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
