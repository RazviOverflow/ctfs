/* config.h.  Generated from config.h.in by configure.  */
#ifndef __config_h__
#define __config_h__

/* Define to empty if the keyword does not work.  */
/* #undef const */

/* Define as __inline if that's what the C compiler calls it.  */
/* #undef inline */

/* Define to `long' if <sys/types.h> doesn't define.  */
/* #undef off_t */

/* Define to `unsigned' if <sys/types.h> doesn't define.  */
/* #undef size_t */

#define SIZEOF_SIGNED_CHAR 1
#define SIZEOF_SIGNED_SHORT 2
#define SIZEOF_SIGNED 4
#define SIZEOF_SIGNED_LONG_LONG 8
#define SIZEOF_VOIDP 8

/* Define if you have the ANSI C header files.  */
#define STDC_HEADERS 1

/* Define if your <sys/time.h> declares struct tm.  */
/* #undef TM_IN_SYS_TIME */

/* Define if you have the time() function */
#define HAVE_TIME 1

/* Define if you have the time.h header file */
#define HAVE_TIME_H 1

/* Define if you have the sys/time.h header file */
#define HAVE_SYS_TIME_H 1

/* Define if you have the sys/resource.h header file */
#define HAVE_SYS_RESOURCE_H 1

/* Define if you have the malloc.h header file */
/* #undef HAVE_MALLOC_H */

/* Define if you have the getrusage function */
#define HAVE_GETRUSAGE 1

/* Define if you have the mallinfo function */
#define HAVE_MALLINFO 1


/* Define if you have the unistd.h header file */
#define HAVE_UNISTD_H 1

/* for gocr */
#define HAVE_WCHAR_H 1
#define HAVE_WCSCHR 1
#define HAVE_WCSDUP 1

/* Define if you have the open64 function.  */
#define HAVE_OPEN64 1

/* Define if you have the lrand48 function.  */
#define HAVE_LRAND48 1

/* Define if you have the popen function.  */
#define HAVE_POPEN 1

/* Define if you have the bcopy function.  */
#define HAVE_BCOPY 1

/* Define if you have the bzero function.  */
#define HAVE_BZERO 1

/* Define if you have the rand function.  */
#define HAVE_RAND 1

/* Define if you have the srand function.  */
#define HAVE_SRAND 1

/* Define if you have the srand48 function.  */
#define HAVE_SRAND48 1

/* Define if you have the calloc function.  */
#define HAVE_CALLOC 1

/* Define if you have the stat function.  */
#define HAVE_STAT 1

/* Define if you have the mmap function.  */
#define HAVE_MMAP 1

/* Define if you have the <dirent.h> header file.  */
#define HAVE_DIRENT_H 1

/* Define if you have the <assert.h> header file.  */
#define HAVE_ASSERT_H 1

/* Define if you have the <signal.h> header file.  */
#define HAVE_SIGNAL_H 1

/* Define if you have the <pthread.h> header file.  */
#define HAVE_PTHREAD_H 1

/* Define if you have the <jpeglib.h> header file.  */
/* #undef HAVE_JPEGLIB_H */

/* Define if you have the <ndir.h> header file.  */
/* #undef HAVE_NDIR_H */

/* Define if you have the <sys/dir.h> header file.  */
#define HAVE_SYS_DIR_H 1

/* Define if you have the <sys/ndir.h> header file.  */
/* #undef HAVE_SYS_NDIR_H */

/* Define if you have the <sys/io.h> header file.  */
/* #undef HAVE_IO_H */

/* Define if you have the <sys/bsdtypes.h> header file.  */
/* #undef HAVE_SYS_BSDTYPES_H */

/* Define if you have the <sys/stat.h> header file.  */
#define HAVE_SYS_STAT_H 1

/* Define if you have the <sys/mman.h> header file.  */
#define HAVE_SYS_MMAN_H 1

/* Define if you have the <sys/types.h> header file.  */
#define HAVE_SYS_TYPES_H 1

/* Define if you have the <t1lib.h> header file.  */
/* #undef HAVE_T1LIB_H */

/* Define if you have the <zlib.h> header file.  */
#define HAVE_ZLIB_H 1

/* Define if you have the <zzip/lib.h> header file.  */
/* #undef HAVE_ZZIP_LIB_H */

/* Define if you have the <pdflib.h> header file.  */
/* #undef HAVE_PDFLIB_H */

/* Define if you have the <avifile/version.h> header file.  */
/* #undef HAVE_AVIFILE_VERSION_H */

/* Define if you have the <freetype/ft2build.h> header file.  */
/* #undef HAVE_FT2BUILD_H */

/* Define if you have the <version.h> header file.  */
/* #undef HAVE_VERSION_H */

/* Define if you have the OpenGL header files */
/* #undef HAVE_GL_GL_H */
/* #undef HAVE_GL_GLUT_H */

/* Define if you have the OpenGL libraries */
/* #undef HAVE_LIBGL */
/* #undef HAVE_LIBGLU */
/* #undef HAVE_LIBGLUT */

/* Define if OpenGL seems to work */
/* #undef HAVE_OPENGL */

/* Define if you use poppler */
/* #undef HAVE_POPPLER */

/* Define to 1 if you have the `poppler' library (-lpoppler). */
/* #undef HAVE_LIBPOPPLER */

/* Define to 1 if you have the <OutputDev.h> header file. */
/* #undef HAVE_OUTPUTDEV_H */

/* Define if you have the jpeg library (-ljpeg).  */
/* #undef HAVE_LIBJPEG */

/* Define if you have the pdf library (-lpdf).  */
/* #undef HAVE_LIBPDF */

/* Define if you have the zzip library (-lzzip). */
/* #undef HAVE_LIBZZIP */

/* Define if you have the m library (-lm).  */
#define HAVE_LIBM 1

/* Define if you have the t1 library (-lt1).  */
/* #undef HAVE_LIBT1 */

/* Define if you have the z library (-lz).  */
#define HAVE_LIBZ 1

/* Name of package */
#define PACKAGE "swftools"

/* Version number of package */
#define VERSION "0.9.2"

/* Typedefs */
#define boolean int

/* use gzip/uncompress */
#define USE_GZIP 1

/* let ttf2pt1 use libfreetype */
/* #undef USE_FREETYPE */

/* have/use freetype library */
/* #undef HAVE_FREETYPE */
/* #undef HAVE_FREETYPE_FREETYPE_H */

/* have/use freetype library */
/* #undef HAVE_AVIFILE */

/* #undef HAVE_FONTCONFIG_H */
/* #undef HAVE_FONTCONFIG */

#define HAVE_FFTW3_H 1

/* #undef HAVE_FFTW3 */

/* have/use internal l.a.m.e. mp3 library */
/* #undef HAVE_LAME */

/* whether python-imaging was found */
/* #undef HAVE_PYTHON_IMAGING */

/* system() can handle command substitution */
#define SYSTEM_BACKTICKS 1

/* Define to 1 if this machine has network byte order*/
/* #undef WORDS_BIGENDIAN */

/* #undef LOWERCASE_UPPERCASE */

/* Define to 0 on non-windows systems */
#define O_BINARY 0

#ifdef HAVE_ZLIB_H
#ifdef HAVE_LIBZ
#define HAVE_ZLIB
#endif
#endif

#ifdef HAVE_JPEGLIB_H
#ifdef HAVE_LIBJPEG
#define HAVE_JPEGLIB
#endif
#endif

#ifdef HAVE_FT2BUILD_H
#define HAVE_FREETYPE_H 1
#endif

/* #ifdef HAVE_T1LIB_H */
/* #ifdef HAVE_LIBT1 */
/* #define HAVE_T1LIB */
/* #endif */
/* #endif */

#ifdef HAVE_GL_GL_H
#ifdef HAVE_GL_GLUT_H
#ifdef HAVE_OPENGL
#define USE_OPENGL
#endif
#endif
#endif

#ifdef HAVE_POPPLER
#define GString GooString
#define GHash GooHash
#endif

#ifdef HAVE_ZZIP_LIB_H
#ifdef HAVE_LIBZZIP
#define HAVE_ZZIP 1
#endif
#endif

//#ifdef HAVE_BUILTIN_EXPECT
#if defined(__GNUC__) && (__GNUC__ > 2) && defined(__OPTIMIZE__)
# define likely(x)      __builtin_expect((x), 1)
# define unlikely(x)    __builtin_expect((x), 0)
#else
# define likely(x)      (x)
# define unlikely(x)    (x)
#endif

#endif
