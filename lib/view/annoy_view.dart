import 'package:flutter/material.dart';
import 'package:annoy_someone/utils/constants.dart';
import 'package:annoy_someone/presenter/annoy_presenter.dart';


class AnnoyWidget extends StatefulWidget {
  const AnnoyWidget({Key key}):super(key: key);
  @override
  _AnnoyState createState() => _AnnoyState();
}

class _AnnoyState extends State<AnnoyWidget> {
  _AnnoyState(){
    this._presenter = AnnoyPresenter();
  }
  AnnoyPresenter _presenter;

  var _backgroundColor;
  final toController = TextEditingController();
  final fromController = TextEditingController();
  final phoneNumController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    toController.dispose();
    fromController.dispose();
    phoneNumController.dispose();
    super.dispose();
  }

  void _showDialog(String response) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text(TITLE_RESPONSE_STATUS),
          content: new Text(response),
          actions: <Widget>[
            new FlatButton(
              child: new Text(BUTTON_CLOSE),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget> [
          SizedBox(height: 50),
          TextField(
            controller: toController,
            style: TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person, color: Colors.white,),
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
              labelText: LABEL_NAME_OF_PERSON_TO_ANNOY,
              labelStyle: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 30),
          TextField(
            controller: fromController,
            style: TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person, color: Colors.white,),
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
              labelText: LABEL_YOUR_NAME,
              labelStyle: TextStyle(
                color: Colors.white,
              ),
            ),

          ),
          SizedBox(height: 30),
          TextField(
            maxLength: 10,
            controller: phoneNumController,
            style: TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.phone, color: Colors.white,),
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
              labelText: LABEL_PHONE_NUMBER,
              labelStyle: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 10),
          RaisedButton(
            color: Colors.red,
            onPressed: () {
             String resp = this._presenter.prepareAnnoyRequest(toController.text, fromController.text, phoneNumController.text);
             _showDialog(resp);
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