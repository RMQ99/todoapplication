import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';


class TaskCard extends StatelessWidget {
  final String title;
  final String description;
  final String date;

  const TaskCard({
    Key? key,
    required this.title,
    required this.description,
    required this.date,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5),),],
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText(
            title,
            style: const TextStyle(fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.bold),
          ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: AutoSizeText(
                description,
                style: const TextStyle(color: Colors.white,fontSize: 18,),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AutoSizeText(
                    date,
                    style: const TextStyle(color: Colors.grey,fontSize: 10),
                  ),

                  const Icon(Icons.arrow_forward, color: Colors.white),

                ],
              ),
            )
        ],
      ),
    );
  }
}
