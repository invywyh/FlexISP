#ifndef _IMAGE_H_
#define _IMAGE_H_

class Image
{
public:
  Image(int width, int height, int channels = 1);
  Image(const char* filename);
  ~Image();
  unsigned int& operator()(int x, int y, int c = 0);
  void save(const char* filename);

  inline int width() { return mWidth; }
  inline int height() { return mHeight; }
  inline int channels() { return mChannels; }

private:
  // TODO: add datatype

  int mWidth;
  int mHeight;
  int mChannels;
  unsigned int* mData;

};


#endif

