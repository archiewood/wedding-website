require 'fastimage'

module ImageSizeFilter
  def image_size(source, dimension = nil)
    # Get the image dimensions, throw an error on failure
    # NOTE: You may want to sanitize the input string provided here
    # see: https://github.com/sdsykes/fastimage#security
    size = FastImage.size(source, raise_on_failure: true)

    # Return the requested dimension, or both dimensions if nothing was specified
    return size[0] if dimension == 'w'
    return size[1] if dimension == 'h'
    return size unless dimension

    # Fail if the requested dimension is invalid
    raise 'Invalid image size dimension requested: ' + dimension
  end
end

Liquid::Template.register_filter(ImageSizeFilter)