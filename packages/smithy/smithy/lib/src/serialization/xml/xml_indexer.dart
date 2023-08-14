abstract class XmlIndexer {
  const XmlIndexer();

  static const XmlIndexer none = _NoneIndexer();
  static const XmlIndexer awsQueryList = _AwsQueryListIndexer();
  static const XmlIndexer awsQueryMap = _AwsQueryMapIndexer();
  static const XmlIndexer ec2QueryList = _Ec2QueryListIndexer();

  String elementName(String name, int index);
}

class _AwsQueryListIndexer implements XmlIndexer {
  const _AwsQueryListIndexer();

  @override
  String elementName(String name, int index) => '$name.${index + 1}';
}

class _AwsQueryMapIndexer implements XmlIndexer {
  const _AwsQueryMapIndexer();

  @override
  String elementName(String name, int index) => '${index + 1}.$name';
}

class _Ec2QueryListIndexer implements XmlIndexer {
  const _Ec2QueryListIndexer();

  @override
  String elementName(String name, int index) => '${index + 1}';
}

class _NoneIndexer implements XmlIndexer {
  const _NoneIndexer();

  @override
  String elementName(String name, int index) => name;
}
