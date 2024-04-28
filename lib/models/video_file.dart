import 'package:composite/ui/widgets/file_widget.dart';
import 'package:flutter/material.dart';

class VideoFile extends FileWidget {
  const VideoFile({
    super.key,
    required super.title,
    required super.size,
  }) : super(icon: Icons.movie);
}
