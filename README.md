# Xcode File Templates

Included are some Xcode file templates for quickly creating common Swift components.

## Command Service Coordinator

This creates 3 files and is built for UIKit-based apps and app components.

- `Service`: An object for connecting various persistence, networking, and logic components with the goal of modifying and maintaining state. No other object should be allowed to modify the state.
- `Coordinator`: An object for initializing views and handling navigation.
- `Command`: An object that represents actions to take, such as in response to user input.

## ViewModel ViewController

This creates 3 files and is built for UIKit-based apps and app components.

- `ViewController`: A `UIViewController` subclass with an associated `ViewModel` object and a template for binding input and output to the `ViewModel`.
- `ViewModel`: An object specific to a `ViewController` that is responsible for transforming data structures into scalar values to be consumed by the `ViewController`, and for transforming user input into `Command` objects to be sent on the command `Publisher`.
