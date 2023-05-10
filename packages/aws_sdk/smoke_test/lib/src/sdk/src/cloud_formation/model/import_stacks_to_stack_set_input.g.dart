// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.import_stacks_to_stack_set_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportStacksToStackSetInput extends ImportStacksToStackSetInput {
  @override
  final String stackSetName;
  @override
  final _i5.BuiltList<String>? stackIds;
  @override
  final String? stackIdsUrl;
  @override
  final _i5.BuiltList<String>? organizationalUnitIds;
  @override
  final _i3.StackSetOperationPreferences? operationPreferences;
  @override
  final String? operationId;
  @override
  final _i4.CallAs? callAs;

  factory _$ImportStacksToStackSetInput(
          [void Function(ImportStacksToStackSetInputBuilder)? updates]) =>
      (new ImportStacksToStackSetInputBuilder()..update(updates))._build();

  _$ImportStacksToStackSetInput._(
      {required this.stackSetName,
      this.stackIds,
      this.stackIdsUrl,
      this.organizationalUnitIds,
      this.operationPreferences,
      this.operationId,
      this.callAs})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        stackSetName, r'ImportStacksToStackSetInput', 'stackSetName');
  }

  @override
  ImportStacksToStackSetInput rebuild(
          void Function(ImportStacksToStackSetInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImportStacksToStackSetInputBuilder toBuilder() =>
      new ImportStacksToStackSetInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImportStacksToStackSetInput &&
        stackSetName == other.stackSetName &&
        stackIds == other.stackIds &&
        stackIdsUrl == other.stackIdsUrl &&
        organizationalUnitIds == other.organizationalUnitIds &&
        operationPreferences == other.operationPreferences &&
        operationId == other.operationId &&
        callAs == other.callAs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackSetName.hashCode);
    _$hash = $jc(_$hash, stackIds.hashCode);
    _$hash = $jc(_$hash, stackIdsUrl.hashCode);
    _$hash = $jc(_$hash, organizationalUnitIds.hashCode);
    _$hash = $jc(_$hash, operationPreferences.hashCode);
    _$hash = $jc(_$hash, operationId.hashCode);
    _$hash = $jc(_$hash, callAs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ImportStacksToStackSetInputBuilder
    implements
        Builder<ImportStacksToStackSetInput,
            ImportStacksToStackSetInputBuilder> {
  _$ImportStacksToStackSetInput? _$v;

  String? _stackSetName;
  String? get stackSetName => _$this._stackSetName;
  set stackSetName(String? stackSetName) => _$this._stackSetName = stackSetName;

  _i5.ListBuilder<String>? _stackIds;
  _i5.ListBuilder<String> get stackIds =>
      _$this._stackIds ??= new _i5.ListBuilder<String>();
  set stackIds(_i5.ListBuilder<String>? stackIds) =>
      _$this._stackIds = stackIds;

  String? _stackIdsUrl;
  String? get stackIdsUrl => _$this._stackIdsUrl;
  set stackIdsUrl(String? stackIdsUrl) => _$this._stackIdsUrl = stackIdsUrl;

  _i5.ListBuilder<String>? _organizationalUnitIds;
  _i5.ListBuilder<String> get organizationalUnitIds =>
      _$this._organizationalUnitIds ??= new _i5.ListBuilder<String>();
  set organizationalUnitIds(_i5.ListBuilder<String>? organizationalUnitIds) =>
      _$this._organizationalUnitIds = organizationalUnitIds;

  _i3.StackSetOperationPreferencesBuilder? _operationPreferences;
  _i3.StackSetOperationPreferencesBuilder get operationPreferences =>
      _$this._operationPreferences ??=
          new _i3.StackSetOperationPreferencesBuilder();
  set operationPreferences(
          _i3.StackSetOperationPreferencesBuilder? operationPreferences) =>
      _$this._operationPreferences = operationPreferences;

  String? _operationId;
  String? get operationId => _$this._operationId;
  set operationId(String? operationId) => _$this._operationId = operationId;

  _i4.CallAs? _callAs;
  _i4.CallAs? get callAs => _$this._callAs;
  set callAs(_i4.CallAs? callAs) => _$this._callAs = callAs;

  ImportStacksToStackSetInputBuilder() {
    ImportStacksToStackSetInput._init(this);
  }

  ImportStacksToStackSetInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackSetName = $v.stackSetName;
      _stackIds = $v.stackIds?.toBuilder();
      _stackIdsUrl = $v.stackIdsUrl;
      _organizationalUnitIds = $v.organizationalUnitIds?.toBuilder();
      _operationPreferences = $v.operationPreferences?.toBuilder();
      _operationId = $v.operationId;
      _callAs = $v.callAs;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImportStacksToStackSetInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImportStacksToStackSetInput;
  }

  @override
  void update(void Function(ImportStacksToStackSetInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImportStacksToStackSetInput build() => _build();

  _$ImportStacksToStackSetInput _build() {
    _$ImportStacksToStackSetInput _$result;
    try {
      _$result = _$v ??
          new _$ImportStacksToStackSetInput._(
              stackSetName: BuiltValueNullFieldError.checkNotNull(
                  stackSetName, r'ImportStacksToStackSetInput', 'stackSetName'),
              stackIds: _stackIds?.build(),
              stackIdsUrl: stackIdsUrl,
              organizationalUnitIds: _organizationalUnitIds?.build(),
              operationPreferences: _operationPreferences?.build(),
              operationId: operationId,
              callAs: callAs);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'stackIds';
        _stackIds?.build();

        _$failedField = 'organizationalUnitIds';
        _organizationalUnitIds?.build();
        _$failedField = 'operationPreferences';
        _operationPreferences?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ImportStacksToStackSetInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
