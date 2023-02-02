// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.update_continuous_backups_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateContinuousBackupsOutput extends UpdateContinuousBackupsOutput {
  @override
  final _i2.ContinuousBackupsDescription? continuousBackupsDescription;

  factory _$UpdateContinuousBackupsOutput(
          [void Function(UpdateContinuousBackupsOutputBuilder)? updates]) =>
      (new UpdateContinuousBackupsOutputBuilder()..update(updates))._build();

  _$UpdateContinuousBackupsOutput._({this.continuousBackupsDescription})
      : super._();

  @override
  UpdateContinuousBackupsOutput rebuild(
          void Function(UpdateContinuousBackupsOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateContinuousBackupsOutputBuilder toBuilder() =>
      new UpdateContinuousBackupsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateContinuousBackupsOutput &&
        continuousBackupsDescription == other.continuousBackupsDescription;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, continuousBackupsDescription.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateContinuousBackupsOutputBuilder
    implements
        Builder<UpdateContinuousBackupsOutput,
            UpdateContinuousBackupsOutputBuilder> {
  _$UpdateContinuousBackupsOutput? _$v;

  _i2.ContinuousBackupsDescriptionBuilder? _continuousBackupsDescription;
  _i2.ContinuousBackupsDescriptionBuilder get continuousBackupsDescription =>
      _$this._continuousBackupsDescription ??=
          new _i2.ContinuousBackupsDescriptionBuilder();
  set continuousBackupsDescription(
          _i2.ContinuousBackupsDescriptionBuilder?
              continuousBackupsDescription) =>
      _$this._continuousBackupsDescription = continuousBackupsDescription;

  UpdateContinuousBackupsOutputBuilder() {
    UpdateContinuousBackupsOutput._init(this);
  }

  UpdateContinuousBackupsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _continuousBackupsDescription =
          $v.continuousBackupsDescription?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateContinuousBackupsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateContinuousBackupsOutput;
  }

  @override
  void update(void Function(UpdateContinuousBackupsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateContinuousBackupsOutput build() => _build();

  _$UpdateContinuousBackupsOutput _build() {
    _$UpdateContinuousBackupsOutput _$result;
    try {
      _$result = _$v ??
          new _$UpdateContinuousBackupsOutput._(
              continuousBackupsDescription:
                  _continuousBackupsDescription?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'continuousBackupsDescription';
        _continuousBackupsDescription?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateContinuousBackupsOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
