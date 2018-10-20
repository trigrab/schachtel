3d_objects = schachtel
objects = $(3d_objects:=.scad_2d) schachtel_groove schachtel_inlay

all: $(objects:=.dxf)

clean:
	rm -f *.dxf
	rm -f *.scad_2d.scad


$(objects:=.dxf):  %.dxf : %.scad 
	openscad -o ./$@ ./$< 

$(3d_objects:=.scad_2d.scad): %.scad_2d.scad : %.scad
	bash ./convert-2d.sh $<
