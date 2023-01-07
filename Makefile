hello.o: hello.s
	gcc -c $< -o $@

hello: hello.o link.ld
	ld $< -o $@ -T link.ld

clean:
	rm -f *.o hello

.PHONY: clean
