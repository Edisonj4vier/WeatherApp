import 'package:flutter/material.dart';

class CollagePage extends StatefulWidget {
  const CollagePage({super.key});

  @override
  State<CollagePage> createState() => _CollagePageState();
}

class _CollagePageState extends State<CollagePage> {
  @override
  Widget build(BuildContext context) =>  Scaffold(
    body: Center(
      child: GridView(
        padding: const EdgeInsets.all(10),
        scrollDirection: Axis.vertical,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1, crossAxisSpacing: 10, mainAxisSpacing: 10),
        children: [
          Image.asset('assets/images/one.png',height: 100,width: 10,fit: BoxFit.fill,),
          Image.asset('assets/images/two.png',height: 100,width: 10,fit: BoxFit.fill,),
          Image.asset('assets/images/three.png',height: 100,width: 10,fit: BoxFit.fill,),
          Image.asset('assets/images/four.png',height: 100,width: 10,fit: BoxFit.fill,),
          Image.asset('assets/images/five.png',height: 100,width: 10,fit: BoxFit.fill,),
          Image.asset('assets/images/six.png',height: 100,width: 10,fit: BoxFit.fill,),
     ],),

    ),
  );
}
