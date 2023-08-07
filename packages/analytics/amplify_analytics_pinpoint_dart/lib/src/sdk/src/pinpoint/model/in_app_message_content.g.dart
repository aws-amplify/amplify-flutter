// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'in_app_message_content.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InAppMessageContent extends InAppMessageContent {
  @override
  final String? backgroundColor;
  @override
  final InAppMessageBodyConfig? bodyConfig;
  @override
  final InAppMessageHeaderConfig? headerConfig;
  @override
  final String? imageUrl;
  @override
  final InAppMessageButton? primaryBtn;
  @override
  final InAppMessageButton? secondaryBtn;

  factory _$InAppMessageContent(
          [void Function(InAppMessageContentBuilder)? updates]) =>
      (new InAppMessageContentBuilder()..update(updates))._build();

  _$InAppMessageContent._(
      {this.backgroundColor,
      this.bodyConfig,
      this.headerConfig,
      this.imageUrl,
      this.primaryBtn,
      this.secondaryBtn})
      : super._();

  @override
  InAppMessageContent rebuild(
          void Function(InAppMessageContentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InAppMessageContentBuilder toBuilder() =>
      new InAppMessageContentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InAppMessageContent &&
        backgroundColor == other.backgroundColor &&
        bodyConfig == other.bodyConfig &&
        headerConfig == other.headerConfig &&
        imageUrl == other.imageUrl &&
        primaryBtn == other.primaryBtn &&
        secondaryBtn == other.secondaryBtn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, backgroundColor.hashCode);
    _$hash = $jc(_$hash, bodyConfig.hashCode);
    _$hash = $jc(_$hash, headerConfig.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jc(_$hash, primaryBtn.hashCode);
    _$hash = $jc(_$hash, secondaryBtn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InAppMessageContentBuilder
    implements Builder<InAppMessageContent, InAppMessageContentBuilder> {
  _$InAppMessageContent? _$v;

  String? _backgroundColor;
  String? get backgroundColor => _$this._backgroundColor;
  set backgroundColor(String? backgroundColor) =>
      _$this._backgroundColor = backgroundColor;

  InAppMessageBodyConfigBuilder? _bodyConfig;
  InAppMessageBodyConfigBuilder get bodyConfig =>
      _$this._bodyConfig ??= new InAppMessageBodyConfigBuilder();
  set bodyConfig(InAppMessageBodyConfigBuilder? bodyConfig) =>
      _$this._bodyConfig = bodyConfig;

  InAppMessageHeaderConfigBuilder? _headerConfig;
  InAppMessageHeaderConfigBuilder get headerConfig =>
      _$this._headerConfig ??= new InAppMessageHeaderConfigBuilder();
  set headerConfig(InAppMessageHeaderConfigBuilder? headerConfig) =>
      _$this._headerConfig = headerConfig;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  InAppMessageButtonBuilder? _primaryBtn;
  InAppMessageButtonBuilder get primaryBtn =>
      _$this._primaryBtn ??= new InAppMessageButtonBuilder();
  set primaryBtn(InAppMessageButtonBuilder? primaryBtn) =>
      _$this._primaryBtn = primaryBtn;

  InAppMessageButtonBuilder? _secondaryBtn;
  InAppMessageButtonBuilder get secondaryBtn =>
      _$this._secondaryBtn ??= new InAppMessageButtonBuilder();
  set secondaryBtn(InAppMessageButtonBuilder? secondaryBtn) =>
      _$this._secondaryBtn = secondaryBtn;

  InAppMessageContentBuilder();

  InAppMessageContentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _backgroundColor = $v.backgroundColor;
      _bodyConfig = $v.bodyConfig?.toBuilder();
      _headerConfig = $v.headerConfig?.toBuilder();
      _imageUrl = $v.imageUrl;
      _primaryBtn = $v.primaryBtn?.toBuilder();
      _secondaryBtn = $v.secondaryBtn?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InAppMessageContent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InAppMessageContent;
  }

  @override
  void update(void Function(InAppMessageContentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InAppMessageContent build() => _build();

  _$InAppMessageContent _build() {
    _$InAppMessageContent _$result;
    try {
      _$result = _$v ??
          new _$InAppMessageContent._(
              backgroundColor: backgroundColor,
              bodyConfig: _bodyConfig?.build(),
              headerConfig: _headerConfig?.build(),
              imageUrl: imageUrl,
              primaryBtn: _primaryBtn?.build(),
              secondaryBtn: _secondaryBtn?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'bodyConfig';
        _bodyConfig?.build();
        _$failedField = 'headerConfig';
        _headerConfig?.build();

        _$failedField = 'primaryBtn';
        _primaryBtn?.build();
        _$failedField = 'secondaryBtn';
        _secondaryBtn?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InAppMessageContent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
