import 'package:flutter/material.dart';
import 'package:vsapi/view/home_screen.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          '  News',
          style: TextStyle(color: Colors.red),
        ),
      ),
      // bottomNavigationBar: Padding(
      //   padding: EdgeInsets.only(bottom: 10),
      //   child: DotNavigationBar(
      //     margin: EdgeInsets.only(left: 10, right: 10),
      //     dotIndicatorColor: Colors.red,
      //     unselectedItemColor: Colors.black,
      //     splashBorderRadius: 50,
      //     currentIndex: _selectedIndex,
      //     // enableFloatingNavBar: false,
      //     onTap: _onItemTapped,
      //     backgroundColor: Color.fromARGB(15, 136, 77, 61),
      //     items: [
      //       /// Home
      //       DotNavigationBarItem(
      //         icon: Icon(Icons.home),
      //         selectedColor: Color(0xff73544C),
      //       ),
      //
      //       /// Likes
      //       DotNavigationBarItem(
      //         icon: Icon(Icons.favorite),
      //         selectedColor: Color(0xff73544C),
      //       ),
      //
      //       /// Search
      //       DotNavigationBarItem(
      //         icon: Icon(Icons.search),
      //         selectedColor: Color(0xff73544C),
      //       ),
      //
      //       /// Profile
      //       DotNavigationBarItem(
      //         icon: Icon(Icons.person),
      //         selectedColor: Color(0xff73544C),
      //       ),
      //     ],
      //   ),
      // ),
      body:     HomeScreen(),

    );
  }
}
