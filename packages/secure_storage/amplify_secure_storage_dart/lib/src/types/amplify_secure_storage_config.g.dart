// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amplify_secure_storage_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AmplifySecureStorageConfig> _$amplifySecureStorageConfigSerializer =
    new _$AmplifySecureStorageConfigSerializer();

class _$AmplifySecureStorageConfigSerializer
    implements StructuredSerializer<AmplifySecureStorageConfig> {
  @override
  final Iterable<Type> types = const [
    AmplifySecureStorageConfig,
    _$AmplifySecureStorageConfig
  ];
  @override
  final String wireName = 'AmplifySecureStorageConfig';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, AmplifySecureStorageConfig object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'webOptions',
      serializers.serialize(object.webOptions,
          specifiedType: const FullType(WebSecureStorageOptions)),
      'windowsOptions',
      serializers.serialize(object.windowsOptions,
          specifiedType: const FullType(WindowsSecureStorageOptions)),
      'linuxOptions',
      serializers.serialize(object.linuxOptions,
          specifiedType: const FullType(LinuxSecureStorageOptions)),
      'macOSOptions',
      serializers.serialize(object.macOSOptions,
          specifiedType: const FullType(MacOSSecureStorageOptions)),
      'iOSOptions',
      serializers.serialize(object.iOSOptions,
          specifiedType: const FullType(IOSSecureStorageOptions)),
    ];
    Object? value;
    value = object.namespace;
    if (value != null) {
      result
        ..add('namespace')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.scope;
    if (value != null) {
      result
        ..add('scope')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AmplifySecureStorageConfig deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AmplifySecureStorageConfigBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'namespace':
          result.namespace = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'scope':
          result.scope = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'webOptions':
          result.webOptions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(WebSecureStorageOptions))!
              as WebSecureStorageOptions);
          break;
        case 'windowsOptions':
          result.windowsOptions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(WindowsSecureStorageOptions))!
              as WindowsSecureStorageOptions);
          break;
        case 'linuxOptions':
          result.linuxOptions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(LinuxSecureStorageOptions))!
              as LinuxSecureStorageOptions);
          break;
        case 'macOSOptions':
          result.macOSOptions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(MacOSSecureStorageOptions))!
              as MacOSSecureStorageOptions);
          break;
        case 'iOSOptions':
          result.iOSOptions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(IOSSecureStorageOptions))!
              as IOSSecureStorageOptions);
          break;
      }
    }

    return result.build();
  }
}

class _$AmplifySecureStorageConfig extends AmplifySecureStorageConfig {
  @override
  final String? namespace;
  @override
  final String? scope;
  @override
  final WebSecureStorageOptions webOptions;
  @override
  final WindowsSecureStorageOptions windowsOptions;
  @override
  final LinuxSecureStorageOptions linuxOptions;
  @override
  final MacOSSecureStorageOptions macOSOptions;
  @override
  final IOSSecureStorageOptions iOSOptions;

  factory _$AmplifySecureStorageConfig(
          [void Function(AmplifySecureStorageConfigBuilder)? updates]) =>
      (new AmplifySecureStorageConfigBuilder()..update(updates))._build();

  _$AmplifySecureStorageConfig._(
      {this.namespace,
      this.scope,
      required this.webOptions,
      required this.windowsOptions,
      required this.linuxOptions,
      required this.macOSOptions,
      required this.iOSOptions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        webOptions, r'AmplifySecureStorageConfig', 'webOptions');
    BuiltValueNullFieldError.checkNotNull(
        windowsOptions, r'AmplifySecureStorageConfig', 'windowsOptions');
    BuiltValueNullFieldError.checkNotNull(
        linuxOptions, r'AmplifySecureStorageConfig', 'linuxOptions');
    BuiltValueNullFieldError.checkNotNull(
        macOSOptions, r'AmplifySecureStorageConfig', 'macOSOptions');
    BuiltValueNullFieldError.checkNotNull(
        iOSOptions, r'AmplifySecureStorageConfig', 'iOSOptions');
  }

  @override
  AmplifySecureStorageConfig rebuild(
          void Function(AmplifySecureStorageConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AmplifySecureStorageConfigBuilder toBuilder() =>
      new AmplifySecureStorageConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AmplifySecureStorageConfig &&
        namespace == other.namespace &&
        scope == other.scope &&
        webOptions == other.webOptions &&
        windowsOptions == other.windowsOptions &&
        linuxOptions == other.linuxOptions &&
        macOSOptions == other.macOSOptions &&
        iOSOptions == other.iOSOptions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, namespace.hashCode);
    _$hash = $jc(_$hash, scope.hashCode);
    _$hash = $jc(_$hash, webOptions.hashCode);
    _$hash = $jc(_$hash, windowsOptions.hashCode);
    _$hash = $jc(_$hash, linuxOptions.hashCode);
    _$hash = $jc(_$hash, macOSOptions.hashCode);
    _$hash = $jc(_$hash, iOSOptions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AmplifySecureStorageConfig')
          ..add('namespace', namespace)
          ..add('scope', scope)
          ..add('webOptions', webOptions)
          ..add('windowsOptions', windowsOptions)
          ..add('linuxOptions', linuxOptions)
          ..add('macOSOptions', macOSOptions)
          ..add('iOSOptions', iOSOptions))
        .toString();
  }
}

class AmplifySecureStorageConfigBuilder
    implements
        Builder<AmplifySecureStorageConfig, AmplifySecureStorageConfigBuilder> {
  _$AmplifySecureStorageConfig? _$v;

  String? _namespace;
  String? get namespace => _$this._namespace;
  set namespace(String? namespace) => _$this._namespace = namespace;

  String? _scope;
  String? get scope => _$this._scope;
  set scope(String? scope) => _$this._scope = scope;

  WebSecureStorageOptionsBuilder? _webOptions;
  WebSecureStorageOptionsBuilder get webOptions =>
      _$this._webOptions ??= new WebSecureStorageOptionsBuilder();
  set webOptions(WebSecureStorageOptionsBuilder? webOptions) =>
      _$this._webOptions = webOptions;

  WindowsSecureStorageOptionsBuilder? _windowsOptions;
  WindowsSecureStorageOptionsBuilder get windowsOptions =>
      _$this._windowsOptions ??= new WindowsSecureStorageOptionsBuilder();
  set windowsOptions(WindowsSecureStorageOptionsBuilder? windowsOptions) =>
      _$this._windowsOptions = windowsOptions;

  LinuxSecureStorageOptionsBuilder? _linuxOptions;
  LinuxSecureStorageOptionsBuilder get linuxOptions =>
      _$this._linuxOptions ??= new LinuxSecureStorageOptionsBuilder();
  set linuxOptions(LinuxSecureStorageOptionsBuilder? linuxOptions) =>
      _$this._linuxOptions = linuxOptions;

  MacOSSecureStorageOptionsBuilder? _macOSOptions;
  MacOSSecureStorageOptionsBuilder get macOSOptions =>
      _$this._macOSOptions ??= new MacOSSecureStorageOptionsBuilder();
  set macOSOptions(MacOSSecureStorageOptionsBuilder? macOSOptions) =>
      _$this._macOSOptions = macOSOptions;

  IOSSecureStorageOptionsBuilder? _iOSOptions;
  IOSSecureStorageOptionsBuilder get iOSOptions =>
      _$this._iOSOptions ??= new IOSSecureStorageOptionsBuilder();
  set iOSOptions(IOSSecureStorageOptionsBuilder? iOSOptions) =>
      _$this._iOSOptions = iOSOptions;

  AmplifySecureStorageConfigBuilder();

  AmplifySecureStorageConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _namespace = $v.namespace;
      _scope = $v.scope;
      _webOptions = $v.webOptions.toBuilder();
      _windowsOptions = $v.windowsOptions.toBuilder();
      _linuxOptions = $v.linuxOptions.toBuilder();
      _macOSOptions = $v.macOSOptions.toBuilder();
      _iOSOptions = $v.iOSOptions.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AmplifySecureStorageConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AmplifySecureStorageConfig;
  }

  @override
  void update(void Function(AmplifySecureStorageConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AmplifySecureStorageConfig build() => _build();

  _$AmplifySecureStorageConfig _build() {
    _$AmplifySecureStorageConfig _$result;
    try {
      _$result = _$v ??
          new _$AmplifySecureStorageConfig._(
              namespace: namespace,
              scope: scope,
              webOptions: webOptions.build(),
              windowsOptions: windowsOptions.build(),
              linuxOptions: linuxOptions.build(),
              macOSOptions: macOSOptions.build(),
              iOSOptions: iOSOptions.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'webOptions';
        webOptions.build();
        _$failedField = 'windowsOptions';
        windowsOptions.build();
        _$failedField = 'linuxOptions';
        linuxOptions.build();
        _$failedField = 'macOSOptions';
        macOSOptions.build();
        _$failedField = 'iOSOptions';
        iOSOptions.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AmplifySecureStorageConfig', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
