// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'successful_instance_credit_specification_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SuccessfulInstanceCreditSpecificationItem
    extends SuccessfulInstanceCreditSpecificationItem {
  @override
  final String? instanceId;

  factory _$SuccessfulInstanceCreditSpecificationItem(
          [void Function(SuccessfulInstanceCreditSpecificationItemBuilder)?
              updates]) =>
      (new SuccessfulInstanceCreditSpecificationItemBuilder()..update(updates))
          ._build();

  _$SuccessfulInstanceCreditSpecificationItem._({this.instanceId}) : super._();

  @override
  SuccessfulInstanceCreditSpecificationItem rebuild(
          void Function(SuccessfulInstanceCreditSpecificationItemBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SuccessfulInstanceCreditSpecificationItemBuilder toBuilder() =>
      new SuccessfulInstanceCreditSpecificationItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SuccessfulInstanceCreditSpecificationItem &&
        instanceId == other.instanceId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SuccessfulInstanceCreditSpecificationItemBuilder
    implements
        Builder<SuccessfulInstanceCreditSpecificationItem,
            SuccessfulInstanceCreditSpecificationItemBuilder> {
  _$SuccessfulInstanceCreditSpecificationItem? _$v;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  SuccessfulInstanceCreditSpecificationItemBuilder();

  SuccessfulInstanceCreditSpecificationItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceId = $v.instanceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SuccessfulInstanceCreditSpecificationItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SuccessfulInstanceCreditSpecificationItem;
  }

  @override
  void update(
      void Function(SuccessfulInstanceCreditSpecificationItemBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  SuccessfulInstanceCreditSpecificationItem build() => _build();

  _$SuccessfulInstanceCreditSpecificationItem _build() {
    final _$result = _$v ??
        new _$SuccessfulInstanceCreditSpecificationItem._(
            instanceId: instanceId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
