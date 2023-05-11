abstract class XmlIndexer {
  const XmlIndexer();

  static const XmlIndexer none = _NoneIndexer();
  static const XmlIndexer awsQueryList = _AwsQueryListIndexer();
  static const XmlIndexer awsQueryMap = _AwsQueryMapIndexer();

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

class _NoneIndexer implements XmlIndexer {
  const _NoneIndexer();

  @override
  String elementName(String name, int index) => name;
}
