// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_default_credit_specification_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetDefaultCreditSpecificationResult
    extends GetDefaultCreditSpecificationResult {
  @override
  final InstanceFamilyCreditSpecification? instanceFamilyCreditSpecification;

  factory _$GetDefaultCreditSpecificationResult(
          [void Function(GetDefaultCreditSpecificationResultBuilder)?
              updates]) =>
      (new GetDefaultCreditSpecificationResultBuilder()..update(updates))
          ._build();

  _$GetDefaultCreditSpecificationResult._(
      {this.instanceFamilyCreditSpecification})
      : super._();

  @override
  GetDefaultCreditSpecificationResult rebuild(
          void Function(GetDefaultCreditSpecificationResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetDefaultCreditSpecificationResultBuilder toBuilder() =>
      new GetDefaultCreditSpecificationResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetDefaultCreditSpecificationResult &&
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

class GetDefaultCreditSpecificationResultBuilder
    implements
        Builder<GetDefaultCreditSpecificationResult,
            GetDefaultCreditSpecificationResultBuilder> {
  _$GetDefaultCreditSpecificationResult? _$v;

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

  GetDefaultCreditSpecificationResultBuilder();

  GetDefaultCreditSpecificationResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceFamilyCreditSpecification =
          $v.instanceFamilyCreditSpecification?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetDefaultCreditSpecificationResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetDefaultCreditSpecificationResult;
  }

  @override
  void update(
      void Function(GetDefaultCreditSpecificationResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetDefaultCreditSpecificationResult build() => _build();

  _$GetDefaultCreditSpecificationResult _build() {
    _$GetDefaultCreditSpecificationResult _$result;
    try {
      _$result = _$v ??
          new _$GetDefaultCreditSpecificationResult._(
              instanceFamilyCreditSpecification:
                  _instanceFamilyCreditSpecification?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceFamilyCreditSpecification';
        _instanceFamilyCreditSpecification?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetDefaultCreditSpecificationResult',
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
