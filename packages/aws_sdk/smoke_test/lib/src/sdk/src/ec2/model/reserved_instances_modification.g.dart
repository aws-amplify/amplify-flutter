// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reserved_instances_modification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReservedInstancesModification extends ReservedInstancesModification {
  @override
  final String? clientToken;
  @override
  final DateTime? createDate;
  @override
  final DateTime? effectiveDate;
  @override
  final _i2.BuiltList<ReservedInstancesModificationResult>? modificationResults;
  @override
  final _i2.BuiltList<ReservedInstancesId>? reservedInstancesIds;
  @override
  final String? reservedInstancesModificationId;
  @override
  final String? status;
  @override
  final String? statusMessage;
  @override
  final DateTime? updateDate;

  factory _$ReservedInstancesModification(
          [void Function(ReservedInstancesModificationBuilder)? updates]) =>
      (new ReservedInstancesModificationBuilder()..update(updates))._build();

  _$ReservedInstancesModification._(
      {this.clientToken,
      this.createDate,
      this.effectiveDate,
      this.modificationResults,
      this.reservedInstancesIds,
      this.reservedInstancesModificationId,
      this.status,
      this.statusMessage,
      this.updateDate})
      : super._();

  @override
  ReservedInstancesModification rebuild(
          void Function(ReservedInstancesModificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReservedInstancesModificationBuilder toBuilder() =>
      new ReservedInstancesModificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReservedInstancesModification &&
        clientToken == other.clientToken &&
        createDate == other.createDate &&
        effectiveDate == other.effectiveDate &&
        modificationResults == other.modificationResults &&
        reservedInstancesIds == other.reservedInstancesIds &&
        reservedInstancesModificationId ==
            other.reservedInstancesModificationId &&
        status == other.status &&
        statusMessage == other.statusMessage &&
        updateDate == other.updateDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, createDate.hashCode);
    _$hash = $jc(_$hash, effectiveDate.hashCode);
    _$hash = $jc(_$hash, modificationResults.hashCode);
    _$hash = $jc(_$hash, reservedInstancesIds.hashCode);
    _$hash = $jc(_$hash, reservedInstancesModificationId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, statusMessage.hashCode);
    _$hash = $jc(_$hash, updateDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReservedInstancesModificationBuilder
    implements
        Builder<ReservedInstancesModification,
            ReservedInstancesModificationBuilder> {
  _$ReservedInstancesModification? _$v;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  DateTime? _createDate;
  DateTime? get createDate => _$this._createDate;
  set createDate(DateTime? createDate) => _$this._createDate = createDate;

  DateTime? _effectiveDate;
  DateTime? get effectiveDate => _$this._effectiveDate;
  set effectiveDate(DateTime? effectiveDate) =>
      _$this._effectiveDate = effectiveDate;

  _i2.ListBuilder<ReservedInstancesModificationResult>? _modificationResults;
  _i2.ListBuilder<ReservedInstancesModificationResult>
      get modificationResults => _$this._modificationResults ??=
          new _i2.ListBuilder<ReservedInstancesModificationResult>();
  set modificationResults(
          _i2.ListBuilder<ReservedInstancesModificationResult>?
              modificationResults) =>
      _$this._modificationResults = modificationResults;

  _i2.ListBuilder<ReservedInstancesId>? _reservedInstancesIds;
  _i2.ListBuilder<ReservedInstancesId> get reservedInstancesIds =>
      _$this._reservedInstancesIds ??=
          new _i2.ListBuilder<ReservedInstancesId>();
  set reservedInstancesIds(
          _i2.ListBuilder<ReservedInstancesId>? reservedInstancesIds) =>
      _$this._reservedInstancesIds = reservedInstancesIds;

  String? _reservedInstancesModificationId;
  String? get reservedInstancesModificationId =>
      _$this._reservedInstancesModificationId;
  set reservedInstancesModificationId(
          String? reservedInstancesModificationId) =>
      _$this._reservedInstancesModificationId = reservedInstancesModificationId;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _statusMessage;
  String? get statusMessage => _$this._statusMessage;
  set statusMessage(String? statusMessage) =>
      _$this._statusMessage = statusMessage;

  DateTime? _updateDate;
  DateTime? get updateDate => _$this._updateDate;
  set updateDate(DateTime? updateDate) => _$this._updateDate = updateDate;

  ReservedInstancesModificationBuilder();

  ReservedInstancesModificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientToken = $v.clientToken;
      _createDate = $v.createDate;
      _effectiveDate = $v.effectiveDate;
      _modificationResults = $v.modificationResults?.toBuilder();
      _reservedInstancesIds = $v.reservedInstancesIds?.toBuilder();
      _reservedInstancesModificationId = $v.reservedInstancesModificationId;
      _status = $v.status;
      _statusMessage = $v.statusMessage;
      _updateDate = $v.updateDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReservedInstancesModification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReservedInstancesModification;
  }

  @override
  void update(void Function(ReservedInstancesModificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReservedInstancesModification build() => _build();

  _$ReservedInstancesModification _build() {
    _$ReservedInstancesModification _$result;
    try {
      _$result = _$v ??
          new _$ReservedInstancesModification._(
              clientToken: clientToken,
              createDate: createDate,
              effectiveDate: effectiveDate,
              modificationResults: _modificationResults?.build(),
              reservedInstancesIds: _reservedInstancesIds?.build(),
              reservedInstancesModificationId: reservedInstancesModificationId,
              status: status,
              statusMessage: statusMessage,
              updateDate: updateDate);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'modificationResults';
        _modificationResults?.build();
        _$failedField = 'reservedInstancesIds';
        _reservedInstancesIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ReservedInstancesModification', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
