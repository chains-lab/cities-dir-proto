.PHONY: generate-sso
generate-sso:
	protoc \
	  -I proto \
	  proto/sso/sso.proto \
	  --go_out=paths=source_relative:gen/go/sso \
	  --go_opt=paths=source_relative \
	  --go-grpc_out=paths=source_relative:gen/go/sso \
	  --go-grpc_opt=paths=source_relative
