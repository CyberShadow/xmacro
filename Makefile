VERSION=0.2

all: xmacroplay xmacrorec

xmacroplay: xmacroplay.cpp chartbl.h
	g++ -O2  -I/usr/X11R6/include -Wall -pedantic -DVERSION=$(VERSION) xmacroplay.cpp -o xmacroplay -L/usr/X11R6/lib -lXtst -lX11

xmacrorec: xmacrorec.cpp
	g++ -O2  -I/usr/X11R6/include -Wall -pedantic -DVERSION=$(VERSION) xmacrorec.cpp -o xmacrorec -L/usr/X11R6/lib -lXtst -lX11

clean:
	rm xmacrorec xmacroplay
