set(ABSL_PROPAGATE_CXX_STD ON)
set(ABSL_CXX_STANDARD 17)
set(ABSL_USE_GOOGLETEST_HEAD ON)
set(ABSL_ENABLE_INSTALL ON)

#set(absl_DIR /home/heaven7/heaven7/env/linux/google/absl/lib/cmake/absl)
set(absl_DIR /home/heaven7/heaven7/libs/google/grpc/1.5.0_out/lib/cmake/absl)
find_package(absl)
set(
  ABSL_TARGETS   
  absl::strings
  absl::flags
  absl::status
  absl::statusor
  absl::examine_stack
  absl::stacktrace
  absl::base
  absl::config
  absl::core_headers
  absl::raw_logging_internal
  absl::failure_signal_handler
  absl::flat_hash_map
)
