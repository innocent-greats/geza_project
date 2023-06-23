import 'package:flutter/material.dart';
import 'package:gezabeautycustomerapp/widgets/back_widget.dart';

import 'package:gezabeautycustomerapp/utils/colors.dart';
import 'package:gezabeautycustomerapp/utils/dimensions.dart';
import 'package:gezabeautycustomerapp/utils/strings.dart';
import 'package:gezabeautycustomerapp/utils/custom_style.dart';
import 'package:gezabeautycustomerapp/data/barber.dart';
import 'package:gezabeautycustomerapp/screens/barber_details_screen.dart';
import 'package:gezabeautycustomerapp/data/slot.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gezabeautycustomerapp/screens/user_invoice_screen.dart';

class AppointmentDetailsScreen extends StatefulWidget {
  const AppointmentDetailsScreen({super.key});

  @override
  _AppointmentDetailsScreenState createState() =>
      _AppointmentDetailsScreenState();
}

class _AppointmentDetailsScreenState extends State<AppointmentDetailsScreen> {
  DateTime selectedDate = DateTime.now();
  String expDate = 'exp date';
  List list = [];

  List<String> couponList = ['No Coupon', 'I have a coupon'];
  late String selectedCoupon;
  TextEditingController couponController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    selectedCoupon = couponList[1].toString();
    print('coupon: $selectedCoupon');
    getSlotList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BackWidget(),
            Container(
              decoration: BoxDecoration(
                  color: CustomColor.accentColor,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius * 2),
                      topRight: Radius.circular(Dimensions.radius * 2))),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: Dimensions.heightSize * 3),
                    child: GestureDetector(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          Strings.appointmentDetails,
                          style: TextStyle(
                              fontSize: Dimensions.extraLargeTextSize * 1.2,
                              color: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                const AppointmentDetailsScreen()));
                      },
                    ),
                  ),
                  const SizedBox(
                    height: Dimensions.heightSize,
                  ),
                  chooseBeautyExpertWidget(context),
                  selectDateWidget(context),
                  const SizedBox(
                    height: Dimensions.heightSize,
                  ),
                  selectTimeSlotWidget(context),
                  const SizedBox(
                    height: Dimensions.heightSize,
                  ),
                  serviceAmountWidget(context),
                  const SizedBox(height: Dimensions.heightSize * 2),
                  nextButtonWidget(context),
                  const SizedBox(height: Dimensions.heightSize * 3),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  chooseBeautyExpertWidget(BuildContext context) {
    return SizedBox(
      height: 180,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: Dimensions.marginSize),
            child: Text(
              Strings.chooseYourBeautyExpert,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: Dimensions.extraLargeTextSize,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: Dimensions.heightSize),
          Padding(
            padding: const EdgeInsets.only(left: Dimensions.marginSize),
            child: SizedBox(
              height: 120,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                itemCount: BarberList.list().length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  Barber barber = BarberList.list()[index];
                  return Padding(
                    padding:
                        const EdgeInsets.only(right: Dimensions.widthSize * 3),
                    child: GestureDetector(
                      child: SizedBox(
                        height: 120,
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30.0),
                              child: Image.asset(
                                barber.image,
                                height: 80,
                                width: 80,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(
                              height: Dimensions.heightSize,
                            ),
                            Text(
                              barber.name,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => BarberDetailsScreen(
                                  image: barber.image,
                                  name: barber.name,
                                  specialist: barber.specialist,
                                  rating: barber.rating,
                                  reviews: barber.reviews,
                                )));
                      },
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  selectDateWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: Dimensions.marginSize, right: Dimensions.marginSize),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Strings.selectDate,
            style: TextStyle(
                color: Colors.black,
                fontSize: Dimensions.extraLargeTextSize,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: Dimensions.heightSize),
          GestureDetector(
            onTap: () => _selectDate(context),
            child: Container(
                height: 48.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black.withOpacity(0.1)),
                    borderRadius: const BorderRadius.all(Radius.circular(5.0))),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: Dimensions.marginSize,
                        right: Dimensions.marginSize),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          expDate,
                          style: CustomStyle.textStyle,
                        ),
                        const Icon(Icons.calendar_today)
                      ],
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2020, 1),
        lastDate: DateTime(2030));
    if (picked != selectedDate) {
      setState(() {
        selectedDate = picked!;
        expDate = "${selectedDate.toLocal()}".split(' ')[0];
        print('date: $expDate');
      });
    }
  }

  selectTimeSlotWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: Dimensions.marginSize, right: Dimensions.marginSize),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.35,
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  Strings.selectTimeSlot,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: Dimensions.extraLargeTextSize,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.green),
                    ),
                    const SizedBox(
                      width: Dimensions.widthSize * 0.5,
                    ),
                    Text(
                      Strings.available,
                      style: TextStyle(
                        fontSize: Dimensions.smallTextSize,
                      ),
                    ),
                    const SizedBox(width: Dimensions.widthSize),
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: CustomColor.secondaryColor),
                    ),
                    const SizedBox(
                      width: Dimensions.widthSize * 0.5,
                    ),
                    Text(
                      Strings.booked,
                      style: TextStyle(
                        fontSize: Dimensions.smallTextSize,
                      ),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(height: Dimensions.heightSize),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: GridView.count(
                crossAxisCount: 5,
                physics: const NeverScrollableScrollPhysics(),
                children: List.generate(SlotList.list().length, (index) {
                  Slot slot = SlotList.list()[index];
                  return TextButton(
                    child: Container(
                      height: 50,
                      // width: 100,
                      decoration: BoxDecoration(
                          color: slot.isAvailable
                              ? list[index]
                                  ? Colors.green
                                  : CustomColor.primaryColor
                              : CustomColor.secondaryColor,
                          border: Border.all(
                              color: Colors.black.withOpacity(0.3), width: 1),
                          borderRadius: const BorderRadius.all(
                              Radius.circular(Dimensions.radius))),
                      child: Center(
                        child: Text(
                          slot.time,
                          style: TextStyle(
                              fontSize: Dimensions.smallTextSize,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    onPressed: () {
                      if (!slot.isAvailable) {
                        print('already booked');
                        Fluttertoast.showToast(
                            msg: Strings.slotIsNotAvailable,
                            backgroundColor: Colors.red,
                            textColor: Colors.white);
                      } else {
                        setState(() {
                          list[index] = !list[index];
                        });
                        print('you can book this slot: $list');
                      }
                    },
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }

  void getSlotList() {
    int data = SlotList.list().length;
    for (int i = 0; i < data; i++) {
      Slot slot = SlotList.list()[i];
      list.add(slot.isAvailable);

      print('list: $list');
    }
  }

  serviceAmountWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: Dimensions.marginSize, right: Dimensions.marginSize),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Strings.serviceAmount,
            style: TextStyle(
                color: Colors.black,
                fontSize: Dimensions.extraLargeTextSize,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: Dimensions.heightSize),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Strings.service,
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: Dimensions.heightSize,
                    ),
                    Text(
                      'Style Hair Cut',
                      style: CustomStyle.textStyle,
                    ),
                    const SizedBox(
                      height: Dimensions.heightSize * 0.5,
                    ),
                    Text(
                      'Spa',
                      style: CustomStyle.textStyle,
                    ),
                    const SizedBox(
                      height: Dimensions.heightSize * 0.5,
                    ),
                    Text(
                      'Skin Treatment',
                      style: CustomStyle.textStyle,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Strings.quantity,
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: Dimensions.heightSize,
                    ),
                    Text(
                      '01',
                      style: CustomStyle.textStyle,
                    ),
                    const SizedBox(
                      height: Dimensions.heightSize * 0.5,
                    ),
                    Text(
                      '01',
                      style: CustomStyle.textStyle,
                    ),
                    const SizedBox(
                      height: Dimensions.heightSize * 0.5,
                    ),
                    Text(
                      '01',
                      style: CustomStyle.textStyle,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Strings.price,
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: Dimensions.heightSize,
                    ),
                    Text(
                      '\$25',
                      style: CustomStyle.textStyle,
                    ),
                    const SizedBox(
                      height: Dimensions.heightSize * 0.5,
                    ),
                    Text(
                      '\$100',
                      style: CustomStyle.textStyle,
                    ),
                    const SizedBox(
                      height: Dimensions.heightSize * 0.5,
                    ),
                    Text(
                      '\$80',
                      style: CustomStyle.textStyle,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: Dimensions.heightSize),
          Container(
            height: 50.0,
            //width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: CustomColor.accentColor,
                borderRadius:
                    const BorderRadius.all(Radius.circular(Dimensions.radius)),
                border: Border.all(color: Colors.black.withOpacity(0.1))),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: Dimensions.marginSize * 0.5,
                  right: Dimensions.marginSize * 0.5),
              child: DropdownButton(
                isExpanded: true,
                underline: Container(),
                hint: Text(
                  selectedCoupon,
                  style: CustomStyle.textStyle,
                ), // Not necessary for Option 1
                value: selectedCoupon,
                onChanged: (newValue) {
                  setState(() {
                    selectedCoupon = newValue!;
                    print('value: $selectedCoupon');
                  });
                },
                items: couponList.map((value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text(
                      value,
                      style: CustomStyle.textStyle,
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          const SizedBox(height: Dimensions.heightSize),
          selectedCoupon == 'I have a coupon'
              ? TextFormField(
                  style: CustomStyle.textStyle,
                  controller: couponController,
                  keyboardType: TextInputType.text,

                  decoration: InputDecoration(
                    hintText: 'OFFER10',
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10.0),
                    labelStyle: CustomStyle.textStyle,
                    filled: true,
                    fillColor: CustomColor.accentColor,
                    hintStyle: CustomStyle.textStyle,
                    focusedBorder: CustomStyle.focusBorder,
                    enabledBorder: CustomStyle.focusErrorBorder,
                    focusedErrorBorder: CustomStyle.focusErrorBorder,
                    errorBorder: CustomStyle.focusErrorBorder,
                  ),
                )
              : Container(),
          const SizedBox(height: Dimensions.heightSize),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                Strings.subTotal,
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
              ),
              const Text(
                '\$205',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: Dimensions.heightSize),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                Strings.discountByCoupon,
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
              ),
              const Text(
                '\$10',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: Dimensions.heightSize),
          const Divider(
            color: Colors.grey,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                Strings.total,
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
              ),
              const Text(
                '\$195',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }

  nextButtonWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: Dimensions.marginSize, right: Dimensions.marginSize),
      child: GestureDetector(
        child: Container(
          height: 50.0,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              color: CustomColor.primaryColor,
              borderRadius:
                  BorderRadius.all(Radius.circular(Dimensions.radius))),
          child: Center(
            child: Text(
              Strings.next.toUpperCase(),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: Dimensions.largeTextSize,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const UserInvoiceScreen()));
        },
      ),
    );
  }
}
