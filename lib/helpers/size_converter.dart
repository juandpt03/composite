class SizeConverter {
  const SizeConverter._();

  static String bytesToString(int bytes) {
    final typeSize = ['B', 'KB', 'MB', 'GB', 'TB'];
    double size = bytes.toDouble();
    int order = 0;
    while (size >= 1024 && order++ < typeSize.length - 1) {
      size /= 1024;
    }
    return '${size.toStringAsFixed(2)} ${typeSize[order]}';
  }
}
