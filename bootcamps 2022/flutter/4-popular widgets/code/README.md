# Flutter Session 4


## NestedScrollView vs CustomScrollView

- per docs, NestedScrollView is generally used with a TabBarView while customScrollView is used for all scrollable screens in flutter, what I mean TabBarView is when u want to provide different tabs to ur flutter app and navigate to each one by clicking on items provided in root screen.

## Expanded vs Flexible
A flexible widget takes only the the space needed by it's child while expanded widget takes all the available space, although u can change property of flexible to make it function like an expanded widget.

## Steps into creating a TabBarView
- Provide a tab controller.
- Provide different tabs as a child of TabBar(which is placed in the desired position of screen).
- Provide a TabBarView and give it ur different tabs design.

## LayoutBuilder vs MediaQuery.of(context).size.height (or width)
- Layout builder takes only the available space and put it to use, while mediaquery provides all the available height and width into the device screen including, for example the status bar height(bar li fiha icons t3 wifi etc f top ).

## OrientationBuilder vs MediaQuery.of(context).orientation
-Orientation builder gives u the orientation of parent widget while mediaquery gives u orientation of device being used:
for example if Orientation builder has as parent widget a container in which width>height then it returns : Orientation.landscape , else it returns portrait
while MediaQuery returns the actual orientation of the device.

#### CustomScrollView
- Always use slivers as children, u can't provide non sliver widgets as Container,padding etc..
## Wrap Widget:
- When u provide different widgets , when it overflows the width of screen, it returns automatically to a new line and starts the new widget provided
## Stack Widget:
- Used to put a widget on top of another widget

## MediaQuery.padding vs MediaQuery.viewPadding
- these two fields are used to give u the space taken by things that are out of ur widget tree, for example the status bar, padding.top or viewPadding.top gives u the height of the status bar,
- the only difference between viewPadding and padding is that padding becomes 0 when a keyboard appears on screen while viewPadding keeps it's original one.
