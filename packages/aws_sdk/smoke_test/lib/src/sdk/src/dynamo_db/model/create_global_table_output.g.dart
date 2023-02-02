// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.create_global_table_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateGlobalTableOutput extends CreateGlobalTableOutput {
  @override
  final _i2.GlobalTableDescription? globalTableDescription;

  factory _$CreateGlobalTableOutput(
          [void Function(CreateGlobalTableOutputBuilder)? updates]) =>
      (new CreateGlobalTableOutputBuilder()..update(updates))._build();

  _$CreateGlobalTableOutput._({this.globalTableDescription}) : super._();

  @override
  CreateGlobalTableOutput rebuild(
          void Function(CreateGlobalTableOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateGlobalTableOutputBuilder toBuilder() =>
      new CreateGlobalTableOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateGlobalTableOutput &&
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

class CreateGlobalTableOutputBuilder
    implements
        Builder<CreateGlobalTableOutput, CreateGlobalTableOutputBuilder> {
  _$CreateGlobalTableOutput? _$v;

  _i2.GlobalTableDescriptionBuilder? _globalTableDescription;
  _i2.GlobalTableDescriptionBuilder get globalTableDescription =>
      _$this._globalTableDescription ??=
          new _i2.GlobalTableDescriptionBuilder();
  set globalTableDescription(
          _i2.GlobalTableDescriptionBuilder? globalTableDescription) =>
      _$this._globalTableDescription = globalTableDescription;

  CreateGlobalTableOutputBuilder() {
    CreateGlobalTableOutput._init(this);
  }

  CreateGlobalTableOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _globalTableDescription = $v.globalTableDescription?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateGlobalTableOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateGlobalTableOutput;
  }

  @override
  void update(void Function(CreateGlobalTableOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateGlobalTableOutput build() => _build();

  _$CreateGlobalTableOutput _build() {
    _$CreateGlobalTableOutput _$result;
    try {
      _$result = _$v ??
          new _$CreateGlobalTableOutput._(
              globalTableDescription: _globalTableDescription?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'globalTableDescription';
        _globalTableDescription?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateGlobalTableOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
