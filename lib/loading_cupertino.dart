import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingCupertino extends StatelessWidget {
  const LoadingCupertino({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            CupertinoButton(child: const Text("Button"), onPressed: () {}),
            const CupertinoActivityIndicator(),
          ],
        ),
      ),
    );
  }
}