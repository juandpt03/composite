import 'package:flutter/material.dart';

abstract class FileInterface {
  int getSize();
  Widget render(BuildContext context);
}
