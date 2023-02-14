import 'package:docker_clone/constants/dimenstion.dart';
import 'package:docker_clone/widgets/large_home_body.dart';
import 'package:docker_clone/widgets/large_side_bar.dart';
import 'package:docker_clone/widgets/small_side_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Row(
          children: [
            size.width < smallScreenSize
                ? const SmallSideBar()
                : const LargeSideBar(),
            const Expanded(
              child: LargeHomeBody(),
            ),
          ],
        ),
      ),
    );
  }
}
