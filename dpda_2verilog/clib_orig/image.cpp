#include <stdio.h>
#include "image.h"

/**
 * Creates an empty image of the specified width and height.
 */
Image::Image(int width, int height, int channels)
{
  // TODO: error checking

  mWidth = width;
  mHeight = height;
  mChannels = channels;
  mData = new unsigned int[mWidth * mHeight * mChannels];
}

/**
 * Loads an image in JJM format.
 * The JJM image format is:
 * jjm20\n
 * height width channels
 */
Image::Image(const char* filename)
{
  // TODO: setup default safe values

  FILE* f = fopen(filename, "r");

  // Read the header
  char dType[6]; // Long enough for 'float\0'
  int intWidth, fracWidth;

  int ok = fscanf(f, "jjm20\n%d %d %d\n", &mHeight, &mWidth, &mChannels); 
  ok += fscanf(f, "%[ufix]_%d_%d\n", dType, &intWidth, &fracWidth);

  if(ok != 6){
    printf("Failed to parse image header - check that it's a JJM.\n");
    fclose(f);
    return;
  }
  
  if(intWidth != 32 || fracWidth != 0){
    printf("That image format isn't handled yet\n");
    fclose(f);
    return;
  }

  // Allocate the memory and copy the data
  mData = new unsigned int[mWidth * mHeight * mChannels];
  int elemsRead = fread(mData, sizeof(unsigned int), mWidth * mHeight * mChannels, f);

  // Check that we've read the whole file
  if(elemsRead != mWidth * mHeight * mChannels){
    printf("Failed to read the whole file!  Results may be bogus.\n");
  }

  printf("Successfully loaded %d x %d x %x image\n", mWidth, mHeight, mChannels);
  fclose(f);
}

Image::~Image()
{
  delete mData;
  mData = 0; // Protect against double free
}

unsigned int& Image::operator()(int x, int y, int c)
{
  if(x >= 0 && x < mWidth &&
     y >= 0 && y < mHeight &&
     c >= 0 && c < mChannels){
    // Data is stored with channels interlaced
    return(mData[y*mWidth*mChannels + x*mChannels + c]);
  }
  else{
    // TODO: This is seriously wrong
    // Can we have a member const int and return a reference to that?
    unsigned int zero = 0;
    unsigned int &zref = zero;
    return(zref);
  }
}

void Image::save(const char* filename)
{
  FILE* f = fopen(filename, "w");
  fprintf(f, "jjm20\n");
  fprintf(f, "%d %d %d\n", mHeight, mWidth, mChannels);
  fprintf(f, "fix_32_0\n");
  fwrite(mData, sizeof(unsigned int), mWidth * mHeight * mChannels, f);
  fclose(f);
}

