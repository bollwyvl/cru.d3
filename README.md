# cru.d3
A CoffeeScript-driven exploration of data-deriving-documents.

## Example

    d3 = require "cru.d3"
    
    d3.mand ".versioned"
      x = @get "x"
      y = @get "y"
      px = "%dpx"
      @attr
        left: x.fmt px
        top: y.fmt px
