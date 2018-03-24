LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

$(call import-add-path,$(LOCAL_PATH)/../../cocos2d)
$(call import-add-path,$(LOCAL_PATH)/../../cocos2d/external)
$(call import-add-path,$(LOCAL_PATH)/../../cocos2d/cocos)
$(call import-add-path,$(LOCAL_PATH)/../../cocos2d/cocos/audio/include)

LOCAL_MODULE := MyGame_shared

LOCAL_MODULE_FILENAME := libMyGame

LOCAL_CPPFLAGS := -std=c++11 -DBOOST_ERROR_CODE_HEADER_ONLY  -DBOOST_SYSTEM_NO_DEPRECATED -pthread -frtti -fpermissive -fexceptions -fvisibility=hidden
LOCAL_CFLAGS := -DHAVE_CONFIG_H -DANDROID -D__ANDROID__

LOCAL_SRC_FILES := hellocpp/main.cpp \
                    ../../Classes/platform/NXJniWrapper.cpp \
                    ../../Classes/platform/NXNativeUitls_Android.cpp \
				    ../../Classes/crypto-support/crypto_utils.cpp \
				    ../../Classes/crypto-support/crypto_wrapper.cpp \
				    ../../Classes/crypto-support/crypto_wrapper_rsa.cpp \
				    ../../Classes/crypto-support/libb64.cpp \
				    ../../Classes/crypto-support/md5.cpp \
				    ../../Classes/crypto-support/md6.cpp \
                    ../../Classes/AppDelegate.cpp \
				    ../../Classes/MainScene.cpp \
				    ../../Classes/OfflineScene.cpp \
				    ../../Classes/OnlineScene.cpp \
				    ../../Classes/TransactionManager.cpp \
                    ../../Classes/HelloWorldScene.cpp \
                    ../../Classes/utils/xxsocket.cpp \
                    ../../Classes/utils/async_tcp_client.cpp \
                    ../../Classes/utils/deadline_timer.cpp \
                    ../../Classes/utils/c-ares/ares__close_sockets.c	\
                    ../../Classes/utils/c-ares/ares__get_hostent.c			\
                    ../../Classes/utils/c-ares/ares__read_line.c			\
                    ../../Classes/utils/c-ares/ares__timeval.c			\
                    ../../Classes/utils/c-ares/ares_cancel.c				\
                    ../../Classes/utils/c-ares/ares_data.c				\
                    ../../Classes/utils/c-ares/ares_destroy.c			\
                    ../../Classes/utils/c-ares/ares_expand_name.c			\
                    ../../Classes/utils/c-ares/ares_expand_string.c			\
                    ../../Classes/utils/c-ares/ares_fds.c				\
                    ../../Classes/utils/c-ares/ares_free_hostent.c			\
                    ../../Classes/utils/c-ares/ares_free_string.c			\
                    ../../Classes/utils/c-ares/ares_getenv.c				\
                    ../../Classes/utils/c-ares/ares_gethostbyaddr.c			\
                    ../../Classes/utils/c-ares/ares_gethostbyname.c			\
                    ../../Classes/utils/c-ares/ares_getaddrinfo.c                    \
                    ../../Classes/utils/c-ares/ares_getnameinfo.c			\
                    ../../Classes/utils/c-ares/ares_getsock.c			\
                    ../../Classes/utils/c-ares/ares_init.c				\
                    ../../Classes/utils/c-ares/ares_library_init.c			\
                    ../../Classes/utils/c-ares/ares_llist.c				\
                    ../../Classes/utils/c-ares/ares_mkquery.c			\
                    ../../Classes/utils/c-ares/ares_create_query.c			\
                    ../../Classes/utils/c-ares/ares_nowarn.c				\
                    ../../Classes/utils/c-ares/ares_options.c			\
                    ../../Classes/utils/c-ares/ares_parse_a_reply.c			\
                    ../../Classes/utils/c-ares/ares_parse_aaaa_reply.c		\
                    ../../Classes/utils/c-ares/ares_parse_mx_reply.c			\
                    ../../Classes/utils/c-ares/ares_parse_naptr_reply.c		\
                    ../../Classes/utils/c-ares/ares_parse_ns_reply.c			\
                    ../../Classes/utils/c-ares/ares_parse_ptr_reply.c		\
                    ../../Classes/utils/c-ares/ares_parse_soa_reply.c		\
                    ../../Classes/utils/c-ares/ares_parse_srv_reply.c		\
                    ../../Classes/utils/c-ares/ares_parse_txt_reply.c		\
                    ../../Classes/utils/c-ares/ares_platform.c			\
                    ../../Classes/utils/c-ares/ares_process.c			\
                    ../../Classes/utils/c-ares/ares_query.c				\
                    ../../Classes/utils/c-ares/ares_search.c				\
                    ../../Classes/utils/c-ares/ares_send.c				\
                    ../../Classes/utils/c-ares/ares_strcasecmp.c			\
                    ../../Classes/utils/c-ares/ares_strdup.c				\
                    ../../Classes/utils/c-ares/ares_strerror.c			\
                    ../../Classes/utils/c-ares/ares_timeout.c			\
                    ../../Classes/utils/c-ares/ares_version.c			\
                    ../../Classes/utils/c-ares/ares_writev.c				\
                    ../../Classes/utils/c-ares/bitncmp.c				\
                    ../../Classes/utils/c-ares/inet_net_pton.c			\
                    ../../Classes/utils/c-ares/inet_ntop.c \
                    ../../Classes/utils/c-ares/ares_android.c

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../Classes \
                    $(LOCAL_PATH)/../../cocos2d/cocos/editor-support \
                    $(LOCAL_PATH)/../../Classes/utils \
                    $(LOCAL_PATH)/../../Classes/utils/c-ares

# _COCOS_HEADER_ANDROID_BEGIN
# _COCOS_HEADER_ANDROID_END


LOCAL_STATIC_LIBRARIES := cocos2dx_static
LOCAL_WHOLE_STATIC_LIBRARIES += dragonbones_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocos_localstorage_static

# _COCOS_LIB_ANDROID_BEGIN
# _COCOS_LIB_ANDROID_END

include $(BUILD_SHARED_LIBRARY)

$(call import-module,.)
$(call import-module,editor-support/dragonBones)
$(call import-module,storage/local-storage)
# $(call import-module, cocos)

# _COCOS_LIB_IMPORT_ANDROID_BEGIN
# _COCOS_LIB_IMPORT_ANDROID_END
