import 'package:espressocash/common_widgets/async_value_widget.dart';
import 'package:espressocash/constants/sizes.dart';
import 'package:espressocash/constants/textstyles.dart';
import 'package:espressocash/features/coin/domain/coin_history_model.dart';
import 'package:espressocash/features/coin/domain/coin_model.dart';
import 'package:espressocash/features/coin/presentation/coin_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CoinScreen extends ConsumerStatefulWidget {
  final String id;
  const CoinScreen({super.key, required this.id});
  @override
  CoinScreenState createState() => CoinScreenState();
}

class CoinScreenState extends ConsumerState<CoinScreen> {
  final TextEditingController _usdController = TextEditingController();
  final TextEditingController _coinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final coin = ref.watch(coinControllerProvider(widget.id));

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        centerTitle: true,
        title: Text(
          widget.id,
          style: AppTextStyle.title.copyWith(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: AsyncValueWidget<Coin>(
            value: coin,
            data: (data) {
              return Column(
                children: [
                  Text(
                    'Graph USD of 1 ${data.name}',
                    style: AppTextStyle.title,
                  ),
                  SizedBox(
                    height: 300,
                    child: SfCartesianChart(
                      primaryXAxis: DateTimeAxis(
                        dateFormat: DateFormat.MMMd(),
                        intervalType: DateTimeIntervalType.hours,
                      ),
                      series: <CartesianSeries<CoinHistory, DateTime>>[
                        LineSeries<CoinHistory, DateTime>(
                          dataSource: data.history,
                          xValueMapper: (CoinHistory history, _) =>
                              history.date,
                          yValueMapper: (CoinHistory history, _) =>
                              history.price,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Calculator USD/${data.name}',
                    style: AppTextStyle.title,
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: TextField(
                          style: AppTextStyle.normal,
                          controller: _usdController,
                          keyboardType: TextInputType.number,
                          onChanged: (value) {
                            double usdValue = double.tryParse(value) ?? 0.0;
                            double coinValue = usdValue / data.usd;
                            _coinController.text = coinValue.toStringAsFixed(4);
                          },
                          decoration: const InputDecoration(
                            hintText: 'Insert USD',
                          ),
                        ),
                      ),
                      gapW12,
                      Flexible(
                        child: TextField(
                          style: AppTextStyle.normal,
                          controller: _coinController,
                          keyboardType: TextInputType.number,
                          onChanged: (value) {
                            double coinValue = double.tryParse(value) ?? 0.0;
                            double usdValue = coinValue * data.usd;
                            _usdController.text = usdValue.toStringAsFixed(4);
                          },
                          decoration: InputDecoration(
                            hintText: 'Insert ${data.name}',
                          ),
                        ),
                      ),
                    ],
                  ),
                  gapH12,
                  data.description.isNotEmpty
                      ? const Text(
                          'Description',
                          style: AppTextStyle.title,
                        )
                      : const Text(
                          'No description avaliable',
                          style: AppTextStyle.title,
                        ),
                  gapH12,
                  Text(
                    data.description,
                    style: AppTextStyle.normal,
                  ),
                ],
              );
            }),
      ),
    );
  }
}
