.PHONY: generate-chains-auth
generate-chains-auth:
	protoc \
	  -I proto \
	  proto/chains-auth/chains-auth.proto \
	  --go_out=paths=source_relative:gen/go \
	  --go_opt=paths=source_relative \
	  --go-grpc_out=paths=source_relative:gen/go \
	  --go-grpc_opt=paths=source_relative
