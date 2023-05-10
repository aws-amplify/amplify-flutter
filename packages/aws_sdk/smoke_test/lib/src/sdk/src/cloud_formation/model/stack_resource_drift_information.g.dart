// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.stack_resource_drift_information;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StackResourceDriftInformation extends StackResourceDriftInformation {
  @override
  final _i2.StackResourceDriftStatus stackResourceDriftStatus;
  @override
  final DateTime? lastCheckTimestamp;

  factory _$StackResourceDriftInformation(
          [void Function(StackResourceDriftInformationBuilder)? updates]) =>
      (new StackResourceDriftInformationBuilder()..update(updates))._build();

  _$StackResourceDriftInformation._(
      {required this.stackResourceDriftStatus, this.lastCheckTimestamp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(stackResourceDriftStatus,
        r'StackResourceDriftInformation', 'stackResourceDriftStatus');
  }

  @override
  StackResourceDriftInformation rebuild(
          void Function(StackResourceDriftInformationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StackResourceDriftInformationBuilder toBuilder() =>
      new StackResourceDriftInformationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StackResourceDriftInformation &&
        stackResourceDriftStatus == other.stackResourceDriftStatus &&
        lastCheckTimestamp == other.lastCheckTimestamp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackResourceDriftStatus.hashCode);
    _$hash = $jc(_$hash, lastCheckTimestamp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StackResourceDriftInformationBuilder
    implements
        Builder<StackResourceDriftInformation,
            StackResourceDriftInformationBuilder> {
  _$StackResourceDriftInformation? _$v;

  _i2.StackResourceDriftStatus? _stackResourceDriftStatus;
  _i2.StackResourceDriftStatus? get stackResourceDriftStatus =>
      _$this._stackResourceDriftStatus;
  set stackResourceDriftStatus(
          _i2.StackResourceDriftStatus? stackResourceDriftStatus) =>
      _$this._stackResourceDriftStatus = stackResourceDriftStatus;

  DateTime? _lastCheckTimestamp;
  DateTime? get lastCheckTimestamp => _$this._lastCheckTimestamp;
  set lastCheckTimestamp(DateTime? lastCheckTimestamp) =>
      _$this._lastCheckTimestamp = lastCheckTimestamp;

  StackResourceDriftInformationBuilder() {
    StackResourceDriftInformation._init(this);
  }

  StackResourceDriftInformationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackResourceDriftStatus = $v.stackResourceDriftStatus;
      _lastCheckTimestamp = $v.lastCheckTimestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StackResourceDriftInformation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StackResourceDriftInformation;
  }

  @override
  void update(void Function(StackResourceDriftInformationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StackResourceDriftInformation build() => _build();

  _$StackResourceDriftInformation _build() {
    final _$result = _$v ??
        new _$StackResourceDriftInformation._(
            stackResourceDriftStatus: BuiltValueNullFieldError.checkNotNull(
                stackResourceDriftStatus,
                r'StackResourceDriftInformation',
                'stackResourceDriftStatus'),
            lastCheckTimestamp: lastCheckTimestamp);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
