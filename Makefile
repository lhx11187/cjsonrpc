all: client server

client: client.c jsonrpc.c cjson.c
	gcc $^ -o $@ -lm -lev
	
server: server.c jsonrpc.c cjson.c
	gcc $^ -o $@ -lm -lev
	
	
.PHONY:clean
clean:
	@rm -rf client server
	
