import 'package:flutter/material.dart';
import 'package:sottosopra3c/home_screen.dart';
import 'package:sottosopra3c/impostazioni.dart';
import 'package:sottosopra3c/search_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int SelectedIndex = 0;

List<Widget> pages= [
  HomeScreen(),
  SearchScreen(),
  SettingScreen()
];

void chooseIndex(int index){
  setState(() {
    SelectedIndex =index;
    
  });




}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [ 
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "home")
      ,BottomNavigationBarItem(icon: Icon(Icons.search),label: "ricerca")
      ,BottomNavigationBarItem(icon: Icon(Icons.settings),label: "impostazioni")
      ],
      
      currentIndex: SelectedIndex,
      onTap: chooseIndex,
      
      ),
      body:pages.elementAt(SelectedIndex) ,
      drawer:Drawer(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
     title: Center(child: Image.asset('lib/assets/sottosopra.png', width: 200,),),  
     actions: [SizedBox(width: 50,)],
     iconTheme: IconThemeData(color: Colors.black),
     )
     );

     
      
       
    
  }
}