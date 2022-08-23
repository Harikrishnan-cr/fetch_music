


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MymusicList extends StatefulWidget {
  const MymusicList({Key? key}) : super(key: key);

  @override
  State<MymusicList> createState() => _MymusicListState();
}

class _MymusicListState extends State<MymusicList> {
static  const musicChannel = MethodChannel('getmymusiccname');
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    getTheMusic();
  }

   Future getTheMusic()async {


   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        elevation: 0.0,
        backgroundColor: const Color.fromARGB(255, 7, 255, 218),
centerTitle: true,
        title: const Text('All Songs List',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Color.fromARGB(255, 255, 17, 0)),),
      
        
      ),
      body: SafeArea(child: Column(
        children: const [
          Expanded(child: ListMusic())
        ],
      ))
    );
    
  }


  
}



class ListMusic extends StatelessWidget {
  const ListMusic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
return ListTile(
  title: Text('Peron $index'),
  subtitle: Text('Sub $index'),
);
    },);
  }
}