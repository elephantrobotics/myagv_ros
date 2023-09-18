#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <errno.h>
#include <linux/input.h>
#include <linux/joystick.h>
 
#define PS2_TYPE_BUTTON    0x01    /*两种模式*/
#define PS2_TYPE_AXIS      0x02
 
#define PS2_BUTTON_A       0x00
#define PS2_BUTTON_B       0x01
#define PS2_BUTTON_X       0x02
#define PS2_BUTTON_Y       0x03
#define PS2_BUTTON_L1      0x04
#define PS2_BUTTON_R1      0x05
#define PS2_BUTTON_SELECT   0x06
#define PS2_BUTTON_START    0x07
#define PS2_BUTTON_MODE    0x08
#define PS2_BUTTON_LO      0x09    /* 左摇杆按键 */
#define PS2_BUTTON_RO      0x0a    /* 右摇杆按键 */
 
#define PS2_BUTTON_ON      0x01
#define PS2_BUTTON_OFF     0x00
 
#define PS2_AXIS_LX        0x00    /* 左摇杆X轴 */
#define PS2_AXIS_LY        0x01    /* 左摇杆Y轴 */
#define PS2_AXIS_RX        0x03    /* 右摇杆X轴 */
#define PS2_AXIS_RY        0x04    /* 右摇杆Y轴 */
#define PS2_AXIS_L2        0x02
#define PS2_AXIS_R2        0x05
#define PS2_AXIS_XX        0x06    /* 方向键X轴 */
#define PS2_AXIS_YY        0x07    /* 方向键Y轴 */
 
#define PS2_AXIS_VAL_UP        -32767
#define PS2_AXIS_VAL_DOWN      32767
#define PS2_AXIS_VAL_LEFT      -32767
#define PS2_AXIS_VAL_RIGHT     32767
 
#define PS2_AXIS_VAL_MIN       -32767
#define PS2_AXIS_VAL_MAX       32767
#define PS2_AXIS_VAL_MID       0x00
 
typedef struct 
{
    int     time;
    int     a;
    int     b;
    int     x;
    int     y;
    int     l1;
    int     r1;
    int     select;
    int     start;
    int     mode;
    int     lo;
    int     ro;
 
    int     lx;
    int     ly;
    int     rx;
    int     ry;
    int     l2;
    int     r2;
    int     xx;
    int     yy;
 
}ps2_map_t;