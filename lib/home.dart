import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  //var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
    Widget build(BuildContext context) {
      return Stack(
       children: <Widget>[
         const SizedBox.expand(
           child: FittedBox(
             fit: BoxFit.cover,
             child: Image(
               image: NetworkImage('https://mir-s3-cdn-cf.behance.net/project_modules/fs/09a56674244811.5c27fd8c99e0c.gif'),
             ),
           ),
         ),
         Container(
           padding: EdgeInsets.only(top: 80),
           child: GridView.count(
             primary: false,
             padding: const EdgeInsets.all(20),
             crossAxisSpacing: 10,
             mainAxisSpacing: 10,
             crossAxisCount: 1,
            children: <Widget>[
              Card(
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  print('Card tapped.');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondRoute()),
                  );
                },
                child: Container(
                  width: 390,
                  height: 100,
                  child: Text('A card that can be tapped'),
                ),
              ),
            ),
              Card(
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    print('Card tapped.');
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondRoute()),
                    );
                  },
                  child: Container(
                    width: 390,
                    height: 100,
                    child: Text('A card that can be tapped'),
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    print('Card tapped.');
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondRoute()),
                    );
                  },
                  child: Container(
                    width: 390,
                    height: 100,
                    child: Text('A card that can be tapped'),
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    print('Card tapped.');
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondRoute()),
                    );
                  },
                  child: Container(
                    width: 390,
                    height: 100,
                    child: Text('A card that can be tapped'),
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    print('Card tapped.');
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondRoute()),
                    );
                  },
                  child: Container(
                    width: 390,
                    height: 100,
                    child: Text('A card that can be tapped'),
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    print('Card tapped.');
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondRoute()),
                    );
                  },
                  child: Container(
                    width: 390,
                    height: 100,
                    child: Text('A card that can be tapped'),
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    print('Card tapped.');
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondRoute()),
                    );
                  },
                  child: Container(
                    width: 390,
                    height: 100,
                    child: Text('A card that can be tapped'),
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    print('Card tapped.');
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondRoute()),
                    );
                  },
                  child: Container(
                    width: 390,
                    height: 100,
                    child: Text('A card that can be tapped'),
                  ),
                ),
              ),

            ],
       ),
         ),
         new Center(
             child: new Column(
               children: <Widget>[],
             )),
       ],
    );
  }

}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Beitrag"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
            // Navigate back to first route when tapped.
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}