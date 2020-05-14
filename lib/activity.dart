import 'package:flutter/material.dart';

class ActivityPage extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Stack(
          children: <Widget>[
            const SizedBox.expand(
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image(
                  image: NetworkImage('https://images.squarespace-cdn.com/content/v1/5b18461a3e2d092520685fa9/1581393676663-FCDYY3D3XG1IL3N0RZP7/ke17ZwdGBToddI8pDm48kGXFMHvhJ64GLnZF1YsE3-Z7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1Ufa_2yF9ZI9AZPdwwxomz11PMA0uRhqgBzQK9ZpnlkZzZtJ3qR9G2BYeA0wOAaeYNg/SAV_202010_ILLU321_AnabellaOrtiz_A4_Camping.gif?format=500w'),
                ),
              ),
            ),
          ],
      );

  }

}