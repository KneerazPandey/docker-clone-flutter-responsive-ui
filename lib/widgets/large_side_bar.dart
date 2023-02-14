import 'package:docker_clone/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LargeSideBar extends StatelessWidget {
  const LargeSideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      height: MediaQuery.of(context).size.height,
      color: sideNav,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Column(
              children: [
                const SizedBox(height: 28),
                const LargeSideBarItem(
                  icon: FontAwesomeIcons.boxArchive,
                  text: 'Containers',
                  textColor: light,
                  iconColor: light,
                ),
                const SizedBox(height: 22),
                const LargeSideBarItem(
                  icon: FontAwesomeIcons.cloud,
                  text: 'Images',
                ),
                const SizedBox(height: 22),
                const LargeSideBarItem(
                  icon: FontAwesomeIcons.floppyDisk,
                  text: 'Volumes',
                ),
                const SizedBox(height: 22),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const LargeSideBarItem(
                      icon: FontAwesomeIcons.boxTissue,
                      text: 'Dev Environments',
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      decoration: BoxDecoration(
                        color: lightBlue,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Text(
                        'BETA',
                        style: TextStyle(
                          color: light,
                          fontSize: 11,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 22),
                Container(
                  color: Colors.grey.withOpacity(0.2),
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  height: 1,
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Extensions',
                      style: TextStyle(
                        color: light,
                        fontSize: 12,
                      ),
                    ),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          decoration: BoxDecoration(
                            color: lightBlue,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: const Text(
                            'BETA',
                            style: TextStyle(
                              color: light,
                              fontSize: 11,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ),
                        Positioned(
                          top: -6,
                          right: -8,
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
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_vert,
                      ),
                      color: light,
                      iconSize: 20,
                    ),
                  ],
                ),
                const SizedBox(height: 18),
                Row(
                  children: [
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
                    const SizedBox(width: 12),
                    const Text(
                      'Add Extensions',
                      style: TextStyle(
                        color: light,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
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

class LargeSideBarItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;
  final Color textColor;

  const LargeSideBarItem({
    Key? key,
    required this.icon,
    required this.text,
    this.iconColor = unHoverIcon,
    this.textColor = unHoverText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        FaIcon(
          icon,
          color: iconColor,
          size: 18,
        ),
        const SizedBox(width: 12),
        Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
