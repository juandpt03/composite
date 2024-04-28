import 'package:composite/helpers/size_converter.dart';
import 'package:composite/interfaces/file_interface.dart';
import 'package:flutter/material.dart';

class FileWidget extends StatelessWidget implements FileInterface {
  final String title;
  final int size;
  final IconData icon;
  const FileWidget({
    super.key,
    required this.title,
    required this.size,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return render(context);
  }

  @override
  int getSize() {
    return size;
  }

  @override
  Widget render(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: ListTile(
        leading: Icon(icon),
        title: Text('$title${SizeConverter.bytesToString(size)}'),
        dense: true,
      ),
    );
  }
}
