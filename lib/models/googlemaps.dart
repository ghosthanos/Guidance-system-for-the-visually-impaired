import 'package:miniproject/models/forMap.dart';
import 'package:flutter/material.dart';

class GoogleMap extends StatelessWidget {
  const GoogleMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 193, 77, 106),
        child: Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: 160,
            height: 160,
            child: TextButton(
              style: TextButton.styleFrom(
                elevation: 10,
                shadowColor: Color.fromRGBO(128, 45, 83, 1),
                backgroundColor: Color.fromRGBO(214, 226, 234, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              onPressed: () {
                MapUtils.openMap(8.4705, 76.9794);
              },
              child: Text(
                'Open              Google Maps',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 193, 77, 106),
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
          // Add your onPressed code here!
        },
        backgroundColor: Color.fromRGBO(214, 226, 234, 1),
        child: const Icon(
          Icons.arrow_back_ios_new,
          color: Color.fromARGB(255, 193, 77, 106),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
    );
  }
}
