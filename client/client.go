// remote is the remote application, supposely hosted on a mobile device(e.g. iphone)
package client

import (
	"fmt"
	"net/http"

	"io/ioutil"
	//"runtime"
)

func Start() string {
	// These requests cause SIGPIPE when the app comes back from 
	// background state.
	go req("http://example.com")
	go req("http://www.google.com")
	go req("http://www.yahoo.com")
	return ""
}

func Stop() string {
	return "OK, cancel"
}

func req(URL string) (string, error) {
	rsp, err := http.Get(URL)
	if err != nil {
		//log.Errorf("URL %s, err %v", URL, err)
		return "", err
	}
	defer rsp.Body.Close()
	b, err := ioutil.ReadAll(rsp.Body)
	if err != nil {
		//log.Error(err)
		return "", err
	}
	if rsp.StatusCode != 200 {
		//log.Errorf("URL %s, response code %v, body %s", URL, rsp.StatusCode, b)
		return "", fmt.Errorf("%s", b)
	}
	return rsp.Status, nil
}
