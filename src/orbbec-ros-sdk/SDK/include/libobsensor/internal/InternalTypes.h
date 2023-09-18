// License: Apache 2.0. See LICENSE file in root directory.
// Copyright(c) 2020 Orbbec  Corporation. All Rights Reserved.

/**
 * @file InternalTypes.h
 * @brief 提供SDK及工程软件内部使用的结构体、枚举常量定义
 */

#pragma once

#include "libobsensor/h/ObTypes.h"

#ifdef __cplusplus
extern "C" {
#endif
#include <stdint.h>
#include <stdbool.h>
#pragma pack(push, 1)  // struct 1-byte align

/**
 * @brief 设备版本信息
 */
typedef struct {
    char    firmwareVersion[16];   ///< 如：1.2.18
    char    hardwareVersion[16];   ///< 如：1.0.18
    char    sdkVersion[16];        ///< 支持最低sdk的版本号，sdk版本号：2.3.2（主.次.修订)
    char    depthChip[16];         ///< mx6000, mx6600
    char    systemChip[16];        ///< ar9201
    char    serialNumber[16];      ///< 序列号
    int32_t deviceType;            ///< 单目，双目，tof。枚举值
    char    deviceName[16];        ///< 设备名称 astra+
    char    subSystemVersion[16];  ///< 如：Femto的MCU固件版本 1.0.23
    char    reserved[32];          ///< 保留
} VERSION, OBVersionInfo, ob_version_info;

/**
 * @brief 相机参数
 * @attention 仅供工程软件使用
 *
 */
typedef struct {
    float    d_intr_p[4];    ///< 深度相机内参：[fx,fy,cx,cy]
    float    c_intr_p[4];    ///< 彩色相机内参：[fx,fy,cx,cy]
    float    d2c_r[9];       ///< 深度相机到彩色相机的旋转矩阵 [r00,r01,r02;r10,r11,r12;r20,r21,r22]
    float    d2c_t[3];       ///< 深度相机到彩色相机的平移矩阵 [t1,t2,t3]
    float    d_k[5];         ///< 深度相机畸变参数 [k1,k2,p1,p2,k3]  // 注意k3的位置，这个是算法定的，有些代码k3排在k2后边
    float    c_k[5];         ///< 彩色相机畸变参数 [k1,k2,p1,p2,k3]
    uint32_t c_img_size[2];  ///< 彩色标定分辨率 [color_width, color_height]
    uint32_t d_img_size[2];  ///< 深度标定分辨率 [ir_width, ir_height]

} INTERNAL_CAMERA_PARAM, OBInternalCameraParam, ob_internal_camera_param;

/**
 * @brief 基线标定参数
 * @attention 默认单位为cm，但不同项目会有不同定义
 */
typedef struct {
    float baseline;  ///< 基线长度
    float zpd;       ///< 标定距离
} BASELINE_CALIBRATION_PARAM, ob_baseline_calibration_param, OBBaselineCalibrationParam;

/**
 * @brief uint32_t类型的数值范围
 *
 */
typedef struct {
    uint32_t min;  ///< 最大值
    uint32_t max;  ///< 最小值
} RANGE, OBRange, ob_range;

/**
 * @brief ir AE 调试参数
 *
 */
typedef struct {
    OBRange  expTime;
    OBRange  AGain;
    OBRange  laserCurrent;
    uint32_t targetBrightness;
    uint32_t targetThd;
    uint32_t centerWeight;
    uint32_t skipFrame;
    uint32_t smoothSteps;
    uint32_t delay_ms;
    uint32_t meterMethod;
    uint8_t  expTimeAdj;
    uint8_t  AGainAdj;
    uint8_t  laserCurrentAdj;
    uint8_t  reserve;
} IR_AE_PARAM, OBIrAEParam, ob_ir_ae_param;

/**
 * @brief 相机扩展参数(主要用于视差转深度)
 *
 */
typedef struct {
    float fDCmosEmitterDistance;  ///< baseline
    float fDCmosRCmosDistance;    ///< 双目 baseline
    float fReferenceDistance;     ///< zpd baseline
    float fReferencePixelSize;    ///< zpps baseline
} EXTENSION_PARAM, OBExtensionParam, ob_extension_param;

/**
 * @brief TOF调制频率
 */
typedef struct {
    int32_t mode;      ///< 1: 表示单频调制，2: 表示双频调制
    int32_t freq_A;    ///< 第一个调制频率(单频调制只有A频率有效)
    int32_t freq_B;    ///< 第二个调制频率
    int32_t reserved;  ///< 保留位
} TOF_MODULATION_FREQ, OBTofModulationFreq, ob_tof_modulation_freq;

/**
 * @brief TOF调制占空比
 */
typedef struct {
    int32_t mode;      ///< 1: 表示单频调制，2: 表示双频调制
    float   duty_A;    ///< 第一个调制信号占空比， 取值省略百分号，如：54.2
    float   duty_B;    ///< 第二个调制信号占空比
    float   reserved;  ///< 保留位
} TOF_DUTY_CYCLE, OBTofDutyCycle, ob_tof_duty_cycle;

/**
 * @brief TEC参数
 *
 */
typedef struct {
    float    m_SetPointVoltage;
    float    m_CompensationVoltage;
    uint16_t m_TecDutyCycle;  ///< duty cycle on heater/cooler
    uint16_t m_HeatMode;      ///< TRUE - heat, FALSE - cool
    float    m_ProportionalError;
    float    m_IntegralError;
    float    m_DerivativeError;
    uint16_t m_ScanMode;  ///< 0 - crude, 1 - precise
    float    m_Pvar;
    float    m_Ivar;
    float    m_Dvar;
} TEC_DATA, OBTecData, ob_tec_data;

/**
 * @brief 设备时间
 */
typedef struct {
    uint64_t time;  ///< sdk->dev: 授时时间; dev->sdk: 设备当前时间; 单位: ms
    uint64_t rtt;   ///< sdk->dev: 命令往返时间，设备接收到后将时间设置为time+rtt/2; dev->sdk: reserved; 单位: ms
} DEVICE_TIME, OBDeviceTime, ob_device_time;

/**
 * @brief 序列号
 *
 */
typedef struct {
    char numberStr[12];
} DEVICE_SERIAL_NUMBER, OBDeviceSerialNumber, ob_device_serial_number;

/**
 * @brief 温补参数（单目）
 *
 */
typedef struct {
    float temp_Cal_IR;     ///< Calibration temperature of IR module.
    float temp_Cal_Laser;  ///< Calibration temperature of Laser module.
    float ncost_IR;        ///< Temperature coefficient of IR module.
    float ncost_Laser;     ///< Temperature coefficient of Laser module.
} TEMP_COMPENSATE_PARAM, OBTempCompensateParam, ob_temp_compensate_param;

/**
 * @brief 温补参数（双IR）
 *
 */
typedef struct {
    float temp_Cal_IR_Left;   ///< Calibration temperature of IR left module.
    float temp_Cal_IR_Right;  ///< Calibration temperature of IR Right module.
    float temp_Cal_Laser;     ///< Calibration temperature of Laser module.
    float ncost_IR_Left;      ///< Temperature coefficient of IR Left module.
    float ncost_IR_Right;     ///< Temperature coefficient of IR Right module.
    float ncost_Laser;        ///< Temperature coefficient of Laser module.
} OBTempCompensateParam_V0, ob_temp_compensate_param_v0;

/**
 * @brief 防串货激活码
 *
 */
#define OB_ACTIVATION_CODE_SIZE 49
typedef struct {
    uint8_t ActiveCode[OB_ACTIVATION_CODE_SIZE];
} OBActivationCode, ob_activation_code;

/**
 * @brief Sensor曝光
 *
 */
typedef struct {
    float colorExp;  ///< color sensor exposure, unit: ms
    float irExp;     ///< ir sensor exposure, unit: ms
} SENSOR_EXPOSURE, OBSensorExposure, ob_sensor_exposure;

/**
 * @brief 深度标定参数（主要用于生成软件D2D参数）
 * 最新版本：算法公式使用的版本
 * 协议1.1：控制命令版本为1
 * 注意：当数据结构发生变化时，要将旧OBDepthCalibrationParam_VX0独立出来，
 *      然后重新定义最新版本的数据结构OBDepthCalibrationParam_VX1，OBDepthCalibrationParam始终指向最新的版本的数据结构
 */
typedef struct {
    uint32_t depthMode;    ///< 单目/双目
    float    baseline;     ///< IR Sensor到激光的距离
    float    z0;           ///< 标定距离
    float    focalPix;     ///< 用于深度计算的焦距或rectify后的焦距f
    float    unit;         ///< 单位 x1 mm，如：unit=0.25, 表示0.25*1mm=0.25mm
    float    dispOffset;   ///< 视差偏移，真实视差=芯片输出的视差 + disp_offset
    int32_t  invalidDisp;  ///< 无效视差，一般情况下为0；当芯片min_disp 不等于0或者-128时，无效视差不再等于0
} OBDepthCalibrationParam, OBDepthCalibrationParam_V1;

/**
 * @brief 深度标定参数（主要用于生成软件D2D参数）
 * 旧版本：适合astra2
 */
typedef struct {
    float baseline;  ///< IR Sensor到激光的距离
    float z0;        ///< 标定距离
    float focalPix;  ///< 用于深度计算的焦距或rectify后的焦距f
    float unit;      ///< 单位 x1 mm，如：unit=0.25, 表示0.25*1mm=0.25mm
} OBDepthCalibrationParam_OLD;

/**
 * @brief 深度标定参数（主要用于生成软件D2D参数）
 * 协议1.1：控制命令版本为0
 * 适配产品: 暂时没有正式对外版本。
 *     Gemini2 DVT初期在使用（2022年11月27日），已经存在工程软件试产，以及外部客户预览版
 */
typedef struct {
    uint32_t depthMode;  ///< 单目/双目
    float    baseline;   ///< IR Sensor到激光的距离
    float    z0;         ///< 标定距离
    float    focalPix;   ///< 用于深度计算的焦距或rectify后的焦距f
    float    unit;       ///< 单位 x1 mm，如：unit=0.25, 表示0.25*1mm=0.25mm
} OBDepthCalibrationParam_V0;

typedef struct {
    uint16_t sensorType;  // enum value of OBSensorType
    union Profile {
        struct Video {  // Color、IR、Depth使用该结构体
            uint32_t width;
            uint32_t height;
            uint32_t fps;
            uint32_t formatFourcc;  // 如： {'Y', 'U', 'Y', 'V'} // fourcc是UVC里的一个通用概念
        } video;
        struct Accel {                // Accel使用该结构体
            uint16_t fullScaleRange;  // enum value of OBAccelFullScaleRange
            uint16_t sampleRate;      // enum value of OBAccelSampleRate
        } accel;
        struct Gyro {                 // Gyro 使用该结构体
            uint16_t fullScaleRange;  // enum value of OBGyroFullScaleRange
            uint16_t sampleRate;      // enum value of OBGyroSampleRate
        } gyro;
    } profile;
} OBDefaultStreamProfile;

/**
 * @brief 外围设备信息
 *
 */
typedef struct {
    char colorSensorId[16];
    char irSensorId[16];
    char imuSensorId[16];
    char reserved[208];
} PERIPHERAL_ID_INFO, OBPeripheralIDInfo, ob_peripheral_id_info;

typedef struct {
    uint8_t ledNum;     // LED灯的序号，值为 1,2,3,4 表示 4个灯；
    uint8_t ledStatus;  // 0:表示关；1:表示开
} LED_CONTROL, OBLedControl, ob_led_control;

/**
 * \if English
 * @brief Depth alignment rectify parameter
 * \else
 * @brief 深度对齐校验参数
 * \endif
 *
 */
typedef struct {
    OBCameraIntrinsic  leftIntrin;  //  单目结构光以及双目左 L
    OBCameraDistortion leftDisto;
    float              leftRot[9];

    OBCameraIntrinsic  rightIntrin;  // ref
    OBCameraDistortion rightDisto;
    float              rightRot[9];

    OBCameraIntrinsic leftVirtualIntrin;  // output intrinsics from rectification (and rotation)
    OBCameraIntrinsic rightVirtualIntrin;
} OBDERectifyMaskParams, OBDERectifyMaskParams_V0;

typedef struct MaskFilterConfig_S {
    float scale;
    int   margin_th_u;     // 对应在 src 图像的边缘宽度
    int   margin_th_v;     // 对应在 src 图像的边缘宽度
    int   mask_margin_th;  // 在 mask 图像的边缘宽度
    bool  enable_undisto;
} ob_mask_filter_config, OBMaskFilterConfig;

#pragma pack(pop)

#ifdef __cplusplus
}
#endif
