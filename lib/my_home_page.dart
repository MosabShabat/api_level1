import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/Myhome_controller.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  MyHomeController controller = Get.find<MyHomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Api Level 1"),
      ),
      body: FutureBuilder(
        future: controller.getData(),
        builder: ((context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, i) {
                  return ListTile(
                    title: Text(snapshot.data[i]['title']),
                    subtitle: Text(snapshot.data[i]['description']),
                    trailing: Text(snapshot.data[i]['price'].toString()),
                    leading: Image.network(
                      snapshot.data[i]['category']['image'],
                      width: 100,
                      height: 100,
                      fit: BoxFit.contain,
                    ),
                  );
                });
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return const Text("Error");
        }),
      ),
    );
  }
}
