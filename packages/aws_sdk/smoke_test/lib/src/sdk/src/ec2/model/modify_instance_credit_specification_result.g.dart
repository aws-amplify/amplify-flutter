// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_instance_credit_specification_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyInstanceCreditSpecificationResult
    extends ModifyInstanceCreditSpecificationResult {
  @override
  final _i2.BuiltList<SuccessfulInstanceCreditSpecificationItem>?
      successfulInstanceCreditSpecifications;
  @override
  final _i2.BuiltList<UnsuccessfulInstanceCreditSpecificationItem>?
      unsuccessfulInstanceCreditSpecifications;

  factory _$ModifyInstanceCreditSpecificationResult(
          [void Function(ModifyInstanceCreditSpecificationResultBuilder)?
              updates]) =>
      (new ModifyInstanceCreditSpecificationResultBuilder()..update(updates))
          ._build();

  _$ModifyInstanceCreditSpecificationResult._(
      {this.successfulInstanceCreditSpecifications,
      this.unsuccessfulInstanceCreditSpecifications})
      : super._();

  @override
  ModifyInstanceCreditSpecificationResult rebuild(
          void Function(ModifyInstanceCreditSpecificationResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyInstanceCreditSpecificationResultBuilder toBuilder() =>
      new ModifyInstanceCreditSpecificationResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyInstanceCreditSpecificationResult &&
        successfulInstanceCreditSpecifications ==
            other.successfulInstanceCreditSpecifications &&
        unsuccessfulInstanceCreditSpecifications ==
            other.unsuccessfulInstanceCreditSpecifications;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, successfulInstanceCreditSpecifications.hashCode);
    _$hash = $jc(_$hash, unsuccessfulInstanceCreditSpecifications.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyInstanceCreditSpecificationResultBuilder
    implements
        Builder<ModifyInstanceCreditSpecificationResult,
            ModifyInstanceCreditSpecificationResultBuilder> {
  _$ModifyInstanceCreditSpecificationResult? _$v;

  _i2.ListBuilder<SuccessfulInstanceCreditSpecificationItem>?
      _successfulInstanceCreditSpecifications;
  _i2.ListBuilder<SuccessfulInstanceCreditSpecificationItem>
      get successfulInstanceCreditSpecifications =>
          _$this._successfulInstanceCreditSpecifications ??=
              new _i2.ListBuilder<SuccessfulInstanceCreditSpecificationItem>();
  set successfulInstanceCreditSpecifications(
          _i2.ListBuilder<SuccessfulInstanceCreditSpecificationItem>?
              successfulInstanceCreditSpecifications) =>
      _$this._successfulInstanceCreditSpecifications =
          successfulInstanceCreditSpecifications;

  _i2.ListBuilder<UnsuccessfulInstanceCreditSpecificationItem>?
      _unsuccessfulInstanceCreditSpecifications;
  _i2.ListBuilder<UnsuccessfulInstanceCreditSpecificationItem>
      get unsuccessfulInstanceCreditSpecifications => _$this
              ._unsuccessfulInstanceCreditSpecifications ??=
          new _i2.ListBuilder<UnsuccessfulInstanceCreditSpecificationItem>();
  set unsuccessfulInstanceCreditSpecifications(
          _i2.ListBuilder<UnsuccessfulInstanceCreditSpecificationItem>?
              unsuccessfulInstanceCreditSpecifications) =>
      _$this._unsuccessfulInstanceCreditSpecifications =
          unsuccessfulInstanceCreditSpecifications;

  ModifyInstanceCreditSpecificationResultBuilder();

  ModifyInstanceCreditSpecificationResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _successfulInstanceCreditSpecifications =
          $v.successfulInstanceCreditSpecifications?.toBuilder();
      _unsuccessfulInstanceCreditSpecifications =
          $v.unsuccessfulInstanceCreditSpecifications?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyInstanceCreditSpecificationResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyInstanceCreditSpecificationResult;
  }

  @override
  void update(
      void Function(ModifyInstanceCreditSpecificationResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyInstanceCreditSpecificationResult build() => _build();

  _$ModifyInstanceCreditSpecificationResult _build() {
    _$ModifyInstanceCreditSpecificationResult _$result;
    try {
      _$result = _$v ??
          new _$ModifyInstanceCreditSpecificationResult._(
              successfulInstanceCreditSpecifications:
                  _successfulInstanceCreditSpecifications?.build(),
              unsuccessfulInstanceCreditSpecifications:
                  _unsuccessfulInstanceCreditSpecifications?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'successfulInstanceCreditSpecifications';
        _successfulInstanceCreditSpecifications?.build();
        _$failedField = 'unsuccessfulInstanceCreditSpecifications';
        _unsuccessfulInstanceCreditSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyInstanceCreditSpecificationResult',
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
