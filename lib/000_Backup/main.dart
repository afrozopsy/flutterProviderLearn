import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Import state business logic
import './state/HomeState.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (context) => HomeState(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomeWidget(),
      )
    );
  }
}


class HomeWidget extends StatelessWidget {

  @override
  build( BuildContext context ){

    final homeState = Provider.of<HomeState>(context);

    return ChangeNotifierProvider<HomeState>(
      create: (context) => HomeState(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Umar Learn provider flutter'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '${homeState.numCount}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: homeState.increaseNumCount(1),
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      )
    );
  }

}