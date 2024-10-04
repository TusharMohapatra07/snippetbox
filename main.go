package main

import (
	"log"
	"net/http"
)

const port string = ":4000"

func home(w http.ResponseWriter, r *http.Request) {
	w.Write([]byte("Hello world"))
}

func main() {
	mux := http.NewServeMux()
	mux.HandleFunc("/", home)
	log.Printf("Server started on port%s", port)
	err := http.ListenAndServe(port, mux)
	log.Fatal(err)

}
