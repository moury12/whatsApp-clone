import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constant/assets_constant.dart';

import 'custom_network_image.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomNetworkImageWidget(image: '',
          errorImage: AssetsConstant.userIcon,

        )
      ],
    );
  }
}


