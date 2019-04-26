import 'package:flutter/material.dart';

class AnnoyWidget extends StatelessWidget {
  AnnoyWidget(Color background){
    this._backgroundColor = background;
  }

  var _backgroundColor;



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        color: Colors.transparent,
        child: Column(
          children: <Widget> [
            SizedBox(height: 60),
            TextField(
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
                labelText: 'Name of Person to Annoy',
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
                labelText: 'Your Name',
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
              ),

            ),
            SizedBox(height: 20),
            TextField(
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
                labelText: 'Phone Number (U.S. only)',
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),
            RaisedButton(
              color: Colors.red,
              onPressed: () {

              },
              textColor: Colors.white,
              child: Text('Send'),
              elevation: 4,
            ),
          ],
        )
      );
  }
}