import 'package:composite/models/audio_file.dart';
import 'package:composite/models/image_file.dart';
import 'package:composite/models/text_file.dart';
import 'package:composite/models/video_file.dart';
import 'package:composite/ui/widgets/directory_widget.dart';
import 'package:flutter/material.dart';

class BuildComposite {
  BuildComposite._();

  static Widget buildFiles() {
    final DirectoryWidget generalDirectory = DirectoryWidget(
      title: 'Archivos',
      isExpanded: true,
    );

    final DirectoryWidget musicDirectory = DirectoryWidget(
      title: 'Música',
    );

    musicDirectory.addFile(
      const AudioFile(
        title: 'Canción 1',
        size: 4000,
      ),
    );

    final DirectoryWidget videoDirectory = DirectoryWidget(
      title: 'Videos',
    );

    videoDirectory.addFile(
      const VideoFile(
        title: 'Video 1',
        size: 8000,
      ),
    );

    final DirectoryWidget imageDirectory = DirectoryWidget(
      title: 'Imágenes',
    );

    imageDirectory.addFile(
      const ImageFile(
        title: 'Imagen 1',
        size: 2000,
      ),
    );

    final DirectoryWidget textDirectory = DirectoryWidget(
      title: 'Textos',
    );

    textDirectory.addFile(
      const TextFile(
        title: 'Texto 1',
        size: 1000,
      ),
    );

    generalDirectory.addFile(musicDirectory);
    generalDirectory.addFile(videoDirectory);
    generalDirectory.addFile(imageDirectory);
    generalDirectory.addFile(textDirectory);

    return generalDirectory;
  }
}
