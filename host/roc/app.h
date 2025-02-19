#ifndef ROC_APP
#define ROC_APP

#include "roc_std.h"

struct ResultVoidI32 {
    union {long int exit_code;} payload;
    unsigned char disciminant;
};

struct ResultVoidStr {
    union {struct RocStr str;} payload;
    unsigned char disciminant;
};

struct ResultVoidI32 roc__main_for_host_1_exposed(size_t captures);
size_t roc__mainForHost_1_exposed_size();

#endif
