#lang scribble/rhombus/manual
@(import: "common.rhm" open)

@title{Brush}

@doc(
  class Brush(handle, private saved_stipple):
    constructor (~like: like :: Maybe(Brush) = #false,
                 ~color: color :: (String || Color) = "Black",
                 ~style: style :: Brush.Style = #'solid,
                 ~stipple: stipple :: Maybe(Bitmap) = #false)
){

 Creates a brush configuration.

 If @rhombus(like) is provided as a @rhombus(Brush, ~class), then @rhombus(like)
 provides default values for other arguments, instead of the normal defaults.

}

@doc(
  property (brush :: Brush).color :: Color
  property (brush :: Brush).style :: Brush.Style
  property (brush :: Brush).stipple :: Maybe(Bitmap)
){

 Properties to access brush components.

}

@doc(
  annot.macro 'Brush.Style'
){

 Satisfied by the following symbols:

@itemlist(
  @item{@rhombus(#'transparent)}  
  @item{@rhombus(#'solid)}
  @item{@rhombus(#'opaque)}
  @item{@rhombus(#'xor)}
  @item{@rhombus(#'hilite)}
  @item{@rhombus(#'panel)}
  @item{@rhombus(#'bdiagonal_hatch)}
  @item{@rhombus(#'crossdiag_hatch)}
  @item{@rhombus(#'fdiagonal_hatch)}
  @item{@rhombus(#'cross_hatch)}
  @item{@rhombus(#'horizontal_hatch)}
  @item{@rhombus(#'vertical_hatch)}
)

}


@doc(
  def Brush.none :: Brush
){

 A brush with style @rhombus(#'transparent).

}
