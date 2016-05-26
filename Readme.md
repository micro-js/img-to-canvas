
# img-to-canvas

[![Build status][travis-image]][travis-url]
[![Git tag][git-image]][git-url]
[![NPM version][npm-image]][npm-url]
[![Code style][standard-image]][standard-url]

Convert an img tag into a canvas tag, optionally with clipped dimensions (works only in browser).

## Installation

    $ npm install @f/img-to-canvas

## Usage

```javascript
var toBlob = require('@f/dataurl-to-blob')
var toCanvas = require('@f/img-to-canvas')

function cropImage (img, x, y, width, height) {
  return toBlob(toCanvas(img, x, y, width, height).toDataURL('image/png'))
}
```

Returns a canvas element containing the cropped image.

## API

### imgToCanvas(arg)

* `img` an `<img>` element
* `x` the distance along the x axis to begin cropping
* `y` the distance along the y axis to begin cropping
* `width` the width of the section you want to crop
* `height` the height of the section you want to crop
* `scaleWidth` scale the final image up/down to this width (optional - defaults to `width`)
* `scaleHeight` scale the final image up/down to this height (optional - defaults to `height`)

**Returns:** A canvas element containing the image at the specified dimensions.

## License

MIT

[travis-image]: https://img.shields.io/travis/micro-js/img-to-canvas.svg?style=flat-square
[travis-url]: https://travis-ci.org/micro-js/img-to-canvas
[git-image]: https://img.shields.io/github/tag/micro-js/img-to-canvas.svg?style=flat-square
[git-url]: https://github.com/micro-js/img-to-canvas
[standard-image]: https://img.shields.io/badge/code%20style-standard-brightgreen.svg?style=flat-square
[standard-url]: https://github.com/feross/standard
[npm-image]: https://img.shields.io/npm/v/@f/img-to-canvas.svg?style=flat-square
[npm-url]: https://npmjs.org/package/@f/img-to-canvas
