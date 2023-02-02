// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.rest_json_protocol.model.post_player_action_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostPlayerActionOutput extends PostPlayerActionOutput {
  @override
  final _i2.PlayerAction action;

  factory _$PostPlayerActionOutput(
          [void Function(PostPlayerActionOutputBuilder)? updates]) =>
      (new PostPlayerActionOutputBuilder()..update(updates))._build();

  _$PostPlayerActionOutput._({required this.action}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        action, r'PostPlayerActionOutput', 'action');
  }

  @override
  PostPlayerActionOutput rebuild(
          void Function(PostPlayerActionOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostPlayerActionOutputBuilder toBuilder() =>
      new PostPlayerActionOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostPlayerActionOutput && action == other.action;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PostPlayerActionOutputBuilder
    implements Builder<PostPlayerActionOutput, PostPlayerActionOutputBuilder> {
  _$PostPlayerActionOutput? _$v;

  _i2.PlayerAction? _action;
  _i2.PlayerAction? get action => _$this._action;
  set action(_i2.PlayerAction? action) => _$this._action = action;

  PostPlayerActionOutputBuilder() {
    PostPlayerActionOutput._init(this);
  }

  PostPlayerActionOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _action = $v.action;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostPlayerActionOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PostPlayerActionOutput;
  }

  @override
  void update(void Function(PostPlayerActionOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostPlayerActionOutput build() => _build();

  _$PostPlayerActionOutput _build() {
    final _$result = _$v ??
        new _$PostPlayerActionOutput._(
            action: BuiltValueNullFieldError.checkNotNull(
                action, r'PostPlayerActionOutput', 'action'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
