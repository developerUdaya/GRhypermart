import 'package:flutter/cupertino.dart';
import 'package:grhyper_mart/storage_info_card.dart';

import 'chart.dart';
import 'constants.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: defaultPadding),
          Text(
            "Summary",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          Chart(),
          StorageInfoCard(
            svgSrc: "assets/icons/drop_box.svg",
            title: "Total Orders",
            amountOfFiles: "1112",
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/drop_box.svg",
            title: "Packing",
            amountOfFiles: "1112",
            numOfFiles: 0,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/drop_box.svg",
            title: "Delivered",
            amountOfFiles: "1112",
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/drop_box.svg",
            title: "Cancelled",
            amountOfFiles: "1112",
            numOfFiles: 140,
          ),
        ],
      ),
    );
  }
}
