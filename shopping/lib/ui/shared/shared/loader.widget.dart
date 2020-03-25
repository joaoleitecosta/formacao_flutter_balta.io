import 'package:flutter/material.dart';
import 'package:shopping/ui/shared/shared/progress-indicator.widget.dart';

class Loader extends StatelessWidget {
  final object;
  final Function calback;

  Loader({@required this.object, @required this.calback});

  @override
  Widget build(BuildContext context) {
    if (object == null) {
      return Center(
        child: GenericProgressIndicator(),
      );
    }
    if (object.length == 0) {
      return Center(
        child: Text("Nenhum item encontado"),
      );
    }
    return calback();
  }
}
