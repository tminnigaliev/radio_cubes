# explicit wildcard expansion suppresses errors when no files are found
include $(wildcard *.deps)

STLDIR = stl
DEPDIR = dep

_TARGETS = cap_1x1.stl \
           radio_cubes_1x1.stl 

TARGETS = $(patsubst %,$(STLDIR)/%,$(_TARGETS))
PNGS = $(TARGETS:.stl=.png)

all: $(TARGETS) $(PNGS)

clean:
	rm ./deps/*.deps
	rm ./stls/*.stl
	rm ./stls/*.png

./stls/%.stl: ./scad/%.scad
	openscad -m make -o $@ -d deps/$(notdir $(addsuffix .deps, $(basename $@))) $<

./stls/%.png: ./scad/%.scad
	openscad --imgsize=1024,768 --projection=ortho --autocenter -o $@ -d deps/$(notdir $(addsuffix .deps, $(basename $@))) $<
#	openscad --render -o $@ -d deps/$(notdir $@.deps) $<
#	openscad --render -o $@ -d deps/$(notdir $@.deps) $<
#	openscad --render -o $@ $(basename $@).stl