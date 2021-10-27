import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WebFooter extends StatelessWidget {
  const WebFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF313741),
      padding: const EdgeInsets.fromLTRB(139, 66, 139, 46),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.navigation,
                          color: Colors.orange,
                          size: 30,
                        ),
                        Column(
                          children: const [
                            Text(
                              'INSIDER',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.orange,
                              ),
                            ),
                            Text(
                              'TRAVEL CLUB',
                              style: TextStyle(
                                fontSize: 8,
                                color: Colors.orange,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 11.0,
                    ),
                    const Text(
                      'Insider Travel Club, PO Box 846,',
                      style: TextStyle(
                        color: Color(0xFFE1E2E3),
                        fontSize: 12.0,
                      ),
                    ),
                    const SizedBox(
                      height: 3.0,
                    ),
                    const Text(
                      'Traveler\'s Rest, SC 29690',
                      style: TextStyle(
                        color: Color(0xFFE1E2E3),
                        fontSize: 12.0,
                      ),
                    ),
                    const SizedBox(
                      height: 3.0,
                    ),
                    const Text(
                      'USA',
                      style: TextStyle(
                        color: Color(0xFFE1E2E3),
                        fontSize: 12.0,
                      ),
                    ),
                    const SizedBox(
                      height: 22.0,
                    ),
                    const Text(
                      'service@insidertravel.com',
                      style: TextStyle(
                        color: Color(0xFF58C8EA),
                        fontSize: 12.0,
                      ),
                    ),
                    const SizedBox(
                      height: 9.0,
                    ),
                    const Text(
                      '1-864-444-2356.',
                      style: TextStyle(
                        color: Color(0xFFE1E2E3),
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'App Available on',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Color(0xFFE1E2E3),
                      ),
                    ),
                    const SizedBox(
                      height: 11.0,
                    ),
                    ElevatedButton.icon(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                      ),
                      onPressed: () {},
                      icon: const FaIcon(
                        FontAwesomeIcons.googlePlay,
                        color: Colors.black,
                        size: 18,
                      ),
                      label: const Text(
                        'Google Play',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    ElevatedButton.icon(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                      ),
                      onPressed: () {},
                      icon: const FaIcon(
                        FontAwesomeIcons.apple,
                        color: Colors.black,
                        size: 18,
                      ),
                      label: const Text(
                        'App Store\t\t\t',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Subscribe',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Color(0xFFE1E2E3),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    const Text(
                      'Enter your email to get notified about\nour new offers',
                      style: TextStyle(
                        color: Color(0xFFC4C5C8),
                        fontSize: 12.0,
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.fromLTRB(20, 14, 0, 17),
                        filled: true,
                        fillColor: const Color(0xFF4E535C),
                        hintText: 'Your email',
                        hintStyle: const TextStyle(
                          color: Color(0xFFE1E2E3),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Divider(
            thickness: 2.0,
            color: Color(0xFF898C92),
          ),
          SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                flex: 1,
                child: Text(
                  '© 2021 Insider Travel Club',
                  style: TextStyle(color: Color(0xFF898C92), fontSize: 13),
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      'Home',
                      style: TextStyle(color: Color(0xFF898C92), fontSize: 13),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'About Us',
                      style: TextStyle(color: Color(0xFF898C92), fontSize: 13),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Benifits',
                      style: TextStyle(color: Color(0xFF898C92), fontSize: 13),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Get Membership',
                      style: TextStyle(color: Color(0xFF898C92), fontSize: 13),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Terms & condition',
                      style: TextStyle(color: Color(0xFF898C92), fontSize: 13),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Privacy Policy',
                      style: TextStyle(color: Color(0xFF898C92), fontSize: 13),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
