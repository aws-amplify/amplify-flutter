// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'in_app_message.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InAppMessage extends InAppMessage {
  @override
  final _i2.BuiltList<InAppMessageContent>? content;
  @override
  final _i2.BuiltMap<String, String>? customConfig;
  @override
  final Layout? layout;

  factory _$InAppMessage([void Function(InAppMessageBuilder)? updates]) =>
      (new InAppMessageBuilder()..update(updates))._build();

  _$InAppMessage._({this.content, this.customConfig, this.layout}) : super._();

  @override
  InAppMessage rebuild(void Function(InAppMessageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InAppMessageBuilder toBuilder() => new InAppMessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InAppMessage &&
        content == other.content &&
        customConfig == other.customConfig &&
        layout == other.layout;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, customConfig.hashCode);
    _$hash = $jc(_$hash, layout.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InAppMessageBuilder
    implements Builder<InAppMessage, InAppMessageBuilder> {
  _$InAppMessage? _$v;

  _i2.ListBuilder<InAppMessageContent>? _content;
  _i2.ListBuilder<InAppMessageContent> get content =>
      _$this._content ??= new _i2.ListBuilder<InAppMessageContent>();
  set content(_i2.ListBuilder<InAppMessageContent>? content) =>
      _$this._content = content;

  _i2.MapBuilder<String, String>? _customConfig;
  _i2.MapBuilder<String, String> get customConfig =>
      _$this._customConfig ??= new _i2.MapBuilder<String, String>();
  set customConfig(_i2.MapBuilder<String, String>? customConfig) =>
      _$this._customConfig = customConfig;

  Layout? _layout;
  Layout? get layout => _$this._layout;
  set layout(Layout? layout) => _$this._layout = layout;

  InAppMessageBuilder();

  InAppMessageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _content = $v.content?.toBuilder();
      _customConfig = $v.customConfig?.toBuilder();
      _layout = $v.layout;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InAppMessage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InAppMessage;
  }

  @override
  void update(void Function(InAppMessageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InAppMessage build() => _build();

  _$InAppMessage _build() {
    _$InAppMessage _$result;
    try {
      _$result = _$v ??
          new _$InAppMessage._(
              content: _content?.build(),
              customConfig: _customConfig?.build(),
              layout: layout);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'content';
        _content?.build();
        _$failedField = 'customConfig';
        _customConfig?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InAppMessage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
