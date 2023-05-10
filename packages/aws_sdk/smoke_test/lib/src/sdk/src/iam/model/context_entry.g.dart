// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.context_entry;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ContextEntry extends ContextEntry {
  @override
  final String? contextKeyName;
  @override
  final _i3.BuiltList<String>? contextKeyValues;
  @override
  final _i2.ContextKeyTypeEnum? contextKeyType;

  factory _$ContextEntry([void Function(ContextEntryBuilder)? updates]) =>
      (new ContextEntryBuilder()..update(updates))._build();

  _$ContextEntry._(
      {this.contextKeyName, this.contextKeyValues, this.contextKeyType})
      : super._();

  @override
  ContextEntry rebuild(void Function(ContextEntryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContextEntryBuilder toBuilder() => new ContextEntryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContextEntry &&
        contextKeyName == other.contextKeyName &&
        contextKeyValues == other.contextKeyValues &&
        contextKeyType == other.contextKeyType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, contextKeyName.hashCode);
    _$hash = $jc(_$hash, contextKeyValues.hashCode);
    _$hash = $jc(_$hash, contextKeyType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ContextEntryBuilder
    implements Builder<ContextEntry, ContextEntryBuilder> {
  _$ContextEntry? _$v;

  String? _contextKeyName;
  String? get contextKeyName => _$this._contextKeyName;
  set contextKeyName(String? contextKeyName) =>
      _$this._contextKeyName = contextKeyName;

  _i3.ListBuilder<String>? _contextKeyValues;
  _i3.ListBuilder<String> get contextKeyValues =>
      _$this._contextKeyValues ??= new _i3.ListBuilder<String>();
  set contextKeyValues(_i3.ListBuilder<String>? contextKeyValues) =>
      _$this._contextKeyValues = contextKeyValues;

  _i2.ContextKeyTypeEnum? _contextKeyType;
  _i2.ContextKeyTypeEnum? get contextKeyType => _$this._contextKeyType;
  set contextKeyType(_i2.ContextKeyTypeEnum? contextKeyType) =>
      _$this._contextKeyType = contextKeyType;

  ContextEntryBuilder() {
    ContextEntry._init(this);
  }

  ContextEntryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _contextKeyName = $v.contextKeyName;
      _contextKeyValues = $v.contextKeyValues?.toBuilder();
      _contextKeyType = $v.contextKeyType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContextEntry other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ContextEntry;
  }

  @override
  void update(void Function(ContextEntryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ContextEntry build() => _build();

  _$ContextEntry _build() {
    _$ContextEntry _$result;
    try {
      _$result = _$v ??
          new _$ContextEntry._(
              contextKeyName: contextKeyName,
              contextKeyValues: _contextKeyValues?.build(),
              contextKeyType: contextKeyType);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'contextKeyValues';
        _contextKeyValues?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ContextEntry', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
