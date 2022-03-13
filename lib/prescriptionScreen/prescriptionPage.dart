import 'package:flutter/material.dart';

class DialogExample extends StatefulWidget {
  @override
  _DialogExampleState createState() => new _DialogExampleState();
}

class _DialogExampleState extends State<DialogExample> {
  String _text = "initial";
  late TextEditingController _c;

  @override
  initState() {
    _c = new TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff042246),
                Color(0xff041e3e),
                Color(0xff1a5aa0),
                Color(0xff01060c),
                Color(0xff01070e)
              ],
              stops: [0.0, 0.0, 0.01, 0.760, 9.80],
            ),
          ),
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 15),
                Center(
                  child: Text(
                    "Prescription",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  width: 320,
                  padding: EdgeInsets.all(15),
                  color: Colors.white,
                  height: 350,
                  child: new Text(
                    _text,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        overflow: TextOverflow.clip),
                    maxLines: 30,
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
                builder: (context) => new Dialog(
                      child: Container(
                        height: 200,
                        child: new Column(
                          children: <Widget>[
                            Container(
                              width: double.infinity,
                              height: 150,
                              padding: EdgeInsets.all(20),
                              child: new TextField(
                                style: TextStyle(fontSize: 20),
                                decoration: new InputDecoration(
                                    hintText: "Update Info"),
                                controller: _c,
                                maxLines: 5,
                                autocorrect: true,
                              ),
                            ),
                            new FlatButton(
                              child: new Text("Save"),
                              onPressed: () {
                                setState(() {
                                  this._text = _c.text;
                                });
                                Navigator.pop(context);
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                context: context);
          },
          child: Icon(Icons.edit),
        ));
  }
}
