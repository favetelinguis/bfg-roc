package roc

/*
#include "app.h"
#cgo LDFLAGS: -L.. -lapp
*/
import "C"
import (
	"fmt"
	"unsafe"
)

func Main() int {
	var result = C.roc__main_for_host_1_exposed(0)

	// What is disciminant?
	switch result.disciminant {
	case 1: // Ok
		return 0
	case 0: // Err
		return (*(*int)(unsafe.Pointer(&result.payload)))
	default:
		panic("invalid disciminant")
	}
}

//export roc_fx_stdoutLine
func roc_fx_stdoutLine(msg *RocStr) C.struct_ResultVoidStr {
	fmt.Println(msg)
	return C.struct_ResultVoidStr{
		disciminant: 1,
	}
}
