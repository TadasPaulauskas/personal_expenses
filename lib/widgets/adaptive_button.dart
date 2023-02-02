import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptiveButton extends StatelessWidget {
  final String text;
  final Function handler;

  const AdaptiveButton(this.text, this.handler, {super.key});

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            onPressed: () => handler,
            child: Text(text),
          )
        : TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Theme.of(context).primaryColor,
              foregroundColor: Theme.of(context).textTheme.button?.color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              //elevation: 5,
            ),
            onPressed: () => handler,
            child: Text(text),
          );
  }
}
