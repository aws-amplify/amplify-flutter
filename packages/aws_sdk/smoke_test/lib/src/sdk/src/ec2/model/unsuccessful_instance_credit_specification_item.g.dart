// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unsuccessful_instance_credit_specification_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UnsuccessfulInstanceCreditSpecificationItem
    extends UnsuccessfulInstanceCreditSpecificationItem {
  @override
  final String? instanceId;
  @override
  final UnsuccessfulInstanceCreditSpecificationItemError? error;

  factory _$UnsuccessfulInstanceCreditSpecificationItem(
          [void Function(UnsuccessfulInstanceCreditSpecificationItemBuilder)?
              updates]) =>
      (new UnsuccessfulInstanceCreditSpecificationItemBuilder()
            ..update(updates))
          ._build();

  _$UnsuccessfulInstanceCreditSpecificationItem._({this.instanceId, this.error})
      : super._();

  @override
  UnsuccessfulInstanceCreditSpecificationItem rebuild(
          void Function(UnsuccessfulInstanceCreditSpecificationItemBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UnsuccessfulInstanceCreditSpecificationItemBuilder toBuilder() =>
      new UnsuccessfulInstanceCreditSpecificationItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UnsuccessfulInstanceCreditSpecificationItem &&
        instanceId == other.instanceId &&
        error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UnsuccessfulInstanceCreditSpecificationItemBuilder
    implements
        Builder<UnsuccessfulInstanceCreditSpecificationItem,
            UnsuccessfulInstanceCreditSpecificationItemBuilder> {
  _$UnsuccessfulInstanceCreditSpecificationItem? _$v;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  UnsuccessfulInstanceCreditSpecificationItemErrorBuilder? _error;
  UnsuccessfulInstanceCreditSpecificationItemErrorBuilder get error =>
      _$this._error ??=
          new UnsuccessfulInstanceCreditSpecificationItemErrorBuilder();
  set error(UnsuccessfulInstanceCreditSpecificationItemErrorBuilder? error) =>
      _$this._error = error;

  UnsuccessfulInstanceCreditSpecificationItemBuilder();

  UnsuccessfulInstanceCreditSpecificationItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceId = $v.instanceId;
      _error = $v.error?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UnsuccessfulInstanceCreditSpecificationItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UnsuccessfulInstanceCreditSpecificationItem;
  }

  @override
  void update(
      void Function(UnsuccessfulInstanceCreditSpecificationItemBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  UnsuccessfulInstanceCreditSpecificationItem build() => _build();

  _$UnsuccessfulInstanceCreditSpecificationItem _build() {
    _$UnsuccessfulInstanceCreditSpecificationItem _$result;
    try {
      _$result = _$v ??
          new _$UnsuccessfulInstanceCreditSpecificationItem._(
              instanceId: instanceId, error: _error?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'error';
        _error?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UnsuccessfulInstanceCreditSpecificationItem',
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
