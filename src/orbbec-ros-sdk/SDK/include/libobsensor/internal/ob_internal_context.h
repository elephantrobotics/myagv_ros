#pragma once

#include "libobsensor/h/ObTypes.h"

#ifdef __cplusplus
extern "C" {
#endif

/**
 * @param context
 * @param license_path license文件路径
 * @param error
 */
void ob_config_license(const char *license_path, ob_error **error);

#ifdef __cplusplus
}
#endif