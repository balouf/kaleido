LILY_SRC := $(wildcard lilypond/*.ly)
UT_TARGET := $(foreach var,$(LILY_SRC),$(var:lilypond/%.ly=Ut/%.pdf))

all: $(UT_TARGET)

$(UT_TARGET): Ut/%.pdf: lilypond/%.ly
	@echo ===== $^ =====
	/usr/bin/lilypond -dno-point-and-click $^
	mv $(^:lilypond/%.ly=%.pdf) $(^:lilypond/%.ly=Ut/%.pdf)
	mv $(^:lilypond/%.ly=%--Bb.pdf) $(^:lilypond/%.ly=Bb/%.pdf)
	mv $(^:lilypond/%.ly=%--Eb.pdf) $(^:lilypond/%.ly=Eb/%.pdf)
	mv $(^:lilypond/%.ly=%--F.pdf) $(^:lilypond/%.ly=F/%.pdf)
	mv $(^:lilypond/%.ly=%.midi) $(^:lilypond/%.ly=midi/%.mid)
