import 'package:composite/ui/widgets/file_widget.dart';
import 'package:flutter/material.dart';

class ImageFile extends FileWidget {
  const ImageFile({
    super.key,
    required super.title,
    required super.size,
  }) : super(icon: Icons.image);
}
