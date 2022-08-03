// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'e2e_message.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(CustomType.serializer)
      ..add(E2EMessage.serializer)
      ..add(E2EResult.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltListMultimap,
              const [const FullType(String), const FullType(String)]),
          () => new ListMultimapBuilder<String, String>())
      ..addBuilderFactory(
          const FullType(
              BuiltMap, const [const FullType(String), const FullType(String)]),
          () => new MapBuilder<String, String>())
      ..addBuilderFactory(
          const FullType(BuiltSet, const [const FullType(String)]),
          () => new SetBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltSetMultimap,
              const [const FullType(String), const FullType(String)]),
          () => new SetMultimapBuilder<String, String>()))
    .build();
Serializer<CustomType> _$customTypeSerializer = new _$CustomTypeSerializer();
Serializer<E2EMessage> _$e2EMessageSerializer = new _$E2EMessageSerializer();
Serializer<E2EResult> _$e2EResultSerializer = new _$E2EResultSerializer();

class _$CustomTypeSerializer implements StructuredSerializer<CustomType> {
  @override
  final Iterable<Type> types = const [CustomType, _$CustomType];
  @override
  final String wireName = 'CustomType';

  @override
  Iterable<Object?> serialize(Serializers serializers, CustomType object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'customField',
      serializers.serialize(object.customField,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  CustomType deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CustomTypeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'customField':
          result.customField = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$E2EMessageSerializer implements StructuredSerializer<E2EMessage> {
  @override
  final Iterable<Type> types = const [E2EMessage, _$E2EMessage];
  @override
  final String wireName = 'E2EMessage';

  @override
  Iterable<Object?> serialize(Serializers serializers, E2EMessage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'bigInt',
      serializers.serialize(object.bigInt,
          specifiedType: const FullType(BigInt)),
      'bool_',
      serializers.serialize(object.bool_, specifiedType: const FullType(bool)),
      'builtList',
      serializers.serialize(object.builtList,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'builtListMultimap',
      serializers.serialize(object.builtListMultimap,
          specifiedType: const FullType(BuiltListMultimap,
              const [const FullType(String), const FullType(String)])),
      'builtMap',
      serializers.serialize(object.builtMap,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(String)])),
      'builtSet',
      serializers.serialize(object.builtSet,
          specifiedType:
              const FullType(BuiltSet, const [const FullType(String)])),
      'builtSetMultimap',
      serializers.serialize(object.builtSetMultimap,
          specifiedType: const FullType(BuiltSetMultimap,
              const [const FullType(String), const FullType(String)])),
      'dateTime',
      serializers.serialize(object.dateTime,
          specifiedType: const FullType(DateTime)),
      'double_',
      serializers.serialize(object.double_,
          specifiedType: const FullType(double)),
      'duration',
      serializers.serialize(object.duration,
          specifiedType: const FullType(Duration)),
      'int_',
      serializers.serialize(object.int_, specifiedType: const FullType(int)),
      'int64',
      serializers.serialize(object.int64, specifiedType: const FullType(Int64)),
      'jsonObject',
      serializers.serialize(object.jsonObject,
          specifiedType: const FullType(JsonObject)),
      'num_',
      serializers.serialize(object.num_, specifiedType: const FullType(num)),
      'regExp',
      serializers.serialize(object.regExp,
          specifiedType: const FullType(RegExp)),
      'string',
      serializers.serialize(object.string,
          specifiedType: const FullType(String)),
      'uri',
      serializers.serialize(object.uri, specifiedType: const FullType(Uri)),
    ];

    return result;
  }

  @override
  E2EMessage deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new E2EMessageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'bigInt':
          result.bigInt = serializers.deserialize(value,
              specifiedType: const FullType(BigInt))! as BigInt;
          break;
        case 'bool_':
          result.bool_ = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'builtList':
          result.builtList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'builtListMultimap':
          result.builtListMultimap.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltListMultimap,
                  const [const FullType(String), const FullType(String)]))!);
          break;
        case 'builtMap':
          result.builtMap.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(String)]))!);
          break;
        case 'builtSet':
          result.builtSet.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltSet, const [const FullType(String)]))!
              as BuiltSet<Object?>);
          break;
        case 'builtSetMultimap':
          result.builtSetMultimap.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltSetMultimap,
                  const [const FullType(String), const FullType(String)]))!);
          break;
        case 'dateTime':
          result.dateTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime))! as DateTime;
          break;
        case 'double_':
          result.double_ = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(Duration))! as Duration;
          break;
        case 'int_':
          result.int_ = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'int64':
          result.int64 = serializers.deserialize(value,
              specifiedType: const FullType(Int64))! as Int64;
          break;
        case 'jsonObject':
          result.jsonObject = serializers.deserialize(value,
              specifiedType: const FullType(JsonObject))! as JsonObject;
          break;
        case 'num_':
          result.num_ = serializers.deserialize(value,
              specifiedType: const FullType(num))! as num;
          break;
        case 'regExp':
          result.regExp = serializers.deserialize(value,
              specifiedType: const FullType(RegExp))! as RegExp;
          break;
        case 'string':
          result.string = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'uri':
          result.uri = serializers.deserialize(value,
              specifiedType: const FullType(Uri))! as Uri;
          break;
      }
    }

    return result.build();
  }
}

class _$E2EResultSerializer implements StructuredSerializer<E2EResult> {
  @override
  final Iterable<Type> types = const [E2EResult, _$E2EResult];
  @override
  final String wireName = 'E2EResult';

  @override
  Iterable<Object?> serialize(Serializers serializers, E2EResult object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(E2EMessage)),
    ];

    return result;
  }

  @override
  E2EResult deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new E2EResultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'message':
          result.message.replace(serializers.deserialize(value,
              specifiedType: const FullType(E2EMessage))! as E2EMessage);
          break;
      }
    }

    return result.build();
  }
}

class _$CustomType extends CustomType {
  @override
  final String customField;

  factory _$CustomType([void Function(CustomTypeBuilder)? updates]) =>
      (new CustomTypeBuilder()..update(updates))._build();

  _$CustomType._({required this.customField}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        customField, r'CustomType', 'customField');
  }

  @override
  CustomType rebuild(void Function(CustomTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomTypeBuilder toBuilder() => new CustomTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomType && customField == other.customField;
  }

  @override
  int get hashCode {
    return $jf($jc(0, customField.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomType')
          ..add('customField', customField))
        .toString();
  }
}

class CustomTypeBuilder implements Builder<CustomType, CustomTypeBuilder> {
  _$CustomType? _$v;

  String? _customField;
  String? get customField => _$this._customField;
  set customField(String? customField) => _$this._customField = customField;

  CustomTypeBuilder();

  CustomTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customField = $v.customField;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomType other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CustomType;
  }

  @override
  void update(void Function(CustomTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomType build() => _build();

  _$CustomType _build() {
    final _$result = _$v ??
        new _$CustomType._(
            customField: BuiltValueNullFieldError.checkNotNull(
                customField, r'CustomType', 'customField'));
    replace(_$result);
    return _$result;
  }
}

class _$E2EMessage extends E2EMessage {
  @override
  final BigInt bigInt;
  @override
  final bool bool_;
  @override
  final BuiltList<String> builtList;
  @override
  final BuiltListMultimap<String, String> builtListMultimap;
  @override
  final BuiltMap<String, String> builtMap;
  @override
  final BuiltSet<String> builtSet;
  @override
  final BuiltSetMultimap<String, String> builtSetMultimap;
  @override
  final DateTime dateTime;
  @override
  final double double_;
  @override
  final Duration duration;
  @override
  final int int_;
  @override
  final Int64 int64;
  @override
  final JsonObject jsonObject;
  @override
  final num num_;
  @override
  final RegExp regExp;
  @override
  final String string;
  @override
  final Uri uri;

  factory _$E2EMessage([void Function(E2EMessageBuilder)? updates]) =>
      (new E2EMessageBuilder()..update(updates))._build();

  _$E2EMessage._(
      {required this.bigInt,
      required this.bool_,
      required this.builtList,
      required this.builtListMultimap,
      required this.builtMap,
      required this.builtSet,
      required this.builtSetMultimap,
      required this.dateTime,
      required this.double_,
      required this.duration,
      required this.int_,
      required this.int64,
      required this.jsonObject,
      required this.num_,
      required this.regExp,
      required this.string,
      required this.uri})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(bigInt, r'E2EMessage', 'bigInt');
    BuiltValueNullFieldError.checkNotNull(bool_, r'E2EMessage', 'bool_');
    BuiltValueNullFieldError.checkNotNull(
        builtList, r'E2EMessage', 'builtList');
    BuiltValueNullFieldError.checkNotNull(
        builtListMultimap, r'E2EMessage', 'builtListMultimap');
    BuiltValueNullFieldError.checkNotNull(builtMap, r'E2EMessage', 'builtMap');
    BuiltValueNullFieldError.checkNotNull(builtSet, r'E2EMessage', 'builtSet');
    BuiltValueNullFieldError.checkNotNull(
        builtSetMultimap, r'E2EMessage', 'builtSetMultimap');
    BuiltValueNullFieldError.checkNotNull(dateTime, r'E2EMessage', 'dateTime');
    BuiltValueNullFieldError.checkNotNull(double_, r'E2EMessage', 'double_');
    BuiltValueNullFieldError.checkNotNull(duration, r'E2EMessage', 'duration');
    BuiltValueNullFieldError.checkNotNull(int_, r'E2EMessage', 'int_');
    BuiltValueNullFieldError.checkNotNull(int64, r'E2EMessage', 'int64');
    BuiltValueNullFieldError.checkNotNull(
        jsonObject, r'E2EMessage', 'jsonObject');
    BuiltValueNullFieldError.checkNotNull(num_, r'E2EMessage', 'num_');
    BuiltValueNullFieldError.checkNotNull(regExp, r'E2EMessage', 'regExp');
    BuiltValueNullFieldError.checkNotNull(string, r'E2EMessage', 'string');
    BuiltValueNullFieldError.checkNotNull(uri, r'E2EMessage', 'uri');
  }

  @override
  E2EMessage rebuild(void Function(E2EMessageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  E2EMessageBuilder toBuilder() => new E2EMessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is E2EMessage &&
        bigInt == other.bigInt &&
        bool_ == other.bool_ &&
        builtList == other.builtList &&
        builtListMultimap == other.builtListMultimap &&
        builtMap == other.builtMap &&
        builtSet == other.builtSet &&
        builtSetMultimap == other.builtSetMultimap &&
        dateTime == other.dateTime &&
        double_ == other.double_ &&
        duration == other.duration &&
        int_ == other.int_ &&
        int64 == other.int64 &&
        jsonObject == other.jsonObject &&
        num_ == other.num_ &&
        regExp == other.regExp &&
        string == other.string &&
        uri == other.uri;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        0,
                                                                        bigInt
                                                                            .hashCode),
                                                                    bool_
                                                                        .hashCode),
                                                                builtList
                                                                    .hashCode),
                                                            builtListMultimap
                                                                .hashCode),
                                                        builtMap.hashCode),
                                                    builtSet.hashCode),
                                                builtSetMultimap.hashCode),
                                            dateTime.hashCode),
                                        double_.hashCode),
                                    duration.hashCode),
                                int_.hashCode),
                            int64.hashCode),
                        jsonObject.hashCode),
                    num_.hashCode),
                regExp.hashCode),
            string.hashCode),
        uri.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'E2EMessage')
          ..add('bigInt', bigInt)
          ..add('bool_', bool_)
          ..add('builtList', builtList)
          ..add('builtListMultimap', builtListMultimap)
          ..add('builtMap', builtMap)
          ..add('builtSet', builtSet)
          ..add('builtSetMultimap', builtSetMultimap)
          ..add('dateTime', dateTime)
          ..add('double_', double_)
          ..add('duration', duration)
          ..add('int_', int_)
          ..add('int64', int64)
          ..add('jsonObject', jsonObject)
          ..add('num_', num_)
          ..add('regExp', regExp)
          ..add('string', string)
          ..add('uri', uri))
        .toString();
  }
}

class E2EMessageBuilder implements Builder<E2EMessage, E2EMessageBuilder> {
  _$E2EMessage? _$v;

  BigInt? _bigInt;
  BigInt? get bigInt => _$this._bigInt;
  set bigInt(BigInt? bigInt) => _$this._bigInt = bigInt;

  bool? _bool_;
  bool? get bool_ => _$this._bool_;
  set bool_(bool? bool_) => _$this._bool_ = bool_;

  ListBuilder<String>? _builtList;
  ListBuilder<String> get builtList =>
      _$this._builtList ??= new ListBuilder<String>();
  set builtList(ListBuilder<String>? builtList) =>
      _$this._builtList = builtList;

  ListMultimapBuilder<String, String>? _builtListMultimap;
  ListMultimapBuilder<String, String> get builtListMultimap =>
      _$this._builtListMultimap ??= new ListMultimapBuilder<String, String>();
  set builtListMultimap(
          ListMultimapBuilder<String, String>? builtListMultimap) =>
      _$this._builtListMultimap = builtListMultimap;

  MapBuilder<String, String>? _builtMap;
  MapBuilder<String, String> get builtMap =>
      _$this._builtMap ??= new MapBuilder<String, String>();
  set builtMap(MapBuilder<String, String>? builtMap) =>
      _$this._builtMap = builtMap;

  SetBuilder<String>? _builtSet;
  SetBuilder<String> get builtSet =>
      _$this._builtSet ??= new SetBuilder<String>();
  set builtSet(SetBuilder<String>? builtSet) => _$this._builtSet = builtSet;

  SetMultimapBuilder<String, String>? _builtSetMultimap;
  SetMultimapBuilder<String, String> get builtSetMultimap =>
      _$this._builtSetMultimap ??= new SetMultimapBuilder<String, String>();
  set builtSetMultimap(SetMultimapBuilder<String, String>? builtSetMultimap) =>
      _$this._builtSetMultimap = builtSetMultimap;

  DateTime? _dateTime;
  DateTime? get dateTime => _$this._dateTime;
  set dateTime(DateTime? dateTime) => _$this._dateTime = dateTime;

  double? _double_;
  double? get double_ => _$this._double_;
  set double_(double? double_) => _$this._double_ = double_;

  Duration? _duration;
  Duration? get duration => _$this._duration;
  set duration(Duration? duration) => _$this._duration = duration;

  int? _int_;
  int? get int_ => _$this._int_;
  set int_(int? int_) => _$this._int_ = int_;

  Int64? _int64;
  Int64? get int64 => _$this._int64;
  set int64(Int64? int64) => _$this._int64 = int64;

  JsonObject? _jsonObject;
  JsonObject? get jsonObject => _$this._jsonObject;
  set jsonObject(JsonObject? jsonObject) => _$this._jsonObject = jsonObject;

  num? _num_;
  num? get num_ => _$this._num_;
  set num_(num? num_) => _$this._num_ = num_;

  RegExp? _regExp;
  RegExp? get regExp => _$this._regExp;
  set regExp(RegExp? regExp) => _$this._regExp = regExp;

  String? _string;
  String? get string => _$this._string;
  set string(String? string) => _$this._string = string;

  Uri? _uri;
  Uri? get uri => _$this._uri;
  set uri(Uri? uri) => _$this._uri = uri;

  E2EMessageBuilder();

  E2EMessageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bigInt = $v.bigInt;
      _bool_ = $v.bool_;
      _builtList = $v.builtList.toBuilder();
      _builtListMultimap = $v.builtListMultimap.toBuilder();
      _builtMap = $v.builtMap.toBuilder();
      _builtSet = $v.builtSet.toBuilder();
      _builtSetMultimap = $v.builtSetMultimap.toBuilder();
      _dateTime = $v.dateTime;
      _double_ = $v.double_;
      _duration = $v.duration;
      _int_ = $v.int_;
      _int64 = $v.int64;
      _jsonObject = $v.jsonObject;
      _num_ = $v.num_;
      _regExp = $v.regExp;
      _string = $v.string;
      _uri = $v.uri;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(E2EMessage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$E2EMessage;
  }

  @override
  void update(void Function(E2EMessageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  E2EMessage build() => _build();

  _$E2EMessage _build() {
    _$E2EMessage _$result;
    try {
      _$result = _$v ??
          new _$E2EMessage._(
              bigInt: BuiltValueNullFieldError.checkNotNull(
                  bigInt, r'E2EMessage', 'bigInt'),
              bool_: BuiltValueNullFieldError.checkNotNull(
                  bool_, r'E2EMessage', 'bool_'),
              builtList: builtList.build(),
              builtListMultimap: builtListMultimap.build(),
              builtMap: builtMap.build(),
              builtSet: builtSet.build(),
              builtSetMultimap: builtSetMultimap.build(),
              dateTime: BuiltValueNullFieldError.checkNotNull(
                  dateTime, r'E2EMessage', 'dateTime'),
              double_: BuiltValueNullFieldError.checkNotNull(
                  double_, r'E2EMessage', 'double_'),
              duration: BuiltValueNullFieldError.checkNotNull(
                  duration, r'E2EMessage', 'duration'),
              int_: BuiltValueNullFieldError.checkNotNull(
                  int_, r'E2EMessage', 'int_'),
              int64: BuiltValueNullFieldError.checkNotNull(
                  int64, r'E2EMessage', 'int64'),
              jsonObject: BuiltValueNullFieldError.checkNotNull(
                  jsonObject, r'E2EMessage', 'jsonObject'),
              num_: BuiltValueNullFieldError.checkNotNull(
                  num_, r'E2EMessage', 'num_'),
              regExp: BuiltValueNullFieldError.checkNotNull(
                  regExp, r'E2EMessage', 'regExp'),
              string: BuiltValueNullFieldError.checkNotNull(string, r'E2EMessage', 'string'),
              uri: BuiltValueNullFieldError.checkNotNull(uri, r'E2EMessage', 'uri'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'builtList';
        builtList.build();
        _$failedField = 'builtListMultimap';
        builtListMultimap.build();
        _$failedField = 'builtMap';
        builtMap.build();
        _$failedField = 'builtSet';
        builtSet.build();
        _$failedField = 'builtSetMultimap';
        builtSetMultimap.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'E2EMessage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$E2EResult extends E2EResult {
  @override
  final E2EMessage message;

  factory _$E2EResult([void Function(E2EResultBuilder)? updates]) =>
      (new E2EResultBuilder()..update(updates))._build();

  _$E2EResult._({required this.message}) : super._() {
    BuiltValueNullFieldError.checkNotNull(message, r'E2EResult', 'message');
  }

  @override
  E2EResult rebuild(void Function(E2EResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  E2EResultBuilder toBuilder() => new E2EResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is E2EResult && message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(0, message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'E2EResult')..add('message', message))
        .toString();
  }
}

class E2EResultBuilder implements Builder<E2EResult, E2EResultBuilder> {
  _$E2EResult? _$v;

  E2EMessageBuilder? _message;
  E2EMessageBuilder get message => _$this._message ??= new E2EMessageBuilder();
  set message(E2EMessageBuilder? message) => _$this._message = message;

  E2EResultBuilder();

  E2EResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(E2EResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$E2EResult;
  }

  @override
  void update(void Function(E2EResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  E2EResult build() => _build();

  _$E2EResult _build() {
    _$E2EResult _$result;
    try {
      _$result = _$v ?? new _$E2EResult._(message: message.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'message';
        message.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'E2EResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
