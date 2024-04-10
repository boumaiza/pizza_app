import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pizza_app/widgets/nutrition_facts.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width - (40),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 15,
                    offset: const Offset(4, 4),
                    color: Colors.grey.shade300,
                  )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(150),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 25,
                        offset: const Offset(1, 1),
                        color: Colors.grey.shade300,
                      )
                    ]),
                child: Image.asset(
                  'assets/11.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.width - (40),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 15,
                    offset: const Offset(4, 4),
                    color: Colors.grey.shade300,
                  )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Expanded(
                            flex: 2,
                            child: Text(
                              'Pizza Italiano chez Fassa',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  Text(
                                    "\$12",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const Text(
                                    "\$16",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey,
                                      decoration: TextDecoration.lineThrough,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              )),
                        )
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        /////////////////////Calories
                        MyMacroWidget(
                            value: 226,
                            title: 'Calories',
                            icon: FontAwesomeIcons.fire),

                        MyMacroWidget(
                            value: 36,
                            title: 'Protein',
                            icon: FontAwesomeIcons.dumbbell),
                        MyMacroWidget(
                            value: 5,
                            title: 'Fat',
                            icon: FontAwesomeIcons.water),
                        MyMacroWidget(
                            value: 71,
                            title: 'Carbs',
                            icon: FontAwesomeIcons.wheatAwn),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          elevation: 3.0,
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          "Buy Now",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
