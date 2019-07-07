require 'ffi'
require 'ffi/tools/const_generator'

# run example ruby ffi.rb 100
module Gsl
  extend FFI::Library
  # libgsk was compiled according to the documentation in the INSTALL file
  # source can be found here http://ftp-gnu-org.ip-connect.vn.ua/gsl/
  # just fo this `./configure` and `make` after. Than you can get compiled file in the .libs folder
  ffi_lib './libgsl.so'
  # https://www.gnu.org/software/gsl/doc/html/math.html#c.gsl_log1p
  attach_function :gsl_log1p, [:double], :double
end

p Gsl.gsl_log1p(ARGV[0].to_i)
