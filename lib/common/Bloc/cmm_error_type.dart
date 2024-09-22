class CmmErrorType {
  final String message;
  final String value;
  final String trackingCode;

  CmmErrorType({
    required this.message,
    required this.value,
    required this.trackingCode,
  });

  factory CmmErrorType.fromJson(Map<String, dynamic> json) => CmmErrorType(
        message: json['message'],
        value: json['value'],
        trackingCode: json['trackingCode'],
      );

  static List<Map<String, dynamic>> list(Map<String, dynamic> json) {
    List<Map<String, CmmErrorType>> errors = [];

    json.forEach((key, value) {
      final typeError = CmmErrorType.fromJson(value);

      final mapError = {
        key: typeError,
      };

      errors.add(mapError);
    });

    return errors;
  }

  @override
  String toString() {
    return '''
    CmmErrorType(
      message: $message,
      value: $value,
      trackingCode: $trackingCode,
    )
    ''';
  }
}
