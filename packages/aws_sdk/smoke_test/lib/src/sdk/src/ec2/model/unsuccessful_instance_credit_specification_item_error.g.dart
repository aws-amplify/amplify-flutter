// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unsuccessful_instance_credit_specification_item_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UnsuccessfulInstanceCreditSpecificationItemError
    extends UnsuccessfulInstanceCreditSpecificationItemError {
  @override
  final UnsuccessfulInstanceCreditSpecificationErrorCode? code;
  @override
  final String? message;

  factory _$UnsuccessfulInstanceCreditSpecificationItemError(
          [void Function(
                  UnsuccessfulInstanceCreditSpecificationItemErrorBuilder)?
              updates]) =>
      (new UnsuccessfulInstanceCreditSpecificationItemErrorBuilder()
            ..update(updates))
          ._build();

  _$UnsuccessfulInstanceCreditSpecificationItemError._(
      {this.code, this.message})
      : super._();

  @override
  UnsuccessfulInstanceCreditSpecificationItemError rebuild(
          void Function(UnsuccessfulInstanceCreditSpecificationItemErrorBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UnsuccessfulInstanceCreditSpecificationItemErrorBuilder toBuilder() =>
      new UnsuccessfulInstanceCreditSpecificationItemErrorBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UnsuccessfulInstanceCreditSpecificationItemError &&
        code == other.code &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UnsuccessfulInstanceCreditSpecificationItemErrorBuilder
    implements
        Builder<UnsuccessfulInstanceCreditSpecificationItemError,
            UnsuccessfulInstanceCreditSpecificationItemErrorBuilder> {
  _$UnsuccessfulInstanceCreditSpecificationItemError? _$v;

  UnsuccessfulInstanceCreditSpecificationErrorCode? _code;
  UnsuccessfulInstanceCreditSpecificationErrorCode? get code => _$this._code;
  set code(UnsuccessfulInstanceCreditSpecificationErrorCode? code) =>
      _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  UnsuccessfulInstanceCreditSpecificationItemErrorBuilder();

  UnsuccessfulInstanceCreditSpecificationItemErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UnsuccessfulInstanceCreditSpecificationItemError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UnsuccessfulInstanceCreditSpecificationItemError;
  }

  @override
  void update(
      void Function(UnsuccessfulInstanceCreditSpecificationItemErrorBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  UnsuccessfulInstanceCreditSpecificationItemError build() => _build();

  _$UnsuccessfulInstanceCreditSpecificationItemError _build() {
    final _$result = _$v ??
        new _$UnsuccessfulInstanceCreditSpecificationItemError._(
            code: code, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
