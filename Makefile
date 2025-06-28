.PHONY: generate-sso
generate-sso:
	protoc \
	  -I proto \
	  proto/sso/sso.proto \
	  --go_out=paths=source_relative:gen/go \
	  --go_opt=paths=source_relative \
	  --go-grpc_out=paths=source_relative:gen/go \
	  --go-grpc_opt=paths=source_relative

.PHONY: generate-elector'
generate-elector:
	protoc \
	  -I proto \
	  proto/elector/elector.proto \
	  --go_out=paths=source_relative:gen/go \
	  --go_opt=paths=source_relative \
	  --go-grpc_out=paths=source_relative:gen/go \
	  --go-grpc_opt=paths=source_relative