import 'package:flutter/material.dart';
import 'package:todoapplication/features/presentation/UI%20components.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: false,
        titleSpacing: 20,

        title:
           const Padding(
             padding: EdgeInsets.only(top: 33),
             child: Text(
               "Hello Rashed 👋",
               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
             ),
           ),
      ),
      body: Column(
        children: [
          Container(

            padding: const EdgeInsets.symmetric(horizontal: 15),
            margin: const EdgeInsets.all(15),
            height: 50,
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5),),],
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Row(
              children: [
                Icon(Icons.search, color: Colors.grey),
                SizedBox(width: 10),
                Text("Search",
                style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),

           const SizedBox(height: 10,),

          const Align(
            alignment : Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Text("My Tasks",
              style: TextStyle(fontSize: 25,
              fontWeight: FontWeight.bold,
               ),
              ),
            ),
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: SizedBox(

                     width: MediaQuery.of(context).size.width * 0.55,
                     height: MediaQuery.of(context).size.height * 0.25,
                     child: const TaskCard (title: "this is Task 2 ", description: "The Task 2 from samty test test estst",
                        date: "Sun Sep 29 12:00 AM"),
                   ),
                 ),


                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.55,
                    height: MediaQuery.of(context).size.height * 0.25,
                    child: const TaskCard (title: "this is Task 2 ", description: "The Task 2 from samty test test estst",
                        date: "Sun Sep 29 12:00 AM"),
                  ),
                )
              ],
            ),
          ),


          const SizedBox(height: 10,),
          const Align(
            alignment : Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Text("In Progress",
                style: TextStyle(fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

        Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5),),],
            borderRadius:  BorderRadius.circular(10),
          ),
          child: const Row(
            children: [
              Text("this is new task from RMQ",
              style: TextStyle(fontSize: 15,),
              )
            ],
          ),
        ),
        ],
      ),


      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: (){},

      child: const Icon(Icons.add),

      ),

      bottomNavigationBar: BottomAppBar(
        shape: const AutomaticNotchedShape(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(10),
            ),
          ),
        ),
        color: Colors.purple,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            IconButton(onPressed: (){}, icon: const Icon(Icons.home),
            iconSize: 28,
            ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.list),
            iconSize: 28,
            ),
          ],
        ) ,
      )
    );
  }
}
