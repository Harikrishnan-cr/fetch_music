


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











class SampleApp extends StatefulWidget {
  const SampleApp({Key? key}) : super(key: key);

  @override
  _SampleAppState createState() => _SampleAppState();
}

class _SampleAppState extends State<SampleApp> {
  double appBarHeight = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('Unfixed App Bar'),
            //floating: true,
            //snap: true,
          ),

SliverToBoxAdapter( 
    child: Container(
      width: double.infinity,
      height: 380,
      color: Colors.amber,
    ),
),
          // SliverList(
          //   delegate: SliverChildBuilderDelegate(
          //     (BuildContext context, int index) {
          //       return Container(width: double.infinity,height: 380,color: Colors.amber,);
          //     }, 
          //     childCount: 1,
          //   ),
          // ),
SliverToBoxAdapter( 
    child: SizedBox(
      height: 30,
    ),
),
          SliverList(  
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: Text('$index'),
                  ),
                  title: Text('List Item $index'),
                  subtitle: Text('This is a subtitle'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {},
                );
              },
              childCount: 50,
            ),
          ),
        ],
      ),
    );
    
    
    
    
    
    
    
    
    
    // Scaffold(
    //   body: CustomScrollView(
    //     slivers: <Widget>[
    //       SliverAppBar(
    //         expandedHeight: appBarHeight,
    //         flexibleSpace: FlexibleSpaceBar(
    //           title: Text('Movable App Bar'),
    //         ),
    //         pinned: true,
    //         backgroundColor: Colors.blue,
    //       ),
    //       SliverList(
    //         delegate: SliverChildBuilderDelegate(
    //           (BuildContext context, int index) {
    //             return ListTile(
    //               leading: CircleAvatar(
    //                 child: Text('$index'),
    //               ),
    //               title: Text('List Item $index'),
    //               subtitle: Text('This is a subtitle'),
    //               trailing: Icon(Icons.arrow_forward),
    //               onTap: () {},
    //             );
    //           },
    //           childCount: 50,
    //         ),
    //       ),
    //     ],
    //   ),
    //   bottomNavigationBar: BottomAppBar(
    //     child: Row(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: <Widget>[
    //         IconButton(
    //           icon: Icon(Icons.arrow_drop_down),
    //           onPressed: () {
    //             setState(() {
    //               appBarHeight -= 50;
    //             });
    //           },
    //         ),
    //         IconButton(
    //           icon: Icon(Icons.arrow_drop_up),
    //           onPressed: () {
    //             setState(() {
    //               appBarHeight += 50;
    //             });
    //           },
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
