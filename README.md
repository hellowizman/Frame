<p align="center" >
	<img src="/Images/logo_2048_2048.png" alt="Frame" title="Frame" width="300px" height="300px">
</p>

<p align="center">
	<a href="https://swift.org">
		<img src="https://img.shields.io/badge/Swift-4.0-orange.svg?style=flat">
	</a>
	<a href="https://cocoapods.org">
		<img src="https://img.shields.io/cocoapods/v/Frame.svg">
	</a>
	<a href="https://cocoapods.org">
		<img src="https://img.shields.io/cocoapods/dt/Frame.svg">
	</a>
	<a href="https://tldrlegal.com/license/mit-license">
		<img src="https://img.shields.io/badge/License-MIT-blue.svg?style=flat">
	</a>
</p>

# Frame

Simplifies work with layout in iOS. Provides set of tools for managing view's position, size and many other things.

## How To Get Started

- Copy content of `Source` folder to your project.

or

- Use `Frame` cocoapod

## Requirements

* iOS 9 and later
* Xcode 9 and later
* Swift 4

## Usage

### String

Height of string with attributes:

```swift
let attributes: [NSAttributedStringKey : Any] = [
	.font: UIFont.systemFont(ofSize: 36.0, weight: .thin),
    .kern: 0.5
]

let height = "Some text".frm.height(forWidth: 200, andAttributes: attributes)
```

Width of string with attributes:

```swift
let width = "Some text".frm.width(forHeight: 200, andAttributes: attributes)
```

Size that fits:

```swift
let constraintSize = CGSize(width: 200, height: CGFloat.greatestFiniteMagnitude)
let sizeThatFits = "Some text".frm.sizeThatFits(constraintSize, withAttributes: attributes)
```

### NSAttributedString

Height of attributed string:

```swift
let attributes: [NSAttributedStringKey : Any] = [
	.font: UIFont.systemFont(ofSize: 36.0, weight: .thin),
	.kern: 0.5
]

let attributedString = NSAttributedString(string: "Some text", attributes: attributes)
let height = attributedString.frm.height(forWidth: 200)
```

Width of attributed string:

```swift
let width = attributedString.frm.width(forHeight: 200)
```

Size that fits:

```swift
let constraintSize = CGSize(width: 200, height: CGFloat.greatestFiniteMagnitude)
let sizeThatFits = attributedString.frm.sizeThatFits(constraintSize)
```

### UILabel

Label's height to fit attributed text:

```swift
let attributes: [NSAttributedStringKey : Any] = [
	.font: UIFont.systemFont(ofSize: 36.0, weight: .thin),
	.kern: 0.5
]

let attributedString = NSAttributedString(string: "Some text", attributes: attributes)
let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 0))
let height = label.frm.height(forAttributedText: attributedString)
```

### CGRect

Inset:

```swift
let sourceFrame = CGRect(x: 20, y: 20, width: 500, height: 350)
let resultFrame = sourceFrame.frm.inset(top: 10, left: 10, bottom: 10, right: 10) // (30, 30, 480, 330)
```

Offset:

```swift
let sourceFrame = CGRect(x: 20, y: 20, width: 500, height: 350)
let resultFrame = sourceFrame.frm.offset(top: 10, left: 10, bottom: 10, right: 10) // (10, 10, 520, 370)
```

## License

`Frame` is available under the MIT license. See the [LICENSE](./LICENSE) file for more info.
