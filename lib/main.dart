import 'package:flutter/material.dart';
import 'package:get_music/music_list/music_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        canvasColor: const Color.fromARGB(255, 170, 255, 0)
      ),
      home: MymusicList()
    );
  }
}





class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  String title = 'BottomNavigationBar';

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }
int _pageIndex = 0;

List<Widget> d = [
  HomeScreen(),
  Center(child: Text('mmmmmm'),),
  Center(child: Text('vvvvvvv'),), 
  Center(child: Text('dddddd'),),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          d[_pageIndex],

          Positioned(
            bottom: 60, 
            left: 5,
            right: 5,

            child: Container(height: 60,color: Colors.blue,))
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(50.0),
          ),
          child: Container(
            height: 150, 
           
            child: BottomNavigationBar(
              elevation: 0,
              type: BottomNavigationBarType.fixed, // Fixed 
  backgroundColor:Colors.transparent,
  currentIndex: _pageIndex, 
  onTap: (value) {
    setState(() {
      _pageIndex = value;
    });
  },
              items: [
              BottomNavigationBarItem(
                activeIcon: Container(width: 60,height: 60,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.amber),child: Icon(Icons.abc),),
                icon: Icon(Icons.abc),label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.abc),label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.abc),label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.abc),label: ''),
            ])
          ),
        ),
      ),
    );
  }
}



