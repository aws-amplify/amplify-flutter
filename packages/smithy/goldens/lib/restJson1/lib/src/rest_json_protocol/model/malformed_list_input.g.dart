// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.rest_json_protocol.model.malformed_list_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedListInput extends MalformedListInput {
  @override
  final _i3.BuiltList<String>? bodyList;

  factory _$MalformedListInput(
          [void Function(MalformedListInputBuilder)? updates]) =>
      (new MalformedListInputBuilder()..update(updates))._build();

  _$MalformedListInput._({this.bodyList}) : super._();

  @override
  MalformedListInput rebuild(
          void Function(MalformedListInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedListInputBuilder toBuilder() =>
      new MalformedListInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedListInput && bodyList == other.bodyList;
  }

  @override
  int get hashCode {
    return $jf($jc(0, bodyList.hashCode));
  }
}

class MalformedListInputBuilder
    implements Builder<MalformedListInput, MalformedListInputBuilder> {
  _$MalformedListInput? _$v;

  _i3.ListBuilder<String>? _bodyList;
  _i3.ListBuilder<String> get bodyList =>
      _$this._bodyList ??= new _i3.ListBuilder<String>();
  set bodyList(_i3.ListBuilder<String>? bodyList) =>
      _$this._bodyList = bodyList;

  MalformedListInputBuilder() {
    MalformedListInput._init(this);
  }

  MalformedListInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bodyList = $v.bodyList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedListInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedListInput;
  }

  @override
  void update(void Function(MalformedListInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedListInput build() => _build();

  _$MalformedListInput _build() {
    _$MalformedListInput _$result;
    try {
      _$result =
          _$v ?? new _$MalformedListInput._(bodyList: _bodyList?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'bodyList';
        _bodyList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MalformedListInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
