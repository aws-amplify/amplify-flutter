// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.stack_drift_information;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StackDriftInformation extends StackDriftInformation {
  @override
  final _i2.StackDriftStatus stackDriftStatus;
  @override
  final DateTime? lastCheckTimestamp;

  factory _$StackDriftInformation(
          [void Function(StackDriftInformationBuilder)? updates]) =>
      (new StackDriftInformationBuilder()..update(updates))._build();

  _$StackDriftInformation._(
      {required this.stackDriftStatus, this.lastCheckTimestamp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        stackDriftStatus, r'StackDriftInformation', 'stackDriftStatus');
  }

  @override
  StackDriftInformation rebuild(
          void Function(StackDriftInformationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StackDriftInformationBuilder toBuilder() =>
      new StackDriftInformationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StackDriftInformation &&
        stackDriftStatus == other.stackDriftStatus &&
        lastCheckTimestamp == other.lastCheckTimestamp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackDriftStatus.hashCode);
    _$hash = $jc(_$hash, lastCheckTimestamp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StackDriftInformationBuilder
    implements Builder<StackDriftInformation, StackDriftInformationBuilder> {
  _$StackDriftInformation? _$v;

  _i2.StackDriftStatus? _stackDriftStatus;
  _i2.StackDriftStatus? get stackDriftStatus => _$this._stackDriftStatus;
  set stackDriftStatus(_i2.StackDriftStatus? stackDriftStatus) =>
      _$this._stackDriftStatus = stackDriftStatus;

  DateTime? _lastCheckTimestamp;
  DateTime? get lastCheckTimestamp => _$this._lastCheckTimestamp;
  set lastCheckTimestamp(DateTime? lastCheckTimestamp) =>
      _$this._lastCheckTimestamp = lastCheckTimestamp;

  StackDriftInformationBuilder() {
    StackDriftInformation._init(this);
  }

  StackDriftInformationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackDriftStatus = $v.stackDriftStatus;
      _lastCheckTimestamp = $v.lastCheckTimestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StackDriftInformation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StackDriftInformation;
  }

  @override
  void update(void Function(StackDriftInformationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StackDriftInformation build() => _build();

  _$StackDriftInformation _build() {
    final _$result = _$v ??
        new _$StackDriftInformation._(
            stackDriftStatus: BuiltValueNullFieldError.checkNotNull(
                stackDriftStatus, r'StackDriftInformation', 'stackDriftStatus'),
            lastCheckTimestamp: lastCheckTimestamp);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
