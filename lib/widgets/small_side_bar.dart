import 'package:docker_clone/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SmallSideBar extends StatelessWidget {
  const SmallSideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: MediaQuery.of(context).size.height,
      color: sideNav,
      child: Column(
        children: [
          const SizedBox(height: 28),
          const FaIcon(
            FontAwesomeIcons.boxArchive,
            color: Colors.white,
            size: 18,
          ),
          const SizedBox(height: 22),
          const FaIcon(
            FontAwesomeIcons.cloud,
            color: unHoverIcon,
            size: 18,
          ),
          const SizedBox(height: 22),
          const FaIcon(
            FontAwesomeIcons.floppyDisk,
            color: unHoverIcon,
            size: 18,
          ),
          const SizedBox(height: 22),
          const FaIcon(
            FontAwesomeIcons.boxTissue,
            color: unHoverIcon,
            size: 18,
          ),
          const SizedBox(height: 22),
          Container(
            color: Colors.grey.withOpacity(0.2),
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            height: 1,
          ),
          const SizedBox(height: 20),
          Stack(
            clipBehavior: Clip.none,
            children: [
              const Text(
                'EXT',
                style: TextStyle(
                  color: light,
                ),
              ),
              Positioned(
                top: -5,
                right: -6,
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: lightBlue,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Container(
            padding: const EdgeInsets.all(1),
            decoration: BoxDecoration(
              border: Border.all(
                color: light,
              ),
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Icon(
              Icons.add,
              color: light,
              size: 18,
            ),
          ),
          const Spacer(),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 24,
            color: footer,
            child: const Center(
              child: FaIcon(
                FontAwesomeIcons.docker,
                color: light,
                size: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
