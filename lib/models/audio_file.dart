import 'package:composite/ui/widgets/file_widget.dart';
import 'package:flutter/material.dart';

class AudioFile extends FileWidget {
  const AudioFile({
    super.key,
    required super.title,
    required super.size,
  }) : super(icon: Icons.music_note);
}
