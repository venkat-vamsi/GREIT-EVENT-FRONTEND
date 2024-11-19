import 'package:flutter/material.dart';

class ClubManagement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('STUDENT CLUBS'),
        backgroundColor: Colors.orange[100],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildMemberSection(
              title: 'TEDXGRIET',
              facultyname: 'DR. VINAY KUMAR',
              presidentname: '\nLICENSEE',
              description: 'Meghana',
              image: 'assets/tedx.png',
            ),
            _buildMemberSection(
              title: 'AAC',
              presidentname: '\nPRESIDENT',
              facultyname: "Dr. M Kiran Kumar",
              description: 'Vaishnavi',
              image: 'assets/aac_logo.png',
            ),
            _buildMemberSection(
              title: 'CSI',
              facultyname: 'Chandrasekhar',
              presidentname: '\nPRESIDENT',
              description: 'Karthik',
              image: 'assets/csi.png',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMemberSection(
      {required String title,
      required String facultyname,
      required String presidentname,
      required String description,
      required String image}) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(height: 8),
                    Text(
                      facultyname,
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                    Text(
                      presidentname,
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                    SizedBox(height: 8),
                    Text(
                      description,
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 16.0, top: 10),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
