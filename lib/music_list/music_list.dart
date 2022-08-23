


import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MymusicList extends StatefulWidget {
  const MymusicList({Key? key}) : super(key: key);

  @override
  State<MymusicList> createState() => _MymusicListState();
}

class _MymusicListState extends State<MymusicList> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        elevation: 0.0,
        backgroundColor: Color.fromARGB(255, 7, 255, 218),
centerTitle: true,
        title: const Text('All Songs List',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Color.fromARGB(255, 255, 17, 0)),),
        
      ),
    );
  }
}