// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1.rest_json_protocol.model.malformed_map_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedMapInput extends MalformedMapInput {
  @override
  final _i3.BuiltMap<String, String>? bodyMap;

  factory _$MalformedMapInput(
          [void Function(MalformedMapInputBuilder)? updates]) =>
      (new MalformedMapInputBuilder()..update(updates))._build();

  _$MalformedMapInput._({this.bodyMap}) : super._();

  @override
  MalformedMapInput rebuild(void Function(MalformedMapInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedMapInputBuilder toBuilder() =>
      new MalformedMapInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedMapInput && bodyMap == other.bodyMap;
  }

  @override
  int get hashCode {
    return $jf($jc(0, bodyMap.hashCode));
  }
}

class MalformedMapInputBuilder
    implements Builder<MalformedMapInput, MalformedMapInputBuilder> {
  _$MalformedMapInput? _$v;

  _i3.MapBuilder<String, String>? _bodyMap;
  _i3.MapBuilder<String, String> get bodyMap =>
      _$this._bodyMap ??= new _i3.MapBuilder<String, String>();
  set bodyMap(_i3.MapBuilder<String, String>? bodyMap) =>
      _$this._bodyMap = bodyMap;

  MalformedMapInputBuilder() {
    MalformedMapInput._init(this);
  }

  MalformedMapInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bodyMap = $v.bodyMap?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedMapInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedMapInput;
  }

  @override
  void update(void Function(MalformedMapInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedMapInput build() => _build();

  _$MalformedMapInput _build() {
    _$MalformedMapInput _$result;
    try {
      _$result = _$v ?? new _$MalformedMapInput._(bodyMap: _bodyMap?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'bodyMap';
        _bodyMap?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MalformedMapInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
