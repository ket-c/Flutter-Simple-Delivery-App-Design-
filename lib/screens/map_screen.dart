import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:latlng/latlng.dart';
import 'package:light_weight_delivery/widgets/delivery_modal_content.dart';
import 'package:map/map.dart';
import 'package:sheet/sheet.dart';

class MapScreen extends StatelessWidget {
  MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = MapController(
      location: const LatLng(5.671799940932376, -0.20131363493721025),
      zoom: 15,
    );
    return Scaffold(
        body: Stack(
      children: [
        MapLayout(
          controller: controller,
          builder: (context, transformer) {
            return TileLayer(
              builder: (context, x, y, z) {
                final tilesInZoom = pow(2.0, z).floor();

                while (x < 0) {
                  x += tilesInZoom;
                }
                while (y < 0) {
                  y += tilesInZoom;
                }

                x %= tilesInZoom;
                y %= tilesInZoom;

                //Google Maps
                final url =
                    'https://www.google.com/maps/vt/pb=!1m4!1m3!1i$z!2i$x!3i$y!2m3!1e0!2sm!3i420120488!3m7!2sen!5e1105!12m4!1e68!2m2!1sset!2sRoadmap!4e0!5m1!1e0!23i4111425';

                return CachedNetworkImage(
                  imageUrl: url,
                  fit: BoxFit.cover,
                );
              },
            );
          },
        ),
        const Sheet(
          initialExtent: 350,
          minExtent: 100,
          maxExtent: 500,
          child: DeliveryModalContent(),
        ),
      ],
    ));
  }
}
