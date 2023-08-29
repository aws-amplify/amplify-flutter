// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'successful_queued_purchase_deletion.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SuccessfulQueuedPurchaseDeletion
    extends SuccessfulQueuedPurchaseDeletion {
  @override
  final String? reservedInstancesId;

  factory _$SuccessfulQueuedPurchaseDeletion(
          [void Function(SuccessfulQueuedPurchaseDeletionBuilder)? updates]) =>
      (new SuccessfulQueuedPurchaseDeletionBuilder()..update(updates))._build();

  _$SuccessfulQueuedPurchaseDeletion._({this.reservedInstancesId}) : super._();

  @override
  SuccessfulQueuedPurchaseDeletion rebuild(
          void Function(SuccessfulQueuedPurchaseDeletionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SuccessfulQueuedPurchaseDeletionBuilder toBuilder() =>
      new SuccessfulQueuedPurchaseDeletionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SuccessfulQueuedPurchaseDeletion &&
        reservedInstancesId == other.reservedInstancesId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reservedInstancesId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SuccessfulQueuedPurchaseDeletionBuilder
    implements
        Builder<SuccessfulQueuedPurchaseDeletion,
            SuccessfulQueuedPurchaseDeletionBuilder> {
  _$SuccessfulQueuedPurchaseDeletion? _$v;

  String? _reservedInstancesId;
  String? get reservedInstancesId => _$this._reservedInstancesId;
  set reservedInstancesId(String? reservedInstancesId) =>
      _$this._reservedInstancesId = reservedInstancesId;

  SuccessfulQueuedPurchaseDeletionBuilder();

  SuccessfulQueuedPurchaseDeletionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reservedInstancesId = $v.reservedInstancesId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SuccessfulQueuedPurchaseDeletion other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SuccessfulQueuedPurchaseDeletion;
  }

  @override
  void update(void Function(SuccessfulQueuedPurchaseDeletionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SuccessfulQueuedPurchaseDeletion build() => _build();

  _$SuccessfulQueuedPurchaseDeletion _build() {
    final _$result = _$v ??
        new _$SuccessfulQueuedPurchaseDeletion._(
            reservedInstancesId: reservedInstancesId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
