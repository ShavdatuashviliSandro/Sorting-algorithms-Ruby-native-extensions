# frozen_string_literal: true

require 'mkmf' # ბიბლიოთეკა, რომელიც ქმნის Makefile-ს

find_executable('go') # ნახულობს არის თუ არა Go დაყენებული

%x{go build -buildmode=c-shared -o libgofact.so main.go}

create_makefile('fact')