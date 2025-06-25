.PHONY: generate-auth
generate-auth:
	protoc \
	  -I proto \
	  proto/auth/auth.proto \
	  --go_out=paths=source_relative:gen/go \
	  --go_opt=paths=source_relative \
	  --go-grpc_out=paths=source_relative:gen/go \
	  --go-grpc_opt=paths=source_relative
