// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.update_time_to_live_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateTimeToLiveInput extends UpdateTimeToLiveInput {
  @override
  final String tableName;
  @override
  final _i3.TimeToLiveSpecification timeToLiveSpecification;

  factory _$UpdateTimeToLiveInput(
          [void Function(UpdateTimeToLiveInputBuilder)? updates]) =>
      (new UpdateTimeToLiveInputBuilder()..update(updates))._build();

  _$UpdateTimeToLiveInput._(
      {required this.tableName, required this.timeToLiveSpecification})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tableName, r'UpdateTimeToLiveInput', 'tableName');
    BuiltValueNullFieldError.checkNotNull(timeToLiveSpecification,
        r'UpdateTimeToLiveInput', 'timeToLiveSpecification');
  }

  @override
  UpdateTimeToLiveInput rebuild(
          void Function(UpdateTimeToLiveInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateTimeToLiveInputBuilder toBuilder() =>
      new UpdateTimeToLiveInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateTimeToLiveInput &&
        tableName == other.tableName &&
        timeToLiveSpecification == other.timeToLiveSpecification;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tableName.hashCode);
    _$hash = $jc(_$hash, timeToLiveSpecification.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateTimeToLiveInputBuilder
    implements Builder<UpdateTimeToLiveInput, UpdateTimeToLiveInputBuilder> {
  _$UpdateTimeToLiveInput? _$v;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  _i3.TimeToLiveSpecificationBuilder? _timeToLiveSpecification;
  _i3.TimeToLiveSpecificationBuilder get timeToLiveSpecification =>
      _$this._timeToLiveSpecification ??=
          new _i3.TimeToLiveSpecificationBuilder();
  set timeToLiveSpecification(
          _i3.TimeToLiveSpecificationBuilder? timeToLiveSpecification) =>
      _$this._timeToLiveSpecification = timeToLiveSpecification;

  UpdateTimeToLiveInputBuilder() {
    UpdateTimeToLiveInput._init(this);
  }

  UpdateTimeToLiveInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tableName = $v.tableName;
      _timeToLiveSpecification = $v.timeToLiveSpecification.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateTimeToLiveInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateTimeToLiveInput;
  }

  @override
  void update(void Function(UpdateTimeToLiveInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateTimeToLiveInput build() => _build();

  _$UpdateTimeToLiveInput _build() {
    _$UpdateTimeToLiveInput _$result;
    try {
      _$result = _$v ??
          new _$UpdateTimeToLiveInput._(
              tableName: BuiltValueNullFieldError.checkNotNull(
                  tableName, r'UpdateTimeToLiveInput', 'tableName'),
              timeToLiveSpecification: timeToLiveSpecification.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'timeToLiveSpecification';
        timeToLiveSpecification.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateTimeToLiveInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
