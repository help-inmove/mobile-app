import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:mobile_app/ui/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Find Devices'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              StreamBuilder<List<ScanResult>>(
                stream: model.bleService.getScanResult(),
                initialData: [],
                builder: (c, snapshot) => Column(
                  children: snapshot.data!
                      .map(
                        (result) => ListTile(
                          title: Text(result.device.name == ""
                              ? "No Name "
                              : result.device.name),
                          subtitle: Text(result.device.id.toString()),
                          onTap: () => {},
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: StreamBuilder<bool>(
          stream: model.bleService.isScanning(),
          initialData: false,
          builder: (c, snapshot) {
            if (snapshot.data!) {
              return FloatingActionButton(
                child: Icon(Icons.stop),
                onPressed: () => model.bleService.stopScanning(),
                backgroundColor: Colors.red,
              );
            } else {
              return FloatingActionButton(
                  child: Icon(Icons.search),
                  onPressed: () => model.bleService.startScanning(4));
            }
          },
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
