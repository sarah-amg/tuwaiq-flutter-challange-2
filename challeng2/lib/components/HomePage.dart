import 'package:challeng2/components/model.dart';
import 'package:challeng2/components/showDialog.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[900],
        centerTitle: true,
        title: const Text(
          "Add Course",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.check_outlined,
                color: Colors.white,
                size: 20,
              ))
        ],
      ),
      body: ListView(children: [
        Center(
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAo6GWd8ly_-9IBNbAOeCd6OfJR9U-7efOZg&usqp=CAU")),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                  const Text(
                    "Course",
                    style: TextStyle(),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 200,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text("UX Design",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                            const Text(
                  "  28 Students",
                              ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const ShowDialog(),
              const SizedBox(
                height: 20,
              ),
              const ModelBottom(),
            ],
          ),
        )
      ]),
    );
  }
}
