import 'package:appbar_tabbar/tab_item.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget{
  const HomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
    length: 3, 
    child: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 233, 226, 205),
        title: const Text("Flutter Custom TabBar",style: TextStyle(fontSize: 16,color: Color.fromARGB(255, 6, 143, 97),),),
        centerTitle: true,
        leading: IconButton(onPressed: () { }, icon:const Icon(Icons.menu,color: Color.fromARGB(255, 104, 223, 108)),),
        actions: [ IconButton(onPressed: () { }, icon:const Icon(Icons.share,color: Color.fromARGB(255, 104, 223, 108)),)],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child:  ClipRRect(borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: Container(
            height: 40,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color:Color.fromARGB(255, 183, 239, 185)),
            child: const TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              dividerColor: Colors.transparent,
              indicator: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              labelColor: Colors.white,
              unselectedLabelColor:Colors.black54,
              tabs: [
            TabItem(title: "Inbox", count: 6),
             TabItem(title: "Archived", count: 3),
              TabItem(title: "Deleted", count: 1)
            ],),

          ),
          
          )
          
           ,)
       
        ),
        body: const TabBarView(
          children: [
            Center(child: Text("Inbox Page")),
             Center(child: Text("Archived Page")),
              Center(child: Text("Deleted Page"))
          ],
          
          ),
        ),
    
    );
  }
}