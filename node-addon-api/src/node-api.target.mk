# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := node-api
DEFS_Debug := \
	'-DNODE_GYP_MODULE_NAME=node-api' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DEXTERNAL_NAPI' \
	'-DDEBUG' \
	'-D_DEBUG' \
	'-DV8_ENABLE_CHECKS'

# Flags passed to all source files.
CFLAGS_Debug := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-g \
	-O0

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++1y \
	-fvisibility=hidden

INCS_Debug := \
	-I/opt/app-root/src/.node-gyp/10.16.3/include/node \
	-I/opt/app-root/src/.node-gyp/10.16.3/src \
	-I/opt/app-root/src/.node-gyp/10.16.3/deps/openssl/config \
	-I/opt/app-root/src/.node-gyp/10.16.3/deps/openssl/openssl/include \
	-I/opt/app-root/src/.node-gyp/10.16.3/deps/uv/include \
	-I/opt/app-root/src/.node-gyp/10.16.3/deps/zlib \
	-I/opt/app-root/src/.node-gyp/10.16.3/deps/v8/include

DEFS_Release := \
	'-DNODE_GYP_MODULE_NAME=node-api' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DEXTERNAL_NAPI'

# Flags passed to all source files.
CFLAGS_Release := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-O3 \
	-fno-omit-frame-pointer

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++1y \
	-fvisibility=hidden

INCS_Release := \
	-I/opt/app-root/src/.node-gyp/10.16.3/include/node \
	-I/opt/app-root/src/.node-gyp/10.16.3/src \
	-I/opt/app-root/src/.node-gyp/10.16.3/deps/openssl/config \
	-I/opt/app-root/src/.node-gyp/10.16.3/deps/openssl/openssl/include \
	-I/opt/app-root/src/.node-gyp/10.16.3/deps/uv/include \
	-I/opt/app-root/src/.node-gyp/10.16.3/deps/zlib \
	-I/opt/app-root/src/.node-gyp/10.16.3/deps/v8/include

OBJS := \
	$(obj).target/$(TARGET)/../node-addon-api/src/node_api.o \
	$(obj).target/$(TARGET)/../node-addon-api/src/node_internals.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-pthread \
	-rdynamic \
	-m64

LDFLAGS_Release := \
	-pthread \
	-rdynamic \
	-m64

LIBS :=

$(obj).target/../node-addon-api/src/node-api.a: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/../node-addon-api/src/node-api.a: LIBS := $(LIBS)
$(obj).target/../node-addon-api/src/node-api.a: TOOLSET := $(TOOLSET)
$(obj).target/../node-addon-api/src/node-api.a: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,alink)

all_deps += $(obj).target/../node-addon-api/src/node-api.a
# Add target alias
.PHONY: node-api
node-api: $(obj).target/../node-addon-api/src/node-api.a

# Add target alias
.PHONY: node-api
node-api: $(builddir)/node-api.a

# Copy this to the static library output path.
$(builddir)/node-api.a: TOOLSET := $(TOOLSET)
$(builddir)/node-api.a: $(obj).target/../node-addon-api/src/node-api.a FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/node-api.a
# Short alias for building this static library.
.PHONY: node-api.a
node-api.a: $(obj).target/../node-addon-api/src/node-api.a $(builddir)/node-api.a

