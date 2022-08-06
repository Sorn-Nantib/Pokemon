import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0E1F40),
        leading: const Text(''),
        title: const Text(
          'Pokemon App',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const Text(
            //   'Destaque',
            //   style: TextStyle(color: Color(0xff081733), fontSize: 20),
            // ),
            // Container(
            //   padding: const EdgeInsets.only(
            //     left: 30,
            //     right: 30,
            //   ),
            //   margin: const EdgeInsets.only(top: 10, bottom: 10),
            //   width: double.infinity,
            //   height: 135,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(10),
            //     color: const Color(0xff0E1F40),
            //   ),
            //   child: Row(children: [
            //     Expanded(
            //         flex: 1,
            //         child: Image.asset('assets/images/pokemonpic.png')),
            //     const SizedBox(
            //       width: 15,
            //     ),
            //     Expanded(
            //       flex: 2,
            //       child: Column(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: const [
            //           Text('Pikachu',
            //               style: TextStyle(
            //                   color: Colors.white,
            //                   fontSize: 12,
            //                   fontFamily: 'Roboto',
            //                   fontWeight: FontWeight.w700)),
            //           Text(
            //             'Loren ipsun Loren ipsun Loren ipsun Loren ipsun Loren ipsun Loren ipsun Loren ipsun Loren ipsun Loren ipsun Loren ipsun Loren ipsun Loren ipsun',
            //             overflow: TextOverflow.ellipsis,
            //             maxLines: 4,
            //             style: TextStyle(color: Colors.white, fontSize: 10),
            //           ),
            //         ],
            //       ),
            //     )
            //   ]),
            // ),

            const Text(
              'Pokemons',
              style: TextStyle(
                  color: Color(0xff081733),
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),

            Expanded(
              child: GridView.builder(
                  padding: const EdgeInsets.only(top: 20),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemCount: 50,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 5),
                      padding: const EdgeInsets.all(10),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff0E1F40),
                      ),
                      // child: Center(child: Text('$index')),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 50,
                                ),
                                const Text(
                                  'Pokemon',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                ),
                                Container(
                                    margin: const EdgeInsets.only(top: 10),
                                    padding: const EdgeInsets.all(10),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white.withOpacity(0.4),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'Pokemon',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 9,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    )),
                              ],
                            ),
                          ),
                          Expanded(
                              flex: 1,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '#001',
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 27,
                                  ),
                                  Image.asset(
                                    'assets/images/frog.png',
                                    cacheWidth: 120,
                                    cacheHeight: 120,
                                  ),
                                ],
                              )),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
