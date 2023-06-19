# CMake generated Testfile for 
# Source directory: /home/vinitran/Documents/IceteaLab/go-llama.cpp/llama.cpp/tests
# Build directory: /home/vinitran/Documents/IceteaLab/go-llama.cpp/build/tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(test-quantize-fns "/home/vinitran/Documents/IceteaLab/go-llama.cpp/build/bin/test-quantize-fns")
set_tests_properties(test-quantize-fns PROPERTIES  _BACKTRACE_TRIPLES "/home/vinitran/Documents/IceteaLab/go-llama.cpp/llama.cpp/tests/CMakeLists.txt;5;add_test;/home/vinitran/Documents/IceteaLab/go-llama.cpp/llama.cpp/tests/CMakeLists.txt;9;llama_add_test;/home/vinitran/Documents/IceteaLab/go-llama.cpp/llama.cpp/tests/CMakeLists.txt;0;")
add_test(test-quantize-perf "/home/vinitran/Documents/IceteaLab/go-llama.cpp/build/bin/test-quantize-perf")
set_tests_properties(test-quantize-perf PROPERTIES  _BACKTRACE_TRIPLES "/home/vinitran/Documents/IceteaLab/go-llama.cpp/llama.cpp/tests/CMakeLists.txt;5;add_test;/home/vinitran/Documents/IceteaLab/go-llama.cpp/llama.cpp/tests/CMakeLists.txt;10;llama_add_test;/home/vinitran/Documents/IceteaLab/go-llama.cpp/llama.cpp/tests/CMakeLists.txt;0;")
add_test(test-sampling "/home/vinitran/Documents/IceteaLab/go-llama.cpp/build/bin/test-sampling")
set_tests_properties(test-sampling PROPERTIES  _BACKTRACE_TRIPLES "/home/vinitran/Documents/IceteaLab/go-llama.cpp/llama.cpp/tests/CMakeLists.txt;5;add_test;/home/vinitran/Documents/IceteaLab/go-llama.cpp/llama.cpp/tests/CMakeLists.txt;11;llama_add_test;/home/vinitran/Documents/IceteaLab/go-llama.cpp/llama.cpp/tests/CMakeLists.txt;0;")
add_test(test-tokenizer-0 "/home/vinitran/Documents/IceteaLab/go-llama.cpp/build/bin/test-tokenizer-0" "/home/vinitran/Documents/IceteaLab/go-llama.cpp/llama.cpp/tests/../models/ggml-vocab.bin")
set_tests_properties(test-tokenizer-0 PROPERTIES  _BACKTRACE_TRIPLES "/home/vinitran/Documents/IceteaLab/go-llama.cpp/llama.cpp/tests/CMakeLists.txt;5;add_test;/home/vinitran/Documents/IceteaLab/go-llama.cpp/llama.cpp/tests/CMakeLists.txt;12;llama_add_test;/home/vinitran/Documents/IceteaLab/go-llama.cpp/llama.cpp/tests/CMakeLists.txt;0;")
