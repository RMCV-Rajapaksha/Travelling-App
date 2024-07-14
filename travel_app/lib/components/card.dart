import 'package:flutter/material.dart';

class TourismCard extends StatelessWidget {
  const TourismCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 210,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.05),
                blurRadius: 5,
                spreadRadius: 3)
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(
              'https://images.unsplash.com/photo-1448375240586-882707db888b?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              height: 120,
              width: 220,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Text('Place Name',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600)),
                      Spacer(),
                      Icon(Icons.star, color: Colors.amber, size: 15),
                      SizedBox(width: 5),
                      Text(
                        '( 12 )',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Colors.black87),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                    maxLines: 2,
                    textHeightBehavior: TextHeightBehavior(
                        applyHeightToFirstAscent: false,
                        applyHeightToLastDescent: false),
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 13,
                        height: 1,
                        fontWeight: FontWeight.w400,
                        color: Colors.black87),
                  ),
                  const SizedBox(height: 5),
                  RichText(
                      text: const TextSpan(
                          text: r'160.05',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          children: [
                        TextSpan(
                          text: '  /night ',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                              color: Colors.black45),
                        )
                      ]))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
