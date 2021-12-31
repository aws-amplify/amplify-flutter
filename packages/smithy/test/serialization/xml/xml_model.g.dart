// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'xml_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<XmlModel> _$xmlModelSerializer = new _$XmlModelSerializer();

class _$XmlModelSerializer implements StructuredSerializer<XmlModel> {
  @override
  final Iterable<Type> types = const [XmlModel, _$XmlModel];
  @override
  final String wireName = 'XmlModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, XmlModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'blob',
      serializers.serialize(object.blob,
          specifiedType: const FullType(Uint8List)),
    ];

    return result;
  }

  @override
  XmlModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new XmlModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'blob':
          result.blob = serializers.deserialize(value,
              specifiedType: const FullType(Uint8List)) as Uint8List;
          break;
      }
    }

    return result.build();
  }
}

class _$XmlModel extends XmlModel {
  @override
  final Uint8List blob;

  factory _$XmlModel([void Function(XmlModelBuilder)? updates]) =>
      (new XmlModelBuilder()..update(updates)).build();

  _$XmlModel._({required this.blob}) : super._() {
    BuiltValueNullFieldError.checkNotNull(blob, 'XmlModel', 'blob');
  }

  @override
  XmlModel rebuild(void Function(XmlModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  XmlModelBuilder toBuilder() => new XmlModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is XmlModel && blob == other.blob;
  }

  @override
  int get hashCode {
    return $jf($jc(0, blob.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('XmlModel')..add('blob', blob))
        .toString();
  }
}

class XmlModelBuilder implements Builder<XmlModel, XmlModelBuilder> {
  _$XmlModel? _$v;

  Uint8List? _blob;
  Uint8List? get blob => _$this._blob;
  set blob(Uint8List? blob) => _$this._blob = blob;

  XmlModelBuilder();

  XmlModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _blob = $v.blob;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(XmlModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$XmlModel;
  }

  @override
  void update(void Function(XmlModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$XmlModel build() {
    final _$result = _$v ??
        new _$XmlModel._(
            blob: BuiltValueNullFieldError.checkNotNull(
                blob, 'XmlModel', 'blob'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
