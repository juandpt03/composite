import 'package:composite/ui/widgets/file_widget.dart';
import 'package:flutter/material.dart';

class TextFile extends FileWidget {
  const TextFile({
    super.key,
    required super.title,
    required super.size,
  }) : super(icon: Icons.description);
}
