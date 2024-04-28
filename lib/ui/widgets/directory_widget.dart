import 'package:composite/helpers/size_converter.dart';
import 'package:composite/interfaces/file_interface.dart';
import 'package:flutter/material.dart';

class DirectoryWidget extends StatelessWidget implements FileInterface {
  final String title;
  final bool isExpanded;
  final List<FileInterface> files = [];
  DirectoryWidget({
    super.key,
    required this.title,
    this.isExpanded = false,
  });

  void addFile(FileInterface file) {
    files.add(file);
  }

  @override
  Widget build(BuildContext context) {
    return render(context);
  }

  @override
  int getSize() {
    int sum = 0;

    for (var file in files) {
      sum += file.getSize();
    }
    return sum;
  }

  @override
  Widget render(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: ExpansionTile(
        leading: const Icon(Icons.folder),
        title: Text('$title${SizeConverter.bytesToString(getSize())}'),
        initiallyExpanded: isExpanded,
        children: files.map((file) => file.render(context)).toList(),
      ),
    );
  }
}
