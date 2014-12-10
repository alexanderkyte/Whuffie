all: test

test: WhuffieTest.exe
	mono WhuffieTest.exe

WhuffieTest.exe: Whuffie.cs WhuffieTest.cs
	dmcs -out:WhuffieTest.exe *.cs

clean: *.exe
	rm *.exe
