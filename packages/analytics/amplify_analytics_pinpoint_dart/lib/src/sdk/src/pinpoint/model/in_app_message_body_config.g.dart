// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.in_app_message_body_config;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InAppMessageBodyConfig extends InAppMessageBodyConfig {
  @override
  final _i2.Alignment alignment;
  @override
  final String body;
  @override
  final String textColor;

  factory _$InAppMessageBodyConfig(
          [void Function(InAppMessageBodyConfigBuilder)? updates]) =>
      (new InAppMessageBodyConfigBuilder()..update(updates))._build();

  _$InAppMessageBodyConfig._(
      {required this.alignment, required this.body, required this.textColor})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        alignment, r'InAppMessageBodyConfig', 'alignment');
    BuiltValueNullFieldError.checkNotNull(
        body, r'InAppMessageBodyConfig', 'body');
    BuiltValueNullFieldError.checkNotNull(
        textColor, r'InAppMessageBodyConfig', 'textColor');
  }

  @override
  InAppMessageBodyConfig rebuild(
          void Function(InAppMessageBodyConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InAppMessageBodyConfigBuilder toBuilder() =>
      new InAppMessageBodyConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InAppMessageBodyConfig &&
        alignment == other.alignment &&
        body == other.body &&
        textColor == other.textColor;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, alignment.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, textColor.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InAppMessageBodyConfigBuilder
    implements Builder<InAppMessageBodyConfig, InAppMessageBodyConfigBuilder> {
  _$InAppMessageBodyConfig? _$v;

  _i2.Alignment? _alignment;
  _i2.Alignment? get alignment => _$this._alignment;
  set alignment(_i2.Alignment? alignment) => _$this._alignment = alignment;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  String? _textColor;
  String? get textColor => _$this._textColor;
  set textColor(String? textColor) => _$this._textColor = textColor;

  InAppMessageBodyConfigBuilder() {
    InAppMessageBodyConfig._init(this);
  }

  InAppMessageBodyConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _alignment = $v.alignment;
      _body = $v.body;
      _textColor = $v.textColor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InAppMessageBodyConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InAppMessageBodyConfig;
  }

  @override
  void update(void Function(InAppMessageBodyConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InAppMessageBodyConfig build() => _build();

  _$InAppMessageBodyConfig _build() {
    final _$result = _$v ??
        new _$InAppMessageBodyConfig._(
            alignment: BuiltValueNullFieldError.checkNotNull(
                alignment, r'InAppMessageBodyConfig', 'alignment'),
            body: BuiltValueNullFieldError.checkNotNull(
                body, r'InAppMessageBodyConfig', 'body'),
            textColor: BuiltValueNullFieldError.checkNotNull(
                textColor, r'InAppMessageBodyConfig', 'textColor'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
