import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX'),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: const Text('GetX Practice'),
              subtitle: const Text('Get-X Subtitle'),
              onTap: (){
                Get.defaultDialog(
                  title: 'Get-X',
                  middleText: 'anchorman aca sca cascara ad madcap ad ad sd ad amd sd j dad ',
                  textConfirm: 'ok',
                  textCancel: 'Cancel'
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('GetX Practice'),
              subtitle: const Text('Get-X Subtitle'),
              onTap: (){
                Get.bottomSheet(
                  SizedBox(
                    height: 200,
                    child: Column(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.light_mode),
                          title: const Text('Light Mode'),
                          onTap: (){
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          leading: const Icon(Icons.dark_mode),
                          title: const Text('Dark Mode'),
                          onTap: (){
                            Get.changeTheme(ThemeData.dark());
                          },
                        ),
                      ],
                    ),
                  )
                );
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.snackbar('Ashif', 'Muntasir Mahmud Ashif',
            backgroundColor: Colors.green, snackPosition: SnackPosition.BOTTOM);
      }),
    );
  }
}
