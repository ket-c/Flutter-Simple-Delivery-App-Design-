import 'package:flutter/material.dart';
import 'package:light_weight_delivery/widgets/location_indicator.dart';
import 'dart:math' as math;

class DeliveryModalContent extends StatelessWidget {
  const DeliveryModalContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(blurRadius: 25, color: Colors.black.withOpacity(0.2)),
        ],
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 40, top: 10, bottom: 50, right: 40),
        child: Column(
          children: [
            Transform.rotate(
                angle: 90 * math.pi / 180,
                child: const Icon(
                  Icons.chevron_left,
                  size: 40,
                  color: Colors.black,
                )),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                LocationIndicator(
                  bgColor: Colors.blue[100],
                  color: Colors.blue,
                ),
                const SizedBox(width: 30,),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Pickup',
                            style: TextStyle(
                                color: Colors.grey, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Caunninghame house',
                            style: TextStyle(
                                color: Color.fromARGB(255, 88, 86, 86),
                                fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),
                      TextButton(
                          onPressed: () {
                            return;
                          },
                          style: TextButton.styleFrom(
                              side: const BorderSide(
                                  width: 0.8,
                                  color: Colors.grey,
                                  style: BorderStyle.solid),
                              backgroundColor: Colors.transparent,
                              minimumSize: const Size(65, 35),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8))),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 8.0, right: 8),
                            child: Text(
                              'Edit',
                              style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                          )),
                    ],
                  ),
                ),
              
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                LocationIndicator(bgColor: Colors.green[100], color: Colors.green,),
                 SizedBox(width: 30,),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Delivery',
                            style: TextStyle(
                                color: Colors.grey, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Marks and spencer',
                            style: TextStyle(
                                color: Color.fromARGB(255, 88, 86, 86),
                                fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),
                      TextButton(
                          onPressed: () {
                            return;
                          },
                          style: TextButton.styleFrom(
                              side: const BorderSide(
                                  width: 0.8,
                                  color: Colors.grey,
                                  style: BorderStyle.solid),
                              backgroundColor: Colors.transparent,
                              minimumSize: const Size(65, 35),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8))),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 8.0, right: 8),
                            child: Text(
                              'Edit',
                              style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                          )),
                    ],
                  ),
                ),
             
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: const Size(50, 50),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 40, right: 40, top: 15, bottom: 15),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: const Text(
                      'Track Package',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
