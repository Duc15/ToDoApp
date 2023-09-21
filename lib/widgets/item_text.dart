import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ItemText extends StatelessWidget {
  final bool check;
  final String text;
  final DateTime dueDate;
  final TimeOfDay dueTime;

  ItemText(
    this.check,
    this.text,
    this.dueDate,
    this.dueTime,
  );

  Widget _buildText(BuildContext context) {
    if (check) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            text,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                fontSize: 22,
                color: Colors.grey,
                decoration: TextDecoration.lineThrough),
          ),
          _buildDateTimeTexts(context),
        ],
      );
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          text,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 22,
          ),
        ),
        _buildDateTimeTexts(context),
      ],
    );
  }

  Widget _buildDateText(BuildContext context) {
    return Text(
      DateFormat.yMMMd().format(dueDate).toString(),
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: 14,
        color: check ? Colors.grey : Theme.of(context).primaryColorDark,
      ),
    );
  }

  Widget _buildTimeText(BuildContext context) {
    return Text(
      dueTime.format(context),
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: 14,
        color: check ? Colors.grey : Theme.of(context).primaryColorDark,
      ),
    );
  }

  Widget _buildDateTimeTexts(BuildContext context) {
    // ignore: unnecessary_null_comparison
    if (dueDate != null && dueTime == null) {
      return _buildDateText(context);
      // ignore: unnecessary_null_comparison
    } else if (dueDate != null && dueTime != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _buildDateText(context),
          const SizedBox(
            width: 10,
          ),
          _buildTimeText(context),
        ],
      );
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return _buildText(context);
  }
}
