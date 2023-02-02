// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v2.rest_json_protocol.model.post_player_action_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostPlayerActionInput extends PostPlayerActionInput {
  @override
  final _i3.PlayerAction? action;

  factory _$PostPlayerActionInput(
          [void Function(PostPlayerActionInputBuilder)? updates]) =>
      (new PostPlayerActionInputBuilder()..update(updates))._build();

  _$PostPlayerActionInput._({this.action}) : super._();

  @override
  PostPlayerActionInput rebuild(
          void Function(PostPlayerActionInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostPlayerActionInputBuilder toBuilder() =>
      new PostPlayerActionInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostPlayerActionInput && action == other.action;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PostPlayerActionInputBuilder
    implements Builder<PostPlayerActionInput, PostPlayerActionInputBuilder> {
  _$PostPlayerActionInput? _$v;

  _i3.PlayerAction? _action;
  _i3.PlayerAction? get action => _$this._action;
  set action(_i3.PlayerAction? action) => _$this._action = action;

  PostPlayerActionInputBuilder() {
    PostPlayerActionInput._init(this);
  }

  PostPlayerActionInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _action = $v.action;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostPlayerActionInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PostPlayerActionInput;
  }

  @override
  void update(void Function(PostPlayerActionInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostPlayerActionInput build() => _build();

  _$PostPlayerActionInput _build() {
    final _$result = _$v ?? new _$PostPlayerActionInput._(action: action);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
