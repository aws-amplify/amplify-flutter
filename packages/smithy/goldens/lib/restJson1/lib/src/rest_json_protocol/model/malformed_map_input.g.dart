// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.rest_json_protocol.model.malformed_map_input;

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
    var _$hash = 0;
    _$hash = $jc(_$hash, bodyMap.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
