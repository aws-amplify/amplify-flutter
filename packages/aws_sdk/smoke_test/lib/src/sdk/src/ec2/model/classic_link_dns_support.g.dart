// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classic_link_dns_support.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClassicLinkDnsSupport extends ClassicLinkDnsSupport {
  @override
  final bool classicLinkDnsSupported;
  @override
  final String? vpcId;

  factory _$ClassicLinkDnsSupport(
          [void Function(ClassicLinkDnsSupportBuilder)? updates]) =>
      (new ClassicLinkDnsSupportBuilder()..update(updates))._build();

  _$ClassicLinkDnsSupport._({required this.classicLinkDnsSupported, this.vpcId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(classicLinkDnsSupported,
        r'ClassicLinkDnsSupport', 'classicLinkDnsSupported');
  }

  @override
  ClassicLinkDnsSupport rebuild(
          void Function(ClassicLinkDnsSupportBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClassicLinkDnsSupportBuilder toBuilder() =>
      new ClassicLinkDnsSupportBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClassicLinkDnsSupport &&
        classicLinkDnsSupported == other.classicLinkDnsSupported &&
        vpcId == other.vpcId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, classicLinkDnsSupported.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ClassicLinkDnsSupportBuilder
    implements Builder<ClassicLinkDnsSupport, ClassicLinkDnsSupportBuilder> {
  _$ClassicLinkDnsSupport? _$v;

  bool? _classicLinkDnsSupported;
  bool? get classicLinkDnsSupported => _$this._classicLinkDnsSupported;
  set classicLinkDnsSupported(bool? classicLinkDnsSupported) =>
      _$this._classicLinkDnsSupported = classicLinkDnsSupported;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  ClassicLinkDnsSupportBuilder() {
    ClassicLinkDnsSupport._init(this);
  }

  ClassicLinkDnsSupportBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _classicLinkDnsSupported = $v.classicLinkDnsSupported;
      _vpcId = $v.vpcId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClassicLinkDnsSupport other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClassicLinkDnsSupport;
  }

  @override
  void update(void Function(ClassicLinkDnsSupportBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClassicLinkDnsSupport build() => _build();

  _$ClassicLinkDnsSupport _build() {
    final _$result = _$v ??
        new _$ClassicLinkDnsSupport._(
            classicLinkDnsSupported: BuiltValueNullFieldError.checkNotNull(
                classicLinkDnsSupported,
                r'ClassicLinkDnsSupport',
                'classicLinkDnsSupported'),
            vpcId: vpcId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
