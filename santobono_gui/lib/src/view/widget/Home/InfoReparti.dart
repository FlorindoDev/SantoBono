import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:santobono_gui/src/utils/AppInfo.dart';
import 'package:santobono_gui/src/view/widget/Home/InfoCardReparti.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoReparti extends StatelessWidget {
  const InfoReparti({super.key});

  static const double? paddingCard = 10;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 150,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment
                        .center, // <— centra i figli orizzontalmente
                children: <Widget>[
                  InfoCardReparti(
                    icon: AppInfo.SvgIcon(
                      Theme.of(context).colorScheme.onPrimary,
                      50,
                      50,
                      'assets/images/rianimazione.svg',
                    ),
                    reparto: 'Rianimazione',
                    onTap: () => print('Rianimazione'),
                  ),
                  const SizedBox(width: paddingCard), // spaziatura
                  InfoCardReparti(
                    icon: AppInfo.SvgIcon(
                      Theme.of(context).colorScheme.onPrimary,
                      50,
                      50,
                      'assets/images/Ortopedia.svg',
                    ),
                    reparto: 'Ortopedia',
                    onTap: () => print('Ortopedia'),
                  ),

                  const SizedBox(width: paddingCard), // spaziatura
                  InfoCardReparti(
                    icon: AppInfo.SvgIcon(
                      Theme.of(context).colorScheme.onPrimary,
                      50,
                      50,
                      'assets/images/Cervello.svg',
                    ),
                    reparto: 'Neurologia',
                    onTap: () => print('Neurologia'),
                  ),
                  const SizedBox(width: paddingCard), // spaziatura
                  InfoCardReparti(
                    icon: AppInfo.SvgIcon(
                      Theme.of(context).colorScheme.onPrimary,
                      50,
                      50,
                      'assets/images/rianimazione.svg',
                    ),
                    reparto: 'Esempio',
                    onTap: () => print('Neurologia'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
