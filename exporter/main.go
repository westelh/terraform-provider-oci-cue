package main

import (
	"flag"
	"fmt"
	"log"
	"strings"

	"cuelang.org/go/cue/ast"
	"cuelang.org/go/cue/format"
	"github.com/westelh/terraform-provider-oci-cue/internal/globalvar"
	"github.com/westelh/tfprovider-cue/schema"
)

func main() {
	var service = flag.String("s", "", "The oci service name to generate the schema for.")
	var packageFlag = flag.String("p", "", "The package name for the generated cue schema.")
	var fileName = flag.String("f", "", "The file name for the generated cue schema.")
	flag.Parse()

	if *service == "" {
		log.Fatalf("Please provide the service name using the -s flag.")
		return
	}

	if *packageFlag == "" {
		log.Fatalf("Please provide the package name using the -p flag.")
		return
	}

	registered := RegisterService(*service)
	if !registered {
		log.Fatalf("Service %s is not supported.", *service)
		return
	}

	var resourceAttrs = []interface{}{}
	var resourceArgs = []interface{}{}
	var data = []interface{}{}
	for name, resource := range globalvar.OciResources {
		resourceAttrs = append(resourceAttrs, &ast.Field{
			Label: ast.NewIdent(strings.TrimPrefix(strings.TrimPrefix(name, strings.Join([]string{"oci", *service}, "_")), "_")),
			Value: schema.ResourceExpr(resource, schema.Option{DropReadOnly: false}),
		})
		resourceArgs = append(resourceArgs, &ast.Field{
			Label: ast.NewIdent(strings.TrimPrefix(strings.TrimPrefix(name, strings.Join([]string{"oci", *service}, "_")), "_")),
			Value: schema.ResourceExpr(resource, schema.Option{DropReadOnly: true}),
		})
	}
	for name, resource := range globalvar.OciDatasources {
		data = append(data, &ast.Field{
			Label: ast.NewIdent(strings.TrimPrefix(strings.TrimPrefix(name, strings.Join([]string{"oci", *service}, "_")), "_")),
			Value: schema.ResourceExpr(resource, schema.Option{DropReadOnly: true}),
		})
	}

	var resourceDecls ast.Decl = &ast.Field{
		Label: ast.NewIdent("#resource"),
		Value: ast.NewStruct([]interface{}{
			&ast.Field{
				Label: ast.NewIdent("attributes"),
				Value: ast.NewStruct(resourceAttrs...),
			},
			&ast.Field{
				Label: ast.NewIdent("arguments"),
				Value: ast.NewStruct(resourceArgs...),
			},
		}...),
	}

	var dataDecls ast.Decl = &ast.Field{
		Label: ast.NewIdent("#data"),
		Value: ast.NewStruct(data...),
	}

	file := &ast.File{
		Filename: *fileName,
		Decls:    []ast.Decl{&ast.Package{Name: ast.NewIdent(*packageFlag)}, resourceDecls, dataDecls},
	}

	b, err := format.Node(file, format.Simplify())

	if err == nil {
		fmt.Println(string(b))
	} else {
		fmt.Println(err)
	}
}
