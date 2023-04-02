# explicit wildcard expansion suppresses errors when no files are found
include $(wildcard *.deps)

SCAD_DIR = ./scad
STL_DIR = ./stl
DEP_DIR = ./dep

##_TARGETS = cap_1x1.stl \
#            radio_cubes_1x1.stl 

SRC_FILES   =   $(wildcard $(SCAD_DIR)/*.scad)

TARGETS := $(patsubst $(SCAD_DIR)/%.scad,$(STL_DIR)/%.stl,$(SRC_FILES))

# TARGETS = $(patsubst %,$(STL_DIR)/%,$(_TARGETS))
$(info $$TARGETS is [${TARGETS}])

all: $(TARGETS)

clean:
	rm ./stl/*.stl

stl/%.stl: scad/%.scad
	openscad.exe -o $@ $<
#	openscad.exe -m make -o $@ -d $@.deps $<

#./stls/%.png: ./scad/%.scad
#	openscad --imgsize=1024,768 --projection=ortho --autocenter -o $@ -d deps/$(notdir $(addsuffix .deps, $(basename $@))) $<
#	openscad --render -o $@ -d deps/$(notdir $@.deps) $<
#	openscad --render -o $@ -d deps/$(notdir $@.deps) $<
#	openscad --render -o $@ $(basename $@).stl
