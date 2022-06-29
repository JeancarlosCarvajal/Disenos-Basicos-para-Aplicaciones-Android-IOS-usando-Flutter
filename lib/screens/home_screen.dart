import 'package:flutter/material.dart';
import 'package:disenos/widgets/background.dart';
import 'package:disenos/widgets/card_table.dart';
import 'package:disenos/widgets/custom_bottom_navigation.dart';
import 'package:disenos/widgets/page_title.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          // Bakcground, se hace separado
          Background(),

          // Home Body
          _HomeBody(),

          //

        ],
      ),

      bottomNavigationBar: CustomBottomNavigation(),

    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            //titulos
            PageTitle(),

            // Card Table
            Container(
              width: double.infinity,
              child: CardTable()
            ),

          ],
        ),
      ),
    );
  }
}