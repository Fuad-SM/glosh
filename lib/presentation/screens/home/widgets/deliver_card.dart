part of '../../screen.dart';

class DeliverCard extends StatelessWidget {
  const DeliverCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 10),
      child: SizedBox(
        height: 40,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Deliver to',
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
                ),
                Icon(
                  Icons.push_pin,
                  size: 16,
                  color: lightSeaGreenColor,
                ),
                Text(
                  'Jl. babakan ciamis no 1000 kav. D10 kel...',
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
                ),
                Icon(
                  Icons.chevron_right,
                  size: 24,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
