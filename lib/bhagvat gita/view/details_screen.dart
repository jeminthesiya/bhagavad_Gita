import 'package:final_exam/bhagvat%20gita/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Details_Screen extends StatefulWidget {
  const Details_Screen({super.key});

  @override
  State<Details_Screen> createState() => _Details_ScreenState();
}

class _Details_ScreenState extends State<Details_Screen> {
  GitaController gitaController = Get.put(
    GitaController(),
  );

  int index = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Details Screen"),
          backgroundColor: Colors.black,
        ),
        body: FutureBuilder(
          future: gitaController.callApi2(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text(
                  "${snapshot.error}",
                ),
              );
            } else if (snapshot.hasData) {
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "${gitaController.data[index].id}",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Center(
                        child: Text(
                          "${gitaController.data[index].wordMeanings}",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }
            return Center(
              child: const CircularProgressIndicator(
                color: Colors.black,
              ),
            );
          },
        ),
      ),
    );
  }
}
