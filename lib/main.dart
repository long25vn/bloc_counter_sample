import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_app/bloc/counter_bloc.dart';
import 'package:new_app/bloc/counter_event.dart';
import 'package:new_app/bloc/counter_state.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<CounterBloc> (
            builder: (context) => CounterBloc(),
          )
        ],
        child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            BlocBuilder<CounterBloc, CounterState>(
              bloc: counterBloc,
              builder: (context, state) {
                return Column(
                  children: <Widget>[
                    Text(
                      '${state.soBandau}',
                        style: TextStyle(fontSize: 40,
                        color: state.redOrGreen ? Colors.red : Colors.green,
                        ),
                    ),
                    RaisedButton(
                      child: Text("Bloc khó hiểu thế"),
                      onPressed: () => counterBloc.dispatch(Tangbienso(state.soBandau + 1)),
                    ),
                    RaisedButton(
                      child: Text("Doi mau"),
                      onPressed: () => counterBloc.dispatch(Doimau(!state.redOrGreen)),
                    )
                  ],
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}

