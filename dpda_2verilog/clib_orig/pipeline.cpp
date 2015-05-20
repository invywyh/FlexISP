#include <stdio.h>
#include <stdlib.h>
#include "image.h"
void simp(Image& in, Image& out)
{
  for(int y = 0; y < in.height(); y++){
    for(int x = 0; x < in.width(); x++){
      uint p_p0_2_2 = in(x+1, y+1, 0);
      uint p_p0_2_1 = in(x+1, y+0, 0);
      uint p_p0_2_0 = in(x+1, y+-1, 0);
      uint p_p0_1_2 = in(x+0, y+1, 0);
      uint p_p0_1_1 = in(x+0, y+0, 0);
      uint p_p0_1_0 = in(x+0, y+-1, 0);
      uint p_p0_0_2 = in(x+-1, y+1, 0);
      uint p_p0_0_1 = in(x+-1, y+0, 0);
      uint p_p0_0_0 = in(x+-1, y+-1, 0);
      
      unsigned int pixel_out_0 = p_p0_2_2 + p_p0_2_1 + p_p0_2_0 + p_p0_1_2 + p_p0_1_1 + p_p0_1_0 + p_p0_0_2 + p_p0_0_1 + p_p0_0_0;
      out(x,y,0) = pixel_out_0;
    }
  }
} // END simp


int main(int argc, char* argv[])
{
  Image pixel_in(argv[1]);
  int width = pixel_in.width();
  int height = pixel_in.height();
  int channels = pixel_in.channels();
  
  Image pixel_out(width, height, channels);
  simp(pixel_in, pixel_out);
  pixel_out.save("result.jjm");
  return(0);
}
