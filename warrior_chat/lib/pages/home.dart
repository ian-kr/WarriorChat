import 'package:flutter/material.dart';
import "page1.dart";
import "page2.dart";

class HomePage extends StatelessWidget{
  const HomePage({super.key});
  @override
  Widget build(BuildContext context){
    return const Material(

      child : MainTabBar()
      
    );
  }
}

class MainTabBar extends StatelessWidget{
  const MainTabBar({super.key});

  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home : DefaultTabController(
        length : 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Warrior Chat",
              style: TextStyle(
                fontSize: 36.0,
                color: Colors.white,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.blue,
            bottom: TabBar(
              padding: const EdgeInsets.symmetric(horizontal: 50),

              indicatorSize: TabBarIndicatorSize.tab,
              unselectedLabelColor: Colors.white,
              
              
              labelColor: Colors.blue,
              indicator: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
              ),
              tabs: [
                Tab(
                  child : Container(
                    decoration: const BoxDecoration(
                      color: Colors.transparent
                    ),
                    child : const Align(
                      child: Text("Overview"),
                    )
                  )
                ),
                Tab(
                  child : Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child : const Align(
                    child: Text("People"),
                  )
                  )
                ),
              ])
          ),
          body: const TabBarView(
            children: [
              Page1(),
              Page2()
            ]
          )
        )
      )
    );
  }
}
