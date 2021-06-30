# message_parser

A flutter library used to parse message request and response for both NIBBS server and Kimono Server

## Installation

To install the plugin, add the line of code below under the dependencies section of your `pubspec.yaml` file.

```yaml
dependencies:
  message_parser:
    git: https://github.com/Octacore19/message_parser.git
```

## Usage

 - Initialize the package (creating an object instance of `IParser`).
    ```flutter
    final IParser _parser = Parser();
    ```
 - Called its methods asynchronously. `e.g`
    ```flutter
    Future<void> _parseNibssResponse(Uint8List response) async {
        return _parser.parseNIBBSResponse(response);
    }
    ```
