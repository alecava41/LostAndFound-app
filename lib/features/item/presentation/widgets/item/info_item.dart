import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import 'package:lost_and_found/core/presentation/tutorial/widgets/large_white_button.dart';
import 'package:lost_and_found/core/presentation/widgets/large_green_button.dart';
import 'package:lost_and_found/features/item/domain/entities/user_item.dart';
import 'package:lost_and_found/features/item/presentation/widgets/item/info_item_field.dart';

import 'package:map_launcher/map_launcher.dart';

import '../../../domain/entities/item.dart';

class InfoItem extends StatelessWidget {
  final String title;
  final String position;
  final DateTime date;
  final String category;
  final String? question;
  final Position coordinates;
  final ItemType type;

  const InfoItem({
    Key? key,
    required this.title,
    required this.position,
    required this.date,
    required this.category,
    required this.type,
    required this.question,
    required this.coordinates,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.background,
      width: double.infinity,
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 35),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          const SizedBox(height: 10),
          InfoItemField(
            icon: Icons.location_on,
            title:
                type == ItemType.found ? AppLocalizations.of(context)!.foundNear : AppLocalizations.of(context)!.lostNear,
            content: position,
            onTapField: () async {
              final availableMaps = await MapLauncher.installedMaps;

              if (availableMaps.isNotEmpty && context.mounted) {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text(AppLocalizations.of(context)!.goToMapTitle),
                      content: SingleChildScrollView(
                        child: ListBody(
                          children: <Widget>[
                            Text(AppLocalizations.of(context)!.goToMapsDialogDescription),
                          ],
                        ),
                      ),
                      actions: <Widget>[
                        PersonalizedLargeGreenButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          text: Text(AppLocalizations.of(context)!.noStayInApp),
                        ),
                        PersonalizedLargeWhiteButton(
                            onPressed: () async {
                              Navigator.of(context).pop();

                              await availableMaps.first.showMarker(
                                coords: Coords(coordinates.X, coordinates.Y),
                                title: title,
                              );
                            },
                            text: Text(
                              AppLocalizations.of(context)!.yesSeeMaps,
                              style: TextStyle(color: Theme.of(context).primaryColor),
                            ))
                      ],
                    );
                  },
                );
              } else {
                if (context.mounted) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text(AppLocalizations.of(context)!.noMapAppTitle),
                        content: Text(AppLocalizations.of(context)!.noMapAppContent),
                        actions: <Widget>[
                          PersonalizedLargeGreenButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              text: Text(AppLocalizations.of(context)!.ok))
                        ],
                      );
                    },
                  );
                }
              }
            },
          ),
          const SizedBox(height: 10),
          InfoItemField(
              icon: Icons.calendar_month,
              title: AppLocalizations.of(context)!.dateInsertion,
              content: DateFormat("dd/MM/yyyy").format(date)),
          const SizedBox(height: 10),
          InfoItemField(icon: Icons.category, title: AppLocalizations.of(context)!.category, content: category),
          question != null && type == ItemType.found ? const SizedBox(height: 10) : Container(),
          question != null && type == ItemType.found
              ? InfoItemField(
                  icon: Icons.connect_without_contact, title: AppLocalizations.of(context)!.question, content: question!)
              : Container(),
        ],
      ),
    );
  }
}
