// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stack_set_operation_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StackSetOperationSummary extends StackSetOperationSummary {
  @override
  final String? operationId;
  @override
  final _i2.StackSetOperationAction? action;
  @override
  final _i3.StackSetOperationStatus? status;
  @override
  final DateTime? creationTimestamp;
  @override
  final DateTime? endTimestamp;
  @override
  final String? statusReason;
  @override
  final _i4.StackSetOperationStatusDetails? statusDetails;
  @override
  final _i5.StackSetOperationPreferences? operationPreferences;

  factory _$StackSetOperationSummary(
          [void Function(StackSetOperationSummaryBuilder)? updates]) =>
      (new StackSetOperationSummaryBuilder()..update(updates))._build();

  _$StackSetOperationSummary._(
      {this.operationId,
      this.action,
      this.status,
      this.creationTimestamp,
      this.endTimestamp,
      this.statusReason,
      this.statusDetails,
      this.operationPreferences})
      : super._();

  @override
  StackSetOperationSummary rebuild(
          void Function(StackSetOperationSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StackSetOperationSummaryBuilder toBuilder() =>
      new StackSetOperationSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StackSetOperationSummary &&
        operationId == other.operationId &&
        action == other.action &&
        status == other.status &&
        creationTimestamp == other.creationTimestamp &&
        endTimestamp == other.endTimestamp &&
        statusReason == other.statusReason &&
        statusDetails == other.statusDetails &&
        operationPreferences == other.operationPreferences;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, operationId.hashCode);
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, creationTimestamp.hashCode);
    _$hash = $jc(_$hash, endTimestamp.hashCode);
    _$hash = $jc(_$hash, statusReason.hashCode);
    _$hash = $jc(_$hash, statusDetails.hashCode);
    _$hash = $jc(_$hash, operationPreferences.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StackSetOperationSummaryBuilder
    implements
        Builder<StackSetOperationSummary, StackSetOperationSummaryBuilder> {
  _$StackSetOperationSummary? _$v;

  String? _operationId;
  String? get operationId => _$this._operationId;
  set operationId(String? operationId) => _$this._operationId = operationId;

  _i2.StackSetOperationAction? _action;
  _i2.StackSetOperationAction? get action => _$this._action;
  set action(_i2.StackSetOperationAction? action) => _$this._action = action;

  _i3.StackSetOperationStatus? _status;
  _i3.StackSetOperationStatus? get status => _$this._status;
  set status(_i3.StackSetOperationStatus? status) => _$this._status = status;

  DateTime? _creationTimestamp;
  DateTime? get creationTimestamp => _$this._creationTimestamp;
  set creationTimestamp(DateTime? creationTimestamp) =>
      _$this._creationTimestamp = creationTimestamp;

  DateTime? _endTimestamp;
  DateTime? get endTimestamp => _$this._endTimestamp;
  set endTimestamp(DateTime? endTimestamp) =>
      _$this._endTimestamp = endTimestamp;

  String? _statusReason;
  String? get statusReason => _$this._statusReason;
  set statusReason(String? statusReason) => _$this._statusReason = statusReason;

  _i4.StackSetOperationStatusDetailsBuilder? _statusDetails;
  _i4.StackSetOperationStatusDetailsBuilder get statusDetails =>
      _$this._statusDetails ??= new _i4.StackSetOperationStatusDetailsBuilder();
  set statusDetails(_i4.StackSetOperationStatusDetailsBuilder? statusDetails) =>
      _$this._statusDetails = statusDetails;

  _i5.StackSetOperationPreferencesBuilder? _operationPreferences;
  _i5.StackSetOperationPreferencesBuilder get operationPreferences =>
      _$this._operationPreferences ??=
          new _i5.StackSetOperationPreferencesBuilder();
  set operationPreferences(
          _i5.StackSetOperationPreferencesBuilder? operationPreferences) =>
      _$this._operationPreferences = operationPreferences;

  StackSetOperationSummaryBuilder() {
    StackSetOperationSummary._init(this);
  }

  StackSetOperationSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _operationId = $v.operationId;
      _action = $v.action;
      _status = $v.status;
      _creationTimestamp = $v.creationTimestamp;
      _endTimestamp = $v.endTimestamp;
      _statusReason = $v.statusReason;
      _statusDetails = $v.statusDetails?.toBuilder();
      _operationPreferences = $v.operationPreferences?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StackSetOperationSummary other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StackSetOperationSummary;
  }

  @override
  void update(void Function(StackSetOperationSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StackSetOperationSummary build() => _build();

  _$StackSetOperationSummary _build() {
    _$StackSetOperationSummary _$result;
    try {
      _$result = _$v ??
          new _$StackSetOperationSummary._(
              operationId: operationId,
              action: action,
              status: status,
              creationTimestamp: creationTimestamp,
              endTimestamp: endTimestamp,
              statusReason: statusReason,
              statusDetails: _statusDetails?.build(),
              operationPreferences: _operationPreferences?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'statusDetails';
        _statusDetails?.build();
        _$failedField = 'operationPreferences';
        _operationPreferences?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StackSetOperationSummary', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
