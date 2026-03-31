import 'package:ecommerce/core/approuter.dart';
import 'package:ecommerce/feature/screen/Checkout/cubit/chackout_cubit_cubit.dart';
import 'package:ecommerce/feature/screen/locationn/model/location_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ListTileLocation extends StatefulWidget {
  final LocationModel location;
  const ListTileLocation({super.key, required this.location});

  @override
  State<ListTileLocation> createState() => _ListTileLocationState();
}

class _ListTileLocationState extends State<ListTileLocation> {
  LocationModel? locationn;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        final resultat = await GoRouter.of(
          context,
        ).push<LocationModel>(Approuter.location);
        if (resultat != null) {
          locationn = resultat;
          print(resultat.city);
          context.read<ChackoutCubitCubit>().getproduct();
        }
      },
      child: ListTile(
        title: Text(locationn?.city ?? widget.location.city),
        subtitle: Text(
          locationn?.country ?? widget.location.country,
          style: Theme.of(
            context,
          ).textTheme.titleSmall!.copyWith(color: Colors.grey),
        ),
        trailing: ClipOval(
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.black,

              image: DecorationImage(image: AssetImage('assets/location.png')),
            ),
          ),
        ),
      ),
    );
  }
}
