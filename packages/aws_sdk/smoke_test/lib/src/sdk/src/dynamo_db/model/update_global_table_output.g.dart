// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.update_global_table_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateGlobalTableOutput extends UpdateGlobalTableOutput {
  @override
  final _i2.GlobalTableDescription? globalTableDescription;

  factory _$UpdateGlobalTableOutput(
          [void Function(UpdateGlobalTableOutputBuilder)? updates]) =>
      (new UpdateGlobalTableOutputBuilder()..update(updates))._build();

  _$UpdateGlobalTableOutput._({this.globalTableDescription}) : super._();

  @override
  UpdateGlobalTableOutput rebuild(
          void Function(UpdateGlobalTableOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateGlobalTableOutputBuilder toBuilder() =>
      new UpdateGlobalTableOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateGlobalTableOutput &&
        globalTableDescription == other.globalTableDescription;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, globalTableDescription.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateGlobalTableOutputBuilder
    implements
        Builder<UpdateGlobalTableOutput, UpdateGlobalTableOutputBuilder> {
  _$UpdateGlobalTableOutput? _$v;

  _i2.GlobalTableDescriptionBuilder? _globalTableDescription;
  _i2.GlobalTableDescriptionBuilder get globalTableDescription =>
      _$this._globalTableDescription ??=
          new _i2.GlobalTableDescriptionBuilder();
  set globalTableDescription(
          _i2.GlobalTableDescriptionBuilder? globalTableDescription) =>
      _$this._globalTableDescription = globalTableDescription;

  UpdateGlobalTableOutputBuilder() {
    UpdateGlobalTableOutput._init(this);
  }

  UpdateGlobalTableOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _globalTableDescription = $v.globalTableDescription?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateGlobalTableOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateGlobalTableOutput;
  }

  @override
  void update(void Function(UpdateGlobalTableOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateGlobalTableOutput build() => _build();

  _$UpdateGlobalTableOutput _build() {
    _$UpdateGlobalTableOutput _$result;
    try {
      _$result = _$v ??
          new _$UpdateGlobalTableOutput._(
              globalTableDescription: _globalTableDescription?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'globalTableDescription';
        _globalTableDescription?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateGlobalTableOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
