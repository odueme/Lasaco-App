import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    // Ensure no input field is focused
    FocusScope.of(context).unfocus();

    // Data for the boxes
    final List<Map<String, String>> boxData = [
      {'image': 'Images/policies.png', 'text': 'Box 1'},
      {'image': 'Images/quotes.png', 'text': 'Box 2'},
      {'image': 'Images/claims.png', 'text': 'Box 3'},
      {'image': 'Images/request.png', 'text': 'Box 4'},
      {'image': 'Images/help.png', 'text': 'Box 5'},
      {'image': 'Images/bene.png', 'text': 'Box 6'},
      {'image': 'Images/settings.png', 'text': 'Box 7'},
    ];

    return Scaffold(
      body: GestureDetector(
        onTap: () {
          // Unfocus any text fields when the user taps outside
          FocusScope.of(context).unfocus();
        },
        child: Container(
          color: const Color(0xFF01B4CB),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 50, left: 20, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('Images/profile.jpg'),
                    ),
                    SizedBox(width: 15),
                    Text(
                      'Joseph Adeniyi',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Text('Recent Activity', style: TextStyle(fontSize: 15)),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            Container(
                              height: 110,
                              width: 240,
                              decoration: const BoxDecoration(
                                color: Color(0xFF1D7DAC),
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(top: 15.0, left: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Image(image: AssetImage('Images/Frame.png')),
                                        SizedBox(width: 10),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'LASACO',
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                'Householders Insurance',
                                                style: TextStyle(color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Premium payment - ₦ 10,000.00 Thur 15th, 2024',
                                      style: TextStyle(color: Colors.white, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        const Divider(
                          color: Colors.grey,
                          height: 60,
                          thickness: 0.5,
                          indent: 5,
                          endIndent: 5,
                        ),
                        Expanded(
                          child: GridView.builder(
                            padding: const EdgeInsets.symmetric(vertical: 5.0),
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3, // Three boxes per row
                              crossAxisSpacing: 20.0,
                              mainAxisSpacing: 20.0,
                              childAspectRatio: 1, // Aspect ratio for the boxes
                            ),
                            itemCount: boxData.length, // Number of boxes
                            itemBuilder: (context, index) {
                              return Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 10,
                                      offset: const Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(boxData[index]['image']!, height: 50),
                                    
                                    
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Dashboard(),
  ));
}
