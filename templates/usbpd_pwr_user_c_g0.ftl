[#ftl]
/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file    usbpd_pwr_user.c
  * @author  MCD Application Team
  * @brief   USBPD PWR user code
  ******************************************************************************
[@common.optinclude name=mxTmpFolder+"/license.tmp"/][#--include License text --]
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "usbpd_pwr_user.h"
#include "${FamilyName?lower_case}xx_hal.h"
#if defined(_TRACE)
#include "usbpd_core.h"
#include "usbpd_trace.h"
#endif /* _TRACE */

/* USER CODE BEGIN include */
/* USER CODE END include */

/** @addtogroup BSP
  * @{
  */

/** @addtogroup POWER
  * @{
  */
/** @defgroup POWER_Private_Typedef Private Typedef
  * @{
  */
/* USER CODE BEGIN POWER_Private_Typedef */

/* USER CODE END POWER_Private_Typedef */
/**
  * @}
  */

/** @defgroup POWER_Private_Constants Private Constants
* @{
*/
/* USER CODE BEGIN POWER_Private_Constants */

/* USER CODE END POWER_Private_Constants */
/**
  * @}
  */

/** @defgroup POWER_Private_Macros Private Macros
  * @{
  */
#if defined(_TRACE)
#define PWR_DEBUG_TRACE(_PORT_, __MESSAGE__)  USBPD_TRACE_Add(USBPD_TRACE_DEBUG,    (_PORT_), 0u, (uint8_t*)(__MESSAGE__), sizeof(__MESSAGE__) - 1u)
#else
#define PWR_DEBUG_TRACE(_PORT_, __MESSAGE__)
#endif /* _TRACE */
/* USER CODE BEGIN POWER_Private_Macros */

/* USER CODE END POWER_Private_Macros */
/**
  * @}
  */

/** @defgroup POWER_Private_Variables Private Variables
  * @{
  */
/* USER CODE BEGIN POWER_Private_Variables */

/* USER CODE END POWER_Private_Variables */
/**
  * @}
  */

/** @defgroup POWER_Private_Functions Private Functions
  * @{
  */
/* USER CODE BEGIN POWER_Private_Prototypes */

/* USER CODE END POWER_Private_Prototypes */
/**
  * @}
  */

/** @defgroup POWER_Exported_Variables Exported Variables
  * @{
  */
/* USER CODE BEGIN POWER_Exported_Variables */

/* USER CODE END POWER_Exported_Variables */
/**
  * @}
  */

/** @addtogroup POWER_Exported_Functions
  * @{
  */
/**
 * @brief  Initialize the hardware resources used by the Type-C power delivery (PD)
 *         controller.
 * @param  PortId Type-C port identifier
 *         This parameter can be take one of the following values:
 *         @arg TYPE_C_PORT_1
 *         @arg TYPE_C_PORT_2
 * @retval PD controller status
 */
__weak PWR_StatusTypeDef BSP_PWR_VBUSInit(uint32_t               PortId)
{
/* USER CODE BEGIN BSP_PWR_VBUSInit */
  PWR_DEBUG_TRACE(PortId, "ADVICE: Update BSP_PWR_VBUSInit");
  return PWR_ERROR;
/* USER CODE END BSP_PWR_VBUSInit */
}

/**
 * @brief  Release the hardware resources used by the Type-C power delivery (PD)
 *         controller.
 * @param  PortId Type-C port identifier
 *         This parameter can be take one of the following values:
 *         @arg TYPE_C_PORT_1
 *         @arg TYPE_C_PORT_2
 * @retval PD controller status
 */
__weak PWR_StatusTypeDef BSP_PWR_VBUSDeInit(uint32_t PortId)
{
/* USER CODE BEGIN BSP_PWR_VBUSDeInit */
  return PWR_ERROR;
/* USER CODE END BSP_PWR_VBUSDeInit */
}

/**
 * @brief  Enable power supply over VBUS.
 * @param  PortId Type-C port identifier
 *         This parameter can be take one of the following values:
 *         @arg TYPE_C_PORT_1
 * @retval PD controller status
 */
__weak PWR_StatusTypeDef BSP_PWR_VBUSOn(uint32_t PortId)
{
/* USER CODE BEGIN BSP_PWR_VBUSOn */
  PWR_DEBUG_TRACE(PortId, "ADVICE: Update BSP_PWR_VBUSOn");
  return PWR_ERROR;
/* USER CODE END BSP_PWR_VBUSOn */
}

/**
 * @brief  Disable power supply over VBUS.
 * @param  PortId Type-C port identifier
 *         This parameter can be take one of the following values:
 *         @arg TYPE_C_PORT_1
 * @retval PD controller status
 */
__weak PWR_StatusTypeDef BSP_PWR_VBUSOff(uint32_t PortId)
{
/* USER CODE BEGIN BSP_PWR_VBUSOff */
  PWR_DEBUG_TRACE(PortId, "ADVICE: Update BSP_PWR_VBUSOff");
  return PWR_ERROR;
/* USER CODE END BSP_PWR_VBUSOff */
}

/**
  * @brief  Set a fixed/variable PDO and manage the power control.
 * @param  PortId Type-C port identifier
 *         This parameter can be take one of the following values:
 *         @arg TYPE_C_PORT_1
 * @param  VbusTargetInmv the vbus Target (in mV)
 * @param  OperatingCurrent the Operating Current (in mA)
 * @param  MaxOperatingCurrent the Max Operating Current (in mA)
 * @retval PD controller status
 */
__weak PWR_StatusTypeDef BSP_PWR_VBUSSetVoltage_Fixed(uint32_t PortId,
                                               uint32_t VbusTargetInmv,
                                               uint32_t OperatingCurrent,
                                               uint32_t MaxOperatingCurrent)
{
/* USER CODE BEGIN BSP_PWR_VBUSSetVoltage_Fixed */
  return PWR_OK;
/* USER CODE END BSP_PWR_VBUSSetVoltage_Fixed */
}

/**
 * @brief  Set a fixed/variable PDO and manage the power control.
 * @param  PortId Type-C port identifier
 *         This parameter can be take one of the following values:
 *         @arg TYPE_C_PORT_1
 * @param  VbusTargetMinInmv the vbus Target min (in mV)
 * @param  VbusTargetMaxInmv the vbus Target max (in mV)
 * @param  OperatingCurrent the Operating Current (in mA)
 * @param  MaxOperatingCurrent the Max Operating Current (in mA)
 * @retval PD controller status
 */
__weak PWR_StatusTypeDef BSP_PWR_VBUSSetVoltage_Variable(uint32_t PortId,
                                                  uint32_t VbusTargetMinInmv,
                                                  uint32_t VbusTargetMaxInmv,
                                                  uint32_t OperatingCurrent,
                                                  uint32_t MaxOperatingCurrent)
{
/* USER CODE BEGIN BSP_PWR_VBUSSetVoltage_Variable */
  return PWR_ERROR;
/* USER CODE BEGIN BSP_PWR_VBUSSetVoltage_Variable */
}

/**
 * @brief  Set a Battery PDO and manage the power control.
 * @param  PortId Type-C port identifier
 *         This parameter can be take one of the following values:
 *         @arg TYPE_C_PORT_1
 * @param  VbusTargetMin the vbus Target min (in mV)
 * @param  VbusTargetMax the vbus Target max (in mV)
 * @param  OperatingPower the Operating Power (in mW)
 * @param  MaxOperatingPower the Max Operating Power (in mW)
 * @retval PD controller status
 */
__weak PWR_StatusTypeDef BSP_PWR_VBUSSetVoltage_Battery(uint32_t PortId,
                                                 uint32_t VbusTargetMin,
                                                 uint32_t VbusTargetMax,
                                                 uint32_t OperatingPower,
                                                 uint32_t MaxOperatingPower)
{
/* USER CODE BEGIN BSP_PWR_VBUSSetVoltage_Battery */
  return PWR_ERROR;
/* USER CODE BEGIN BSP_PWR_VBUSSetVoltage_Battery */
}

/**
* @brief  Set a APDO and manage the power control.
* @param  PortId Type-C port identifier
*         This parameter can be take one of the following values:
*         @arg TYPE_C_PORT_1
* @param  VbusTargetInmv the vbus Target (in mV)
* @param  OperatingCurrent the Operating current (in mA)
* @param  Delta Delta between with previous APDO (in mV), 0 means APDO start
* @retval PD controller status
*/
__weak PWR_StatusTypeDef BSP_PWR_VBUSSetVoltage_APDO(uint32_t PortId,
                                              uint32_t VbusTargetInmv,
                                              uint32_t OperatingCurrent,
                                              int32_t Delta)
{
/* USER CODE BEGIN BSP_PWR_VBUSSetVoltage_APDO */
  return PWR_ERROR;
/* USER CODE BEGIN BSP_PWR_VBUSSetVoltage_APDO */
}

/**
 * @brief  Get actual voltage level measured on the VBUS line.
 * @param  PortId Type-C port identifier
 *         This parameter can be take one of the following values:
 *         @arg TYPE_C_PORT_1
 *         @arg TYPE_C_PORT_2
 * @retval Voltage measured voltage level (in mV)
 */
__weak uint32_t  BSP_PWR_VBUSGetVoltage(uint32_t PortId)
{
/* USER CODE BEGIN BSP_PWR_VBUSGetVoltage */
  PWR_DEBUG_TRACE(PortId, "ADVICE: Update BSP_PWR_VBUSGetVoltage");
  return 0;
/* USER CODE END BSP_PWR_VBUSGetVoltage */
}

/**
 * @brief  Get actual current level measured on the VBUS line.
 * @param  PortId Type-C port identifier
 *         This parameter can be take one of the following values:
 *         @arg TYPE_C_PORT_1
 *         @arg TYPE_C_PORT_2
 * @retval Current measured current level (in mA)
 */
__weak int32_t BSP_PWR_VBUSGetCurrent(uint32_t PortId)
{
/* USER CODE BEGIN BSP_PWR_VBUSGetCurrent */
  return 0;
/* USER CODE END BSP_PWR_VBUSGetCurrent */
}

/**
 * @brief  Initialize VCONN sourcing.
 * @param  PortId Type-C port identifier
 *         This parameter can be take one of the following values:
 *         @arg TYPE_C_PORT_1
 *         @arg TYPE_C_PORT_2
 * @param  CCPinId Type-C CC pin identifier
 *         This parameter can be take one of the following values:
 *         @arg TYPE_C_CC1
 *         @arg TYPE_C_CC2
 * @retval PD controller status
 */
__weak PWR_StatusTypeDef BSP_PWR_VCONNInit(uint32_t PortId,
                                    uint32_t CCPinId)
{
/* USER CODE BEGIN BSP_PWR_VCONNInit */
  return PWR_ERROR;
/* USER CODE END BSP_PWR_VCONNInit */
}

/**
 * @brief  Un-Initialize VCONN sourcing.
 * @param  PortId Type-C port identifier
 *         This parameter can be take one of the following values:
 *         @arg TYPE_C_PORT_1
 *         @arg TYPE_C_PORT_2
 * @param  CCPinId Type-C CC pin identifier
 *         This parameter can be take one of the following values:
 *         @arg TYPE_C_CC1
 *         @arg TYPE_C_CC2
 * @retval PD controller status
 */
__weak PWR_StatusTypeDef BSP_PWR_VCONNDeInit(uint32_t PortId,
                                      uint32_t CCPinId)
{
/* USER CODE BEGIN BSP_PWR_VCONNDeInit */
  return PWR_ERROR;
/* USER CODE END BSP_PWR_VCONNDeInit */
}

/**
 * @brief  Enable VCONN sourcing.
 * @param  PortId Type-C port identifier
 *         This parameter can be take one of the following values:
 *         @arg TYPE_C_PORT_1
 *         @arg TYPE_C_PORT_2
 * @param  CCPinId Type-C CC pin identifier
 *         This parameter can be take one of the following values:
 *         @arg TYPE_C_CC1
 *         @arg TYPE_C_CC2
 * @retval PD controller status
 */
__weak PWR_StatusTypeDef BSP_PWR_VCONNOn(uint32_t PortId,
                                  uint32_t CCPinId)
{
/* USER CODE BEGIN BSP_PWR_VCONNOn */
  return PWR_ERROR;
/* USER CODE END BSP_PWR_VCONNOn */
}

/**
 * @brief  Disable VCONN sourcing.
 * @param  PortId Type-C port identifier
 *         This parameter can be take one of the following values:
 *         @arg TYPE_C_PORT_1
 *         @arg TYPE_C_PORT_2
 * @param  CCPinId CC pin identifier
 *         This parameter can be take one of the following values:
 *         @arg TYPE_C_CC1
 *         @arg TYPE_C_CC2
 * @retval PD controller status
 */
__weak PWR_StatusTypeDef BSP_PWR_VCONNOff(uint32_t PortId,
                                   uint32_t CCPinId)
{
/* USER CODE BEGIN BSP_PWR_VCONNOff */
  return PWR_ERROR;
/* USER CODE END BSP_PWR_VCONNOff */
}

/**
 * @brief  Set the VBUS disconnection voltage threshold.
 * @note   Callback funtion registered through BSP_PWR_RegisterVBUSDetectCallback
 *         function call is invoked when VBUS falls below programmed threshold.
 * @note   By default VBUS disconnection threshold is set to 3.3V
 * @param  PortId Type-C port identifier
 *         This parameter can be take one of the following values:
 *         @arg TYPE_C_PORT_1
 *         @arg TYPE_C_PORT_2
 * @param  VoltageThreshold: VBUS disconnection voltage threshold (in mV)
 * @retval PD controller status
 */
void BSP_PWR_SetVBUSDisconnectionThreshold(uint32_t PortId,
                                           uint32_t VoltageThreshold)
{
/* USER CODE BEGIN BSP_PWR_SetVBUSDisconnectionThreshold */

/* USER CODE END BSP_PWR_SetVBUSDisconnectionThreshold */
}

/**
 * @brief  Register USB Type-C Current callback function.
 * @note   Callback function invoked when VBUS rises above 4V (VBUS present) or
 *         when VBUS falls below programmed threshold (VBUS absent).
 * @note   Callback funtion is un-registered when callback function pointer
 *         argument is NULL.
 * @param  PortId Type-C port identifier
 *         This parameter can be take one of the following values:
 *         @arg TYPE_C_PORT_1
 *         @arg TYPE_C_PORT_2
 * @param  pfnVBUSDetectCallback callback function pointer
* @retval 0 success else fail
 */
__weak PWR_StatusTypeDef BSP_PWR_RegisterVBUSDetectCallback(uint32_t                       PortId,
                                                     PWR_VBUSDetectCallbackFunc *   pfnVBUSDetectCallback)
{
/* USER CODE BEGIN BSP_PWR_RegisterVBUSDetectCallback */
  return PWR_ERROR;
/* USER CODE END BSP_PWR_RegisterVBUSDetectCallback */
}

/**
 * @brief  Get actual VBUS status.
 * @param  PortId Type-C port identifier
 *         This parameter can be take one of the following values:
 *         @arg TYPE_C_PORT_1
 * @retval VBUS status (1: On, 0: Off)
 */
uint8_t BSP_PWR_VBUSIsOn(uint32_t PortId)
{
/* USER CODE BEGIN BSP_PWR_VBUSIsOn */
  PWR_DEBUG_TRACE(PortId, "ADVICE: Update BSP_PWR_VBUSIsOn");
  return 0;
/* USER CODE END BSP_PWR_VBUSIsOn */
}

/**
 * @brief  Get actual VCONN status.
 * @param  PortId Type-C port identifier
 *         This parameter can be take one of the following values:
 *         @arg TYPE_C_PORT_1
 * @param  CCPinId Type-C CC pin identifier
 *         This parameter can be take one of the following values:
 *         @arg TYPE_C_CC1
 *         @arg TYPE_C_CC2
 * @retval VCONN status (1: On, 0: Off)
 */
uint8_t BSP_PWR_VCONNIsOn(uint32_t PortId,
                          uint32_t CCPinId)
{
/* USER CODE BEGIN BSP_PWR_VCONNIsOn */
  return 0;
/* USER CODE END BSP_PWR_VCONNIsOn */
}

/**
  * @}
  */

/** @addtogroup POWER_Private_Functions
  * @{
  */

/* USER CODE BEGIN POWER_Private_Functions */

/* USER CODE END POWER_Private_Functions */

/**
  * @}
  */


/**
  * @}
  */


/**
  * @}
  */

/**
  * @}
  */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/

