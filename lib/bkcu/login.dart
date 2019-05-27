import 'package:flutter/material.dart'; 
import 'package:flutter_mobx/flutter_mobx.dart';

import '../Store/counter.dart'; 


class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "make",
      home: new MyHomePage()
  
    );
  }
}
final counter = Counter();
class MyHomePage extends StatelessWidget {
  const MyHomePage();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MobX Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'How to make IT',
            ),
            // Wrapping in the Observer will automatically re-render on changes to counter.value
            Observer(
              builder: (_) => Text(
                    '${counter.value}',
                    style: Theme.of(context).textTheme.display1,
                  ),
            ),
            FlatButton(
              onPressed: counter.increment,
              child: Text("Tambah"),
              color: Colors.blue,
            ),
            FlatButton(
              onPressed: counter.decrement,
              child: Text("Kurang"),
              color: Colors.red,
            )
          ],
        ),
      ),
      
    );
  }
}
 








