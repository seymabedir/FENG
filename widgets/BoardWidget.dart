import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';

class BoardWidget extends StatelessWidget {

  String imageUrl;
  late final DateTime expiryDate;
  late final DateTime openDate;
  int consumeDays;

  BoardWidget(
      {
        required this.imageUrl,
        required this.expiryDate,
        required this.openDate,
        required this.consumeDays,
      }
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 25.0,
        ),
        Card(
          child : Container(
            decoration: const BoxDecoration(
              color: Colors.white54,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(75.0),
                bottomLeft: Radius.circular(75.0),
              ),
            ),
            child: Row(
              children: [
                _buildProductImage(context),
                SizedBox(width: 15.0,),
                Container(
                  child: Column(
                    children: [
                      _buildExpirationDate(expiryDate),
                      _buildOpenDate(openDate),
                      _buildConsumeDays(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Center(
            child: Text(
                '____________________________',
            style: TextStyle(color: Color.fromRGBO(13, 71, 161, 80,),
              fontWeight: FontWeight.bold, fontSize: 30.0,),
        ),
        ),

      ],
    );
  }


  _buildProductImage(BuildContext context) {
    return ClipOval(
      child: Container(
        alignment: Alignment.topCenter,
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          border: Border.all(
            width: 3.0,
            color: Color.fromRGBO(13, 71, 161, 10),
          ),
          borderRadius: BorderRadius.circular(100),
          image: DecorationImage(
            image: NetworkImage(this.imageUrl),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  _buildExpirationDate(DateTime expirationDate) {
    String expiryDate = expirationDate.toLocal().toString().split(' ')[0];
    return Row(
      children: [
        Text('Son Kullanma Tarihi: '),
        SizedBox(width: 5.0,),
        Text(expiryDate),
      ],
    );
  }

  _buildOpenDate(DateTime openDate) {
    String packetOpening = openDate.toLocal().toString().split(' ')[0];
    return Row(
      children: [
        Text('Ürünün Açıldığı Tarih: '),
        SizedBox(width: 5.0,),
        Text(packetOpening),
      ],
    );
  }


  _buildConsumeDays() {
    return Row(
      children: [
        Text('Açıldıktan Sonra Kullanma Süresi: $consumeDays Gün',
        ),
      ],
    );
  }
}

