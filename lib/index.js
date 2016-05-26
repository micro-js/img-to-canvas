/**
 * Expose imgToCanvas
 */

module.exports = imgToCanvas

/**
 * imgToCanvas
 */

function imgToCanvas (img, x, y, width, height, scaleWidth, scaleHeight) {
  var canvas = document.createElement('canvas')

  canvas.width = scaleWidth = scaleWidth || width
  canvas.height = scaleHeight = scaleHeight || height
  canvas.getContext('2d').drawImage(img, x, y, width, height, 0, 0, scaleWidth, scaleHeight)

  return canvas
}
