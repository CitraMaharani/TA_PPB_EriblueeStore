import 'package:flutter/material.dart';
import 'package:eribluee_store/constants/app_color.dart';

class LoadingIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(kPrimary),
    );
  }
}
