3d_objects = schachtel
objects = $(3d_objects:=.scad_2d) schachtel_groove schachtel_einlage

all: schachtel_output

clean:
	rm -f *.dxf
	rm -f *.scad_2d.scad

schachtel_output: $(objects:=.dxf)
	rm -f schachtel_output.dxf
	cat $(objects:=.dxf) > schachtel_output.dxf

$(objects:=.dxf):  %.dxf : %.scad 
	openscad -o ./$@ ./$< 

$(3d_objects:=.scad_2d.scad): %.scad_2d.scad : %.scad
	bash ./convert-2d.sh $<
