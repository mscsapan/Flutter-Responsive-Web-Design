import 'package:flutter/material.dart';
import 'package:responsive_web/responsive.dart';

class ResponsiveContainer extends StatefulWidget {
  const ResponsiveContainer({Key? key}) : super(key: key);

  @override
  State<ResponsiveContainer> createState() => _ResponsiveContainerState();
}

class _ResponsiveContainerState extends State<ResponsiveContainer> {
  final String image =
      'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80';

  final String des =
      'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.';

  String name = '';

  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 500.0,
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 14.0),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.4),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                minRadius: 30.0,
                backgroundImage: NetworkImage(image),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.water_drop,
                    size: 24.0,
                    color: Colors.white,
                  ),
                  CircleAvatar(
                    minRadius: 14.0,
                    backgroundImage: NetworkImage(image),
                  ),
                ],
              ),
            ],
          ),
          const Text(
            'Mohammad Ali',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dashed,
              decorationColor: Colors.red,
            ),
          ),
          const SizedBox(height: 20.0),
          Text(des,
              style: TextStyle(fontSize: 10.0), textAlign: TextAlign.justify),
          const SizedBox(height: 20.0),
          TextFormField(
            controller: nameController,
            decoration: InputDecoration(
                isCollapsed: false,
                constraints:
                    const BoxConstraints(maxHeight: 30.0, minHeight: 30.0),
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 10.0),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                filled: true,
                fillColor: Colors.grey[200]),
            style: const TextStyle(fontSize: 10.0),
          ),
          const SizedBox(height: 10.0),
          Text(
            name,
            style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
          ),
          const Spacer(),
          SizedBox(
            width: double.infinity,
            height: 35.0,
            child: ElevatedButton(
                onPressed: () => setState(() {
                      name = nameController.text;
                      nameController.text = '';
                    }),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: const StadiumBorder(),
                ),
                child: const Text('Send Code')),
          )
        ],
      ),
    );
  }
}
