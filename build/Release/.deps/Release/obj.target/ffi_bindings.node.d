cmd_Release/obj.target/ffi_bindings.node := g++ -shared -pthread -rdynamic -m64  -Wl,-soname=ffi_bindings.node -o Release/obj.target/ffi_bindings.node -Wl,--start-group Release/obj.target/ffi_bindings/src/ffi.o Release/obj.target/ffi_bindings/src/callback_info.o Release/obj.target/ffi_bindings/src/threaded_callback_invokation.o Release/obj.target/../node-addon-api/src/nothing.a Release/obj.target/deps/libffi/libffi.a -Wl,--end-group 
