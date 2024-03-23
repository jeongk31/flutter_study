# Flutter Widgets

- **Types**:
  - `StatelessWidget`: Immutable, does not change state.
  - `StatefulWidget`: Maintains state that might change over time.

- **Widget Tree**: Hierarchical organization of widgets. Root widget at the top.

- **Important Widgets**:
  - `MaterialApp`: Wrapper for material design apps.
  - `CupertinoApp`: Wrapper for iOS-style apps.
  - `Container`: Versatile layout widget.
  - `Row`, `Column`: For linear layouts (horizontal and vertical).
  - `Stack`: For overlaying widgets.
  - `Text`: To display text.

- **Example Code**:

  ```dart
  // StatelessWidget example
  class MyStatelessWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Text('Hello, World!');
    }
  }

  // StatefulWidget example
  class MyStatefulWidget extends StatefulWidget {
    @override
    _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
  }

  class _MyStatefulWidgetState extends State<MyStatefulWidget> {
    String _text = 'Hello, World!';

    void _updateText() {
      setState(() {
        _text = 'Hello, Flutter!';
      });
    }

    @override
    Widget build(BuildContext context) {
      return Column(
        children: <Widget>[
          Text(_text),
          ElevatedButton(
            onPressed: _updateText,
            child: Text('Update Text'),
          ),
        ],
      );
    }
  }
