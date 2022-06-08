import 'package:flutter/material.dart';
import 'package:statemanagementflutter/provider/counterprovider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ChangeNotifierProvider<Counter>(
          create: (context) =>  Counter(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              Text('you are a nice ${context.watch<Counter>().count}' ),
            ],
          ),
        ),
      ),
      floatingActionButton:Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: 
          [FloatingActionButton(onPressed: ()=>context.read<Counter>().increment(),
          child: Text('+'),
          ),
          FloatingActionButton(onPressed: (){
            return context.read<Counter>().reset();
          },
          child: Text('reset'),
          ),
          FloatingActionButton(onPressed: (){
          return context.read<Counter>().substract();

          },
          child: Text('-'),
          ),
        ],
      ),
      
    );
    
  }
}