top_builddir = ..
srcdir = .
top_srcdir = ..
include ../Makefile.common

install_programs = wav2swf$(E) png2swf$(E) swfcombine$(E) swfstrings$(E) swfextract$(E) swfdump$(E) swfc$(E)   swfbbox$(E) font2swf$(E) swfrender$(E) as3compile$(E)  
programs = $(install_programs) swfbytes$(E) ttftool$(E)

all: $(programs)

wav2swf.$(O): wav2swf.c ../lib/wav.h
	$(C) wav2swf.c -o $@
png2swf.$(O): png2swf.c
	$(C) png2swf.c -o $@
pdf2swf.$(O): pdf2swf.c
	$(C) pdf2swf.c -o $@
pdf2pdf.$(O): pdf2pdf.c
	$(C) pdf2pdf.c -o $@
gfx2gfx.$(O): gfx2gfx.c
	$(C) gfx2gfx.c -o $@
gif2swf.$(O): gif2swf.c
	$(C) gif2swf.c -o $@
swfcombine.$(O): swfcombine.c
	$(C) swfcombine.c -o $@
swfdump.$(O): swfdump.c
	$(C) swfdump.c -o $@
swfextract.$(O): swfextract.c
	$(C) swfextract.c -o $@
swfstrings.$(O): swfstrings.c
	$(C) swfstrings.c -o $@
swfbbox.$(O): swfbbox.c
	$(C) swfbbox.c -o $@
swf2png.$(O): swf2png.c
	$(C) swf2png.c -o $@
jpeg2swf.$(O): jpeg2swf.c
	$(C) jpeg2swf.c -o $@
swfrender.$(O): swfrender.c
	$(C) swfrender.c -o $@
swfbytes.$(O): swfbytes.c
	$(C) swfbytes.c -o $@
font2swf.$(O): font2swf.c
	$(C) font2swf.c -o $@
ttftool.$(O): ttftool.c
	$(C) ttftool.c -o $@
as3compile.$(O): as3compile.c
	$(C) as3compile.c -o $@
swfc.$(O): swfc.c parser.h ../lib/q.h
	$(C) swfc.c -o $@
swfc-feedback.$(O): swfc-feedback.c swfc-feedback.h
	$(C) swfc-feedback.c -o $@
swfc-history.$(O): swfc-history.c swfc-history.h swfc-interpolation.h ../lib/q.h
	$(C) swfc-history.c -o $@
swfc-interpolation.$(O): swfc-interpolation.c swfc-interpolation.h ../lib/q.h
	$(C) swfc-interpolation.c -o $@
parser.$(O): parser.yy.c parser.h ../lib/q.h
	$(C) parser.yy.c -o $@

../lib/librfxswf$(A): ../lib/modules/swfrender.c ../lib/modules/swfshape.c ../lib/modules/swftext.c ../lib/modules/swffont.c ../lib/modules/swfbits.c ../lib/rfxswf.c ../lib/devices/swf.c ../lib/modules/swfalignzones.c
	cd ../lib;$(MAKE) librfxswf$(A);cd -

../lib/libgfxpdf$(A): ../lib/pdf/VectorGraphicOutputDev.cc
	cd ../lib;$(MAKE) libgfxpdf$(A);cd -

../lib/libgfx$(A): ../lib/devices/*.c ../lib/gfxdevice.h ../lib/gfxtools.c ../lib/gfxfont.c
	cd ../lib;$(MAKE) libgfx$(A);cd -

../lib/libgfxswf$(A): ../lib/devices/swf.c ../lib/readers/swf.c
	cd ../lib;$(MAKE) libgfxswf$(A);cd -

# TODO: include the following rule only if lex is available
parser.yy.c: parser.lex
	flex -B -s -oparser.yy.c parser.lex

wav2swf$(E): wav2swf.$(O) ../lib/librfxswf$(A) ../lib/libbase$(A)
	$(L) wav2swf.$(O) -o $@ ../lib/librfxswf$(A) ../lib/libbase$(A) $(LIBS)
	$(STRIP) $@
png2swf$(E): png2swf.$(O) ../lib/librfxswf$(A) ../lib/libbase$(A)
	$(L) png2swf.$(O) -o $@ ../lib/librfxswf$(A) ../lib/libbase$(A) $(LIBS)
	$(STRIP) $@
gif2swf$(E): gif2swf.$(O) ../lib/librfxswf$(A) ../lib/libbase$(A)
	$(L) gif2swf.$(O) -o $@ ../lib/librfxswf$(A) ../lib/libbase$(A) $(LIBS)
	$(STRIP) $@
swfcombine$(E): swfcombine.$(O) ../lib/librfxswf$(A) ../lib/libbase$(A)
	$(L) swfcombine.$(O) -o $@ ../lib/librfxswf$(A) ../lib/libbase$(A) $(LIBS)
	$(STRIP) $@
swfdump$(E): swfdump.$(O) ../lib/librfxswf$(A) ../lib/libbase$(A)
	$(L) swfdump.$(O) -o $@ ../lib/librfxswf$(A) ../lib/libbase$(A) $(LIBS)
	$(STRIP) $@
swfbytes$(E): swfbytes.$(O) ../lib/librfxswf$(A) ../lib/libbase$(A)
	$(L) swfbytes.$(O) -o $@ ../lib/librfxswf$(A) ../lib/libbase$(A) $(LIBS)
	$(STRIP) $@
swf2png$(E): swf2png.$(O) ../lib/librfxswf$(A) ../lib/libbase$(A)
	$(L) swf2png.$(O) -o $@ ../lib/librfxswf$(A) ../lib/libbase$(A) $(LIBS)
	$(STRIP) $@
swfextract$(E): swfextract.$(O) ../lib/librfxswf$(A) ../lib/libbase$(A)
	$(L) swfextract.$(O) -o $@ ../lib/librfxswf$(A) ../lib/libbase$(A) $(LIBS)
	$(STRIP) $@
swfstrings$(E): swfstrings.$(O) ../lib/librfxswf$(A) ../lib/libbase$(A)
	$(L) swfstrings.$(O) -o $@ ../lib/librfxswf$(A) ../lib/libbase$(A) $(LIBS)
	$(STRIP) $@
swfbbox$(E): swfbbox.$(O) ../lib/librfxswf$(A) ../lib/libbase$(A)
	$(L) swfbbox.$(O) -o $@ ../lib/librfxswf$(A) ../lib/libbase$(A) $(LIBS)
	$(STRIP) $@
font2swf$(E): font2swf.$(O) ../lib/librfxswf$(A) ../lib/libbase$(A)
	$(L) font2swf.$(O) -o $@ ../lib/librfxswf$(A) ../lib/libbase$(A) $(LIBS)
	$(STRIP) $@
ttftool$(E): ttftool.$(O) ../lib/librfxswf$(A) ../lib/libbase$(A)
	$(L) ttftool.$(O) -o $@ ../lib/librfxswf$(A) ../lib/libbase$(A) $(LIBS)
	$(STRIP) $@
as3compile$(E): as3compile.$(O) ../lib/librfxswf$(A) ../lib/libbase$(A)
	$(L) as3compile.$(O) -o $@ ../lib/librfxswf$(A) ../lib/libbase$(A) $(LIBS)
	$(STRIP) $@
jpeg2swf$(E): jpeg2swf.$(O) ../lib/librfxswf$(A) ../lib/libbase$(A)
	$(L) jpeg2swf.$(O) -o $@ ../lib/librfxswf$(A) ../lib/libbase$(A) $(LIBS)
	$(STRIP) $@
swfrender$(E): swfrender.$(O) ../lib/libgfxswf$(A) ../lib/librfxswf$(A) ../lib/libgfx$(A) ../lib/libbase$(A)
	$(L) swfrender.$(O) -o $@ ../lib/libgfxswf$(A) ../lib/librfxswf$(A) ../lib/libgfx$(A) ../lib/libbase$(A) $(LIBS) 
	$(STRIP) $@

PDF2SWF_OBJ=../lib/libgfxswf$(A) ../lib/librfxswf$(A) ../lib/libgfxpdf$(A) ../lib/libgfx$(A) ../lib/libbase$(A)
OCR_OBJ=../lib/libocr$(A)

pdf2swf$(E): pdf2swf.$(O) $(PDF2SWF_OBJ)
	$(LL) pdf2swf.$(O) -o $@ $(PDF2SWF_OBJ) $(LIBS) $(CXXLIBS)
	$(STRIP) $@
pdf2pdf$(E): pdf2pdf.$(O) $(PDF2SWF_OBJ)
	$(LL) pdf2pdf.$(O) -o $@ $(PDF2SWF_OBJ) $(LIBS) $(CXXLIBS)
	$(STRIP) $@
gfx2gfx$(E): gfx2gfx.$(O) $(OCR_OBJ) $(PDF2SWF_OBJ) 
	$(LL) gfx2gfx.$(O) -o $@ $(OCR_OBJ) $(PDF2SWF_OBJ) $(LIBS) $(CXXLIBS)
	$(STRIP) $@
swfc$(E): parser.$(O) swfc.$(O) swfc-feedback.$(O) swfc-history.$(O) swfc-interpolation.$(O) ../lib/librfxswf$(A) ../lib/libbase$(A) 
	$(L) parser.$(O) swfc.$(O) swfc-feedback.$(O) swfc-history.$(O) swfc-interpolation.$(O) -o $@ ../lib/librfxswf$(A) ../lib/libbase$(A) $(LIBS)
	$(STRIP) $@

install:
	$(mkinstalldirs) $(bindir)
	$(mkinstalldirs) $(man1dir)
	@for file in $(install_programs); do if test -f $$file;then $(INSTALL_BIN);$(INSTALL_MAN1);fi;done
	
uninstall:
	@for file in $(install_programs); do $(UNINSTALL_BIN);$(UNINSTALL_MAN1);done

clean: 
	rm -f *.o *.obj *.lo *.la *~ gmon.out
	rm -f as3compile gif2swf swfbbox swfbytes swfbytes swfdump pdf2swf wav2swf png2swf swfcombine swfextract swfstrings png2swf jpeg2swf swfc font2swf pdf2pdf gfx2gfx swfrender ttftool
	@rm -f as3compile.exe gif2swf.exe swfbytes.exe swfbytes.exe pdf2swf.exe swfbbox.exe swfdump.exe wav2swf.exe png2swf.exe swfcombine.exe swfextract.exe swfstrings.exe png2swf.exe jpeg2swf.exe swfc.exe font2swf.exe pdf2pdf.exe gfx2gfx.exe swfrender.exe ttftool.exe
	@rm -f as3compile$(E) gif2swf$(E) pdf2swf$(E) swfbytes$(E) swfbytes$(E) swfbbox$(E) swfdump$(E) wav2swf$(E) png2swf$(E) swfcombine$(E) swfextract$(E) swfstrings$(E) png2swf$(E) jpeg2swf$(E) swfc$(E) font2swf$(E) pdf2pdf$(E) gfx2gfx$(E) swfrender$(E) ttftool$(E)

doc:
	perl ../parsedoc.pl wav2swf.doc
	perl ../parsedoc.pl png2swf.doc
	perl ../parsedoc.pl gif2swf.doc
	perl ../parsedoc.pl swfbbox.doc
	perl ../parsedoc.pl font2swf.doc
	perl ../parsedoc.pl jpeg2swf.doc
	perl ../parsedoc.pl swfcombine.doc
	perl ../parsedoc.pl swfdump.doc
	perl ../parsedoc.pl swfc.doc
	perl ../parsedoc.pl as3compile.doc
	perl ../parsedoc.pl swfbytes.doc
	perl ../parsedoc.pl pdf2pdf.doc

.PHONY: clean doc 
