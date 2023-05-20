import 'package:flutter/material.dart';
import 'package:miniproject/Untitled-1.dart';
import 'package:miniproject/loginwithanimation.dart';
import 'package:miniproject/models/googlemaps.dart';
import 'package:miniproject/models/grid.dart';
import 'package:miniproject/pages/loginpage.dart';
import 'package:miniproject/utils/utils.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

class MainHomePageGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: allGrid.grid.length,
      itemBuilder: (ctx, i) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () async {
            if (i == 0) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GoogleMap(),
                  ));
            }

            if (i == 1) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ));
            }

            if (i == 2) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ));
            }

            if (i == 3) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ));
            }

            if (i == 4) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ));
            }

            if (i == 5) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ));
            }
          },
          child: Container(
            margin: EdgeInsets.only(
                top: i.isEven ? 0 : 0, bottom: i.isEven ? 0 : 0),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 247, 196, 209),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(128, 45, 83, 1),
                  blurRadius: 30,
                ),
              ],
            ),
            child: Column(
              children: [
                Image.asset(allGrid.grid[i].path),
                SizedBox(
                  height: 10,
                ),
                Text(
                  allGrid.grid[i].title,
                  style: MainHeading,
                ),
              ],
            ),
          ),
        ),
      ),
      //griddelegates shows how many items u want in a particular row
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    );
  }
}
