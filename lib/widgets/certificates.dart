import 'package:flutter/material.dart';
import 'package:portfolio/data/cert_data.dart';

class Certificates extends StatelessWidget {
  const Certificates({super.key});
  final List<Certs> cert = CertData.cert;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 500),
      child: Column(
        spacing: 8,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: const Text(
              "Certificates",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF312E81),
              ),
            ),
          ),

          ListView.builder(
            shrinkWrap: true,
            itemCount: cert.length,
            itemBuilder: (context, index) {
              final certs = cert[index];

              return Column(
                children: [
                  const SizedBox(height: 8),
                  Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(color: Colors.grey.shade200),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(8),
                          ),
                          child: Image.asset(
                            certs.image,
                            fit: BoxFit.fill,
                            height: 300,
                            width: double.infinity,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            spacing: 4,
                            children: [
                              Text(
                                certs.title,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF312E81),
                                ),
                              ),
                              Text(certs.issued),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
