import 'package:cron/cron.dart';

setScheduledTasks(void Function() onTaskTime) {
  final cron = Cron();
  cron.schedule(Schedule.parse('0 4,12,20 * * *'), () async {
    onTaskTime();
  });
}
